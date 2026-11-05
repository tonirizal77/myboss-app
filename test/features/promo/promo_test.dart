import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';
import 'package:shared_preferences/shared_preferences.dart';

DataMap _mock(String endpoint) =>
    jsonDecode(
          File(
            MockServerInterceptor.assetKey('GET', endpoint),
          ).readAsStringSync(),
        )
        as DataMap;

/// Answers from the mock JSON files and records every call as
/// `<endpoint>@<storeDomain>`. [failPoints] / [failVouchers] make that
/// request answer a [Left].
class _FakePromoRemote implements PromoRemote {
  final calls = <String>[];
  bool failPoints = false;
  bool failVouchers = false;

  static final _failure = Failures(error: Error(message: 'boom'));

  @override
  ResultFuture<PromoPointsModel> getRewards(String storeDomain) async {
    calls.add('${Endpoints.promoPointList}@$storeDomain');
    if (failPoints) return Left(_failure);
    return Right(PromoPointsModel.fromJson(_mock(Endpoints.promoPointList)));
  }

  @override
  ResultFuture<PromoVouchersModel> getVouchers(String storeDomain) async {
    calls.add('${Endpoints.promoVoucherList}@$storeDomain');
    if (failVouchers) return Left(_failure);
    return Right(
      PromoVouchersModel.fromJson(_mock(Endpoints.promoVoucherList)),
    );
  }
}

late _FakePromoRemote _remote;

class _FileAssets extends AssetLoader {
  const _FileAssets();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async =>
      jsonDecode(
            File(
              'assets/translations/${locale.languageCode}.json',
            ).readAsStringSync(),
          )
          as Map<String, dynamic>;
}

const _screens = {
  'phone': Size(400, 900),
  'tablet': Size(820, 1100),
  'desktop': Size(1400, 900),
};

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        Directory.systemTemp.createTempSync('promo').path,
      ),
    );
  });

  setUp(() {
    _remote = _FakePromoRemote();
    getIt.registerSingleton<PromoRemote>(_remote);
    getIt.registerLazySingleton<PromoRepo>(
      () => PromoRepoImpl(remoteData: getIt()),
    );
    getIt.registerLazySingleton(() => GetPromoUc(getIt()));
    getIt.registerLazySingleton<PointsRepo>(
      () => const PointsRepoImpl(source: PointsStatic()),
    );
    getIt.registerLazySingleton(() => GetPointsSummaryUc(getIt()));
    getIt.registerLazySingleton(() => GetPointHistoryUc(getIt()));
    getIt.registerLazySingleton<GuestHomeSource>(() => const GuestHomeStatic());
  });
  tearDown(() => getIt.reset());

  test('guest: vouchers only, loyalty points never requested', () async {
    final cubit = PromoCubit();
    addTearDown(cubit.close);

    await cubit.load(storeDomain: 'myboss-semarang', isLoggedIn: false);

    expect(cubit.state.status, Status.success);
    expect(cubit.state.content.rewards, isEmpty);
    expect(cubit.state.content.vouchers, hasLength(6));
    expect(cubit.state.content.vouchers[3].validUntil, isNull);
    expect(_remote.calls, ['${Endpoints.promoVoucherList}@myboss-semarang']);
  });

  test('signed in: rewards + vouchers, cached per branch', () async {
    final cubit = PromoCubit();
    addTearDown(cubit.close);

    await cubit.load(storeDomain: 'myboss-semarang', isLoggedIn: true);

    expect(cubit.state.status, Status.success);
    expect(cubit.state.content.rewards, hasLength(8));
    expect(cubit.state.content.vouchers, hasLength(6));
    expect(cubit.state.content.failed, isEmpty);

    // Same params: no new request; another branch: reloaded.
    await cubit.load(storeDomain: 'myboss-semarang');
    await cubit.load(storeDomain: 'myboss-magelang');
    expect(_remote.calls, [
      '${Endpoints.promoPointList}@myboss-semarang',
      '${Endpoints.promoVoucherList}@myboss-semarang',
      '${Endpoints.promoPointList}@myboss-magelang',
      '${Endpoints.promoVoucherList}@myboss-magelang',
    ]);

    cubit.selectTab(PromoTab.voucher);
    expect(cubit.state.tab, PromoTab.voucher);
  });

  test('logout drops the rewards of the signed-in session', () async {
    final cubit = PromoCubit();
    addTearDown(cubit.close);

    await cubit.load(isLoggedIn: true);
    expect(cubit.state.content.rewards, isNotEmpty);

    await cubit.load(isLoggedIn: false);
    expect(cubit.state.content.rewards, isEmpty);
    expect(cubit.state.content.vouchers, hasLength(6));
  });

  test('one section failed: the other is kept, flagged for retry', () async {
    final cubit = PromoCubit();
    addTearDown(cubit.close);
    _remote.failPoints = true;

    await cubit.load(isLoggedIn: true);

    expect(cubit.state.status, Status.success);
    expect(cubit.state.content.vouchers, hasLength(6));
    expect(cubit.state.content.failed, {PromoSection.points});

    _remote.failPoints = false;
    await cubit.retry();
    expect(cubit.state.content.rewards, hasLength(8));
    expect(cubit.state.content.failed, isEmpty);
  });

  test('every section failed: page error', () async {
    final cubit = PromoCubit();
    addTearDown(cubit.close);
    _remote
      ..failPoints = true
      ..failVouchers = true;

    await cubit.load(isLoggedIn: true);

    expect(cubit.state.status, Status.failed);
    expect(cubit.state.errorMessage, 'boom');
  });

  Future<PromoCubit> pump(WidgetTester tester, Size size) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final promo = PromoCubit();
    final points = PointsCubit();
    final user = UserBloc();
    final branch = StoreBranchCubit();
    addTearDown(() async {
      await promo.close();
      await points.close();
      await user.close();
      await branch.close();
    });
    getIt.registerSingleton<UserBloc>(user);

    await tester.pumpWidget(
      EasyLocalization(
        supportedLocales: const [Locale('en')],
        path: 'unused',
        assetLoader: const _FileAssets(),
        child: Builder(
          builder: (context) => MultiBlocProvider(
            providers: [
              BlocProvider.value(value: promo),
              BlocProvider.value(value: points),
              BlocProvider.value(value: user),
              BlocProvider.value(value: branch),
            ],
            // ResponsivePage reads GoRouterState (back-to-top button).
            child: MaterialApp.router(
              locale: context.locale,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              theme: MyBossTheme.dark,
              routerConfig: GoRouter(
                routes: [
                  GoRoute(path: '/', builder: (_, _) => const PromoPage()),
                ],
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return promo;
  }

  for (final e in _screens.entries) {
    testWidgets('guest Promo tabs on ${e.key}', (tester) async {
      final promo = await pump(tester, e.value);

      // All (guest): sign-up card and the Voucher panel - no Points panel.
      expect(find.text('I already have an account'), findsOneWidget);
      expect(find.text('See more'), findsOneWidget);
      expect(_remote.calls, ['${Endpoints.promoVoucherList}@']);
      expect(tester.takeException(), isNull);

      // Points (guest): sign-up pitch only, no reward list.
      promo.selectTab(PromoTab.points);
      await tester.pumpAndSettle();
      expect(
        find.text(
          'Sign up to earn points with every purchase and redeem them for '
          'free items.',
        ),
        findsOneWidget,
      );
      expect(find.text('Toughlink C to C'), findsNothing);

      promo.selectTab(PromoTab.voucher);
      await tester.pumpAndSettle();
      expect(find.text('Discount 15%'), findsWidgets);
      expect(find.text('Valid until 10 Nov 2026'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }
}
