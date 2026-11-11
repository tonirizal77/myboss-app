import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
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

/// `GET /profile/loyalty-points` as staging answers it (2026-11-11).
const _staging = {
  'all_point': [
    {
      'id': 296,
      'status': 'Deducted',
      'detail': 'Point Redeemed',
      'date': '2026-11-01 02:00:00',
      'displayed_point': 20,
      'sales_order_id': 1,
      'order_total': 158000,
      'forder_total': '158.000',
    },
    {
      'id': 8241,
      'status': 'Active',
      'detail': 'Point Earned',
      'date': '2026-11-01 01:36:43',
      'displayed_point': 10,
      'sales_order_id': 1,
      'order_total': 158000,
      'forder_total': '158.000',
    },
    {
      'id': 8247,
      'status': 'Active',
      'detail': 'Point Earned',
      'date': '2026-10-27 01:36:44',
      'displayed_point': 50,
      'sales_order_id': null,
      'order_total': null,
      'forder_total': null,
    },
    {
      'id': 8246,
      'status': 'Expired',
      'detail': 'Expired',
      'date': '2025-09-30 01:36:44',
      'displayed_point': 26,
      'sales_order_id': 2,
      'order_total': 399000,
      'forder_total': '399.000',
    },
  ],
};

/// [PointsRemote]'s mapping over the staging payload, without HTTP.
class _StagingPoints implements PointsSource {
  _StagingPoints({this.empty = false});

  /// No history at all (`all_point: []`).
  final bool empty;

  LoyaltyPointsModel get _m =>
      LoyaltyPointsModel.fromJson(empty ? const {'all_point': []} : _staging);

  @override
  ResultFuture<PointsSummary> getSummary() async =>
      Right(PointsRemote.toSummary(_m));

  @override
  ResultFuture<List<PointEntry>> getHistory() async =>
      Right(PointsRemote.toHistory(_m));

  @override
  ResultFuture<PointDetail> getDetail(int id) async =>
      Left(Failures(error: Error(message: 'unused')));
}

class _Profile implements ProfileRepo {
  @override
  ResultFuture<ProfileModel> getProfile() async => const Right(
    ProfileModel(
      name: 'Member',
      balancePoints: 248,
      // `expiring_points` of /profile/info as staging sends it.
      expiringPoints: ExpiringPointsModel(
        balancePoints: 65,
        expireDate: '2026-11-13',
        expireDateSubtext: 'Expires in 1 days',
      ),
    ),
  );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Future<PointsCubit> _pump(
  WidgetTester tester,
  Size size, {
  bool empty = false,
}) async {
  tester.view.physicalSize = size;
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);

  getIt.registerLazySingleton<PointsRepo>(
    () => PointsRepoImpl(source: _StagingPoints(empty: empty)),
  );
  getIt.registerLazySingleton(() => GetPointsSummaryUc(getIt()));
  getIt.registerLazySingleton(() => GetPointHistoryUc(getIt()));
  getIt.registerLazySingleton(() => GetProfileUc(_Profile()));
  addTearDown(getIt.reset);

  final cubit = PointsCubit();
  final profile = ProfileBloc();
  addTearDown(() async {
    await cubit.close();
    await profile.close();
  });

  await tester.pumpWidget(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'unused',
      assetLoader: const _FileAssets(),
      child: Builder(
        builder: (context) => MultiBlocProvider(
          providers: [
            BlocProvider.value(value: cubit),
            BlocProvider.value(value: profile),
          ],
          // ResponsivePage reads GoRouterState (back-to-top button).
          child: MaterialApp.router(
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            theme: MyBossTheme.dark,
            routerConfig: GoRouter(
              routes: [
                GoRoute(path: '/', builder: (_, _) => const PointsPage()),
              ],
            ),
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  return cubit;
}

/// Phone / tablet / desktop (window width classes used by `Responsive`).
const _screens = {
  'phone': Size(400, 800),
  'tablet': Size(800, 1100),
  'desktop': Size(1400, 900),
};

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        Directory.systemTemp.createTempSync('points').path,
      ),
    );
  });

  for (final entry in _screens.entries) {
    testWidgets('Points page shows the staging history on ${entry.key}', (
      tester,
    ) async {
      final cubit = await _pump(tester, entry.value);

      // Balance and expiring points from /profile/info.
      expect(find.text('248 points'), findsOneWidget);
      expect(find.textContaining('65 expires in'), findsOneWidget);
      expect(find.text('November 13, 2026'), findsOneWidget);

      // History from all_point: earned, redeemed and expired rows.
      expect(cubit.state.history, hasLength(4));
      expect(find.text('No points activity yet'), findsNothing);
      expect(find.text('Point Earned'), findsNWidgets(2));
      expect(find.text('Points Redeemed'), findsOneWidget);
      expect(find.text('Points Expired'), findsOneWidget);
      expect(find.text('-20 point'), findsOneWidget);
      expect(find.text('+50 point'), findsOneWidget);

      final header = tester.getRect(find.byType(MyBossHeader));
      final badge = tester.getRect(find.byType(PointsBadge));
      final screen = Offset.zero & entry.value;

      // Banner is not hidden under the header.
      expect(badge.top, greaterThanOrEqualTo(header.bottom));

      // Every history row is inside the screen (nothing spills sideways).
      for (final e in find.text('Point Earned').evaluate()) {
        final r = tester.getRect(find.byElementPredicate((x) => x == e));
        expect(
          screen.contains(r.topLeft) && screen.contains(r.bottomRight),
          isTrue,
          reason: 'row $r outside $screen',
        );
      }

      // Phone: one column; tablet / desktop: two columns.
      final lefts = {
        for (final label in [
          'Point Earned',
          'Points Redeemed',
          'Points Expired',
        ])
          for (final e in find.text(label).evaluate())
            tester.getRect(find.byElementPredicate((x) => x == e)).left,
      };
      expect(lefts, hasLength(entry.key == 'phone' ? 1 : 2));

      // No RenderFlex overflow anywhere.
      expect(tester.takeException(), isNull);
    });
  }

  testWidgets('Points page: empty history shows only the empty text', (
    tester,
  ) async {
    await _pump(tester, _screens['phone']!, empty: true);

    expect(find.text('No points activity yet'), findsOneWidget);
    expect(find.text('Point Earned'), findsNothing);
    expect(tester.takeException(), isNull);
  });
}
