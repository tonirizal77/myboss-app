import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    getIt.registerLazySingleton<PromoSource>(() => const PromoStatic());
    getIt.registerLazySingleton<PromoRepo>(
      () => PromoRepoImpl(source: getIt()),
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

  test('PromoCubit loads rewards and vouchers', () async {
    final cubit = PromoCubit();
    addTearDown(cubit.close);

    await cubit.load();

    expect(cubit.state.status, Status.success);
    expect(cubit.state.content.rewards, hasLength(8));
    expect(cubit.state.content.vouchers, hasLength(15));

    cubit.selectTab(PromoTab.voucher);
    expect(cubit.state.tab, PromoTab.voucher);
  });

  Future<PromoCubit> pump(WidgetTester tester, Size size) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final promo = PromoCubit();
    final points = PointsCubit();
    final user = UserBloc();
    final branch = BranchCubit();
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
          builder: (context) => MaterialApp(
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            theme: MyBossTheme.dark,
            home: MultiBlocProvider(
              providers: [
                BlocProvider.value(value: promo),
                BlocProvider.value(value: points),
                BlocProvider.value(value: user),
                BlocProvider.value(value: branch),
              ],
              child: const PromoPage(),
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

      // All (guest): sign-up card, Points and Voucher panels.
      expect(find.text('I already have an account'), findsOneWidget);
      expect(
        find.text(
          'Sign up to earn points with every purchase and redeem them for '
          'free items.',
        ),
        findsOneWidget,
      );
      expect(find.text('See more'), findsNWidgets(2));
      expect(tester.takeException(), isNull);

      promo.selectTab(PromoTab.points);
      await tester.pumpAndSettle();
      expect(find.text('MeteorMates 8'), findsOneWidget);

      promo.selectTab(PromoTab.voucher);
      await tester.pumpAndSettle();
      expect(find.text('Diskon 50%'), findsWidgets);
      expect(tester.takeException(), isNull);
    });
  }
}
