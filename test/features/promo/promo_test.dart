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

/// Member vouchers from the mock file, through the mock server rules
/// (`is_used` split + paging). Records `<is_used>:<page>`.
class _FakeMemberVoucherRemote implements MemberVoucherRemote {
  final calls = <String>[];
  bool fail = false;
  bool empty = false;

  /// Answer with this body instead of the mock file (staging payloads).
  DataMap? body;

  @override
  ResultFuture<MemberVoucherPage> getVouchers({
    required VoucherStatus status,
    int page = 1,
    String storeDomain = '',
  }) async {
    calls.add('${status.isUsed}:$page');
    if (fail) return Left(Failures(error: Error(message: 'boom')));
    if (empty) return const Right(MemberVoucherPage(totalPage: 1));
    if (body case final body?) {
      return Right(
        MemberVoucherRemoteImpl.toPage(MemberVouchersModel.fromJson(body)),
      );
    }

    final json = await MockServerSimulation.respond(
      Endpoints.profileDiscountVouchers,
      {'is_used': '${status.isUsed}', 'page': page, 'per_page': 15},
      _mock(Endpoints.profileDiscountVouchers),
      load: (_) async => null,
    );
    return Right(
      MemberVoucherRemoteImpl.toPage(
        MemberVouchersModel.fromJson(json as DataMap),
      ),
    );
  }
}

late _FakeMemberVoucherRemote _vouchers;

/// Signed-in session for the Promo page.
class _SignedInUserBloc extends UserBloc {
  _SignedInUserBloc() {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(const UserState(statusLogin: Status.success));
  }
}

class _Profile implements ProfileRepo {
  @override
  ResultFuture<ProfileModel> getProfile() async =>
      const Right(ProfileModel(name: 'Member', balancePoints: 248));

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

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
    // Wrap view with useLargestHeight (VoucherList) measures its items.
    getIt.registerLazySingleton(() => GeneralHelper());
    _vouchers = _FakeMemberVoucherRemote();
    getIt.registerLazySingleton(
      () => GetMemberVouchersUc(MemberVoucherRepoImpl(remote: _vouchers)),
    );
  });
  tearDown(() => getIt.reset());

  /// Item of `/promotion/discount-vouchers/list` as staging sends it.
  const stagingVoucher = {
    'id': 630650,
    'code': 'MBVIP100',
    'title': 'Voucher Spesial Member Rp100.000',
    'discount_label': 'Discount Rp 100.000',
    'expiry_date': '2026-12-31',
    'tnc': [
      '1. Discount Rp 100.000',
      '2. Minimum purchase of Rp 1.000.000',
      '3. Valid until 31 December 2026',
    ],
    'is_used': false,
    'used_date': null,
  };

  test('staging voucher: code, terms without server numbering', () {
    final v = PromoVoucher.fromJson(stagingVoucher).toVoucher();

    expect(v.code, 'MBVIP100');
    expect(v.terms, [
      'Discount Rp 100.000',
      'Minimum purchase of Rp 1.000.000',
      'Valid until 31 December 2026',
    ]);
    expect(v.validUntil, DateTime(2026, 12, 31));
    expect(v.isUsed, isFalse);

    final noExpiry = PromoVoucher.fromJson({
      ...stagingVoucher,
      'expiry_date': null,
      'tnc': ['1. Discount 10%', null, ' '],
    }).toVoucher();
    expect(noExpiry.validUntil, isNull);
    expect(noExpiry.terms, ['Discount 10%']);

    final used = PromoVoucher.fromJson({
      ...stagingVoucher,
      'is_used': true,
      'used_date': '2026-11-05',
    }).toVoucher();
    expect(used.usedAt, DateTime(2026, 11, 5));
  });

  test('guest: rewards + vouchers of the branch', () async {
    final cubit = PromoCubit();
    addTearDown(cubit.close);

    await cubit.load(storeDomain: 'myboss-semarang', isLoggedIn: false);

    expect(cubit.state.status, Status.success);
    expect(cubit.state.content.rewards, hasLength(8));
    expect(cubit.state.content.vouchers, hasLength(6));
    expect(cubit.state.content.vouchers[3].validUntil, isNull);
    expect(_remote.calls, [
      '${Endpoints.promoPointList}@myboss-semarang',
      '${Endpoints.promoVoucherList}@myboss-semarang',
    ]);
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

  test('logout reloads the content for the guest session', () async {
    final cubit = PromoCubit();
    addTearDown(cubit.close);

    await cubit.load(isLoggedIn: true);
    expect(cubit.state.content.rewards, isNotEmpty);

    await cubit.load(isLoggedIn: false);
    expect(cubit.state.params.isLoggedIn, isFalse);
    expect(cubit.state.content.rewards, hasLength(8));
    expect(cubit.state.content.vouchers, hasLength(6));
    expect(_remote.calls, hasLength(4)); // reloaded, not reused
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

  Future<PromoCubit> pump(
    WidgetTester tester,
    Size size, {
    Widget page = const PromoPage(),
    bool signedIn = false,
  }) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final promo = PromoCubit();
    final points = PointsCubit();
    final user = signedIn ? _SignedInUserBloc() : UserBloc();
    final branch = StoreBranchCubit();
    final memberVouchers = MemberVoucherCubit();
    final profile = ProfileBloc();
    getIt.registerLazySingleton(() => GetProfileUc(_Profile()));
    addTearDown(() async {
      await profile.close();
      await memberVouchers.close();
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
              BlocProvider.value(value: memberVouchers),
              BlocProvider.value(value: profile),
            ],
            // ResponsivePage reads GoRouterState (back-to-top button).
            child: MaterialApp.router(
              locale: context.locale,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              theme: MyBossTheme.dark,
              routerConfig: GoRouter(
                routes: [GoRoute(path: '/', builder: (_, _) => page)],
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
    return promo;
  }

  group('language change: server texts fetched again', () {
    test('Promo: reloaded only once it was loaded', () async {
      final cubit = PromoCubit();
      addTearDown(cubit.close);

      await cubit.reloadLoaded();
      expect(_remote.calls, isEmpty);

      await cubit.load(storeDomain: 'myboss-semarang', isLoggedIn: true);
      await cubit.reloadLoaded();
      expect(_remote.calls, [
        '${Endpoints.promoPointList}@myboss-semarang',
        '${Endpoints.promoVoucherList}@myboss-semarang',
        '${Endpoints.promoPointList}@myboss-semarang',
        '${Endpoints.promoVoucherList}@myboss-semarang',
      ]);
      expect(cubit.state.status, Status.success);
    });

    test('member vouchers: only the tabs already opened', () async {
      final cubit = MemberVoucherCubit();
      addTearDown(cubit.close);

      await cubit.reloadLoaded();
      expect(_vouchers.calls, isEmpty);

      await cubit.load(VoucherStatus.active);
      await cubit.reloadLoaded();
      // Active again (first page); Used was never opened.
      expect(_vouchers.calls, ['false:1', 'false:1']);
      expect(cubit.state.of(VoucherStatus.active).items, isNotEmpty);
    });
  });

  for (final e in _screens.entries) {
    testWidgets('guest Promo tabs on ${e.key}', (tester) async {
      final promo = await pump(tester, e.value);

      // All (guest): sign-up card, Points panel (pitch + rewards, no
      // balance) and the Voucher panel - both with See more.
      expect(find.text('I already have an account'), findsOneWidget);
      expect(find.byType(PromoPointsPanel), findsOneWidget);
      expect(
        find.descendant(
          of: find.byType(PromoPointsPanel),
          matching: find.byType(RewardCard),
        ),
        findsNWidgets(PromoPointsPanel.preview),
      );
      expect(find.textContaining('points available'), findsNothing);
      expect(find.text('See more'), findsNWidgets(2));
      // Rewards are loaded for guests too (Home, Promo > Points).
      expect(_remote.calls, [
        '${Endpoints.promoPointList}@',
        '${Endpoints.promoVoucherList}@',
      ]);
      expect(tester.takeException(), isNull);

      // Points (guest): sign-up pitch above the reward list of the branch.
      promo.selectTab(PromoTab.points);
      await tester.pumpAndSettle();
      expect(
        find.text(
          'Sign up to earn points with every purchase and redeem them for '
          'free items.',
        ),
        findsOneWidget,
      );
      expect(find.byType(RewardCard), findsWidgets);
      expect(find.text('Toughlink C to C'), findsWidgets);
      expect(tester.takeException(), isNull);

      promo.selectTab(PromoTab.voucher);
      await tester.pumpAndSettle();
      expect(find.text('Discount 15%'), findsWidgets);
      expect(find.text('Valid until 10 Nov 2026'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  }

  for (final e in _screens.entries) {
    testWidgets('Account Vouchers page: member vouchers, Load more, Used tab '
        'on ${e.key}', (tester) async {
      await pump(tester, e.value, page: const VoucherPage());

      // Active tab: first page of is_used=false, branch list not used.
      expect(_vouchers.calls, ['false:1']);
      expect(_remote.calls, isEmpty);
      expect(find.byType(VoucherTicket), findsNWidgets(15));
      expect(find.text('MYB1212'), findsOneWidget);

      final more = find.byKey(const ValueKey('voucher_load_more'));
      await tester.ensureVisible(more);
      await tester.tap(more);
      await tester.pumpAndSettle();
      expect(_vouchers.calls.last, 'false:2');
      expect(find.byType(VoucherTicket), findsNWidgets(17));
      expect(more, findsNothing);

      // Used tab: is_used=true, used date instead of the code.
      await tester.tap(find.text('Used'));
      await tester.pumpAndSettle();
      expect(_vouchers.calls.last, 'true:1');
      expect(find.byType(VoucherTicket), findsNWidgets(6));
      expect(find.text('Used 1 Nov 2026'), findsOneWidget);
      expect(find.text('MYBU100'), findsNothing);
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('voucher details sheet: code and numbered terms', (tester) async {
    final voucher = PromoVoucher.fromJson(stagingVoucher).toVoucher();
    await pump(
      tester,
      _screens['phone']!,
      page: Builder(
        builder: (context) => Scaffold(
          body: Center(
            child: TextButton(
              onPressed: () => VoucherDetailSheet.show(context, voucher),
              child: const Text('open'),
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();

    expect(find.text('MBVIP100'), findsOneWidget);
    expect(find.text('Terms & conditions'), findsOneWidget);
    expect(find.text('1.'), findsOneWidget);
    expect(find.text('Minimum purchase of Rp 1.000.000'), findsOneWidget);
    expect(find.text('3.'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Account Vouchers page: staging /profile/discount-vouchers', (
    tester,
  ) async {
    _vouchers.body = {
      'data': [
        for (final (id, code, title, label, expiry) in [
          (
            630650,
            'MBVIP100',
            'Voucher Spesial Member Rp100.000',
            'Discount Rp 100.000',
            '2026-12-31',
          ),
          (630632, 'UGPUJKPTA67O', 'Diskon Soft Opening', 'Discount 10%', null),
          (
            630626,
            'ORAIMO15',
            'Diskon 15% Produk Oraimo',
            'Discount 15%',
            '2026-12-31',
          ),
          (
            630625,
            'HEMAT25K',
            'Potongan Rp25.000',
            'Discount Rp 25.000',
            '2026-11-26',
          ),
          (630624, 'MYBOSS10', 'Diskon 10% Semua Produk', 'Discount 10%', null),
        ])
          {
            'id': id,
            'code': code,
            'title': title,
            'discount_label': label,
            'expiry_date': expiry,
            'tnc': ['1. $label'],
            'is_used': false,
            'used_date': null,
          },
      ],
      'meta': {
        'total': 5,
        'page': 1,
        'offset': 0,
        'per_page': 15,
        'total_page': 1,
      },
      'status': 200,
      'error': 0,
    };
    await pump(tester, _screens['phone']!, page: const VoucherPage());

    expect(_vouchers.calls, ['false:1']);
    expect(find.byType(VoucherTicket), findsNWidgets(5));
    expect(find.text('MBVIP100'), findsOneWidget);
    expect(find.byKey(const ValueKey('voucher_load_more')), findsNothing);
    expect(tester.takeException(), isNull);
  });

  for (final e in _screens.entries) {
    testWidgets('Promo Voucher tab layout on ${e.key}', (tester) async {
      final promo = await pump(tester, e.value);
      promo.selectTab(PromoTab.voucher);
      await tester.pumpAndSettle();

      // Content starts right under the tabs, however little data there is
      // (tablet / desktop used to center short content vertically).
      final barBottom = tester.getRect(find.byType(MyBossIconTabBar)).bottom;
      final headingTop = tester.getRect(find.byType(PromoHeading)).top;
      expect(headingTop - barBottom, lessThan(40));

      final tickets = [
        for (final el in find.byType(VoucherTicket).evaluate())
          tester.getRect(find.byElementPredicate((x) => x == el)),
      ];
      expect(tickets, isNotEmpty);

      if (e.key == 'phone') {
        // One column.
        expect(tickets.map((r) => r.left).toSet(), hasLength(1));
      } else {
        // Two columns filling the content width, same width; tickets of a
        // row share the height of the tallest one.
        expect(tickets.map((r) => r.left).toSet(), hasLength(2));
        expect(tickets[0].top, tickets[1].top);
        expect(tickets[0].height, tickets[1].height);
        expect(tickets[0].width, tickets[1].width);
        expect(tickets[1].left - tickets[0].right, closeTo(16, 1));
      }
      // No ticket content overflows its cell.
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('Account Vouchers page: empty card with Refresh', (tester) async {
    _vouchers.empty = true;
    await pump(tester, _screens['phone']!, page: const VoucherPage());

    expect(find.text("You don't have any vouchers yet."), findsOneWidget);
    expect(find.text('Refresh'), findsOneWidget);
    expect(find.byType(VoucherList), findsNothing);
  });

  testWidgets('Account Vouchers page: load error, then retry', (tester) async {
    _vouchers.fail = true;
    await pump(tester, _screens['phone']!, page: const VoucherPage());

    expect(find.byType(PromoLoadError), findsOneWidget);
    expect(find.byType(VoucherList), findsNothing);

    _vouchers.fail = false;
    await tester.tap(
      find
          .descendant(
            of: find.byType(PromoLoadError),
            matching: find.byType(GestureDetector),
          )
          .first,
    );
    await tester.pumpAndSettle();

    expect(find.byType(VoucherList), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
