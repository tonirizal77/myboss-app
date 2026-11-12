import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dartz/dartz.dart';
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
  'phone': Size(400, 2300),
  'tablet': Size(820, 2300),
  'desktop': Size(1400, 2300),
};

/// Set to a directory to also write PNGs (visual check).
final _shots = Platform.environment['SHOTS_DIR'];

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    // The membership card turns screenshot protection on (native plugin).
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger
        .setMockMethodCallHandler(
          const MethodChannel('screen_protector'),
          (_) async => null,
        );
    await EasyLocalization.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        Directory.systemTemp.createTempSync('home_signed_in').path,
      ),
    );
    final loader = FontLoader('Poppins');
    for (final w in ['Light', 'Regular', 'Medium', 'SemiBold', 'Bold']) {
      loader.addFont(
        Future.value(
          ByteData.sublistView(
            File('assets/fonts/Poppins/Poppins-$w.ttf').readAsBytesSync(),
          ),
        ),
      );
    }
    await loader.load();
  });

  setUp(() {
    // Balance on Home = profile/info `balance_points` (mock: 1250).
    getIt.registerLazySingleton<ProfileRemote>(() => const _MockFileProfile());
    getIt.registerLazySingleton<ProfileRepo>(
      () => ProfileRepoImpl(remoteData: getIt()),
    );
    getIt.registerLazySingleton(() => GetProfileUc(getIt()));
    getIt.registerLazySingleton<PointsRepo>(
      () => const PointsRepoImpl(source: PointsStatic()),
    );
    getIt.registerLazySingleton(() => GetPointsSummaryUc(getIt()));
    getIt.registerLazySingleton(() => GetPointHistoryUc(getIt()));
    getIt.registerLazySingleton<GuestHomeSource>(() => const GuestHomeStatic());
    getIt.registerLazySingleton<GuestHomeRepo>(
      () => GuestHomeRepoImpl(source: getIt()),
    );
    getIt.registerLazySingleton(() => GetGuestHomeUc(getIt()));
    getIt.registerLazySingleton<PromoRemote>(() => const _MockFilePromo());
    getIt.registerLazySingleton<PromoRepo>(
      () => PromoRepoImpl(remoteData: getIt()),
    );
    getIt.registerLazySingleton(() => GetPromoUc(getIt()));
    getIt.registerLazySingleton<ProductRemote>(() => const _MockFileCatalog());
    getIt.registerLazySingleton<PopularProductsRepo>(
      () => PopularProductsRepoImpl(remote: getIt()),
    );
    getIt.registerLazySingleton(() => GetPopularProductsUc(getIt()));
    getIt.registerLazySingleton(() => GetCatalogStatsUc(getIt()));
  });
  tearDown(() => getIt.reset());

  Future<void> pumpHome(WidgetTester tester, Size size, Widget home) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final profile = ProfileBloc();
    getIt.registerSingleton<ProfileBloc>(profile);
    // Signed in: the profile is already loaded (login / Account tab).
    profile.add(const ProfileEvent.getProfile());
    final points = PointsCubit();
    final guest = GuestHomeCubit();
    final popular = PopularProductsCubit();
    final promo = PromoCubit();
    final branch = StoreBranchCubit();
    final user = _SignedInUserBloc();
    addTearDown(() async {
      await user.close();
      await profile.close();
      await points.close();
      await guest.close();
      await popular.close();
      await promo.close();
      await branch.close();
    });

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
                BlocProvider.value(value: profile),
                BlocProvider.value(value: points),
                BlocProvider.value(value: guest),
                BlocProvider.value(value: popular),
                BlocProvider.value(value: promo),
                BlocProvider.value(value: branch),
                BlocProvider<UserBloc>.value(value: user),
              ],
              child: Scaffold(
                backgroundColor: MyBossColors.surface,
                body: RepaintBoundary(
                  key: const Key('shot'),
                  child: SingleChildScrollView(child: home),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  Future<void> shot(WidgetTester tester, String name) async {
    if (_shots == null) return;
    await tester.runAsync(() async {
      final boundary =
          tester.renderObject(find.byKey(const Key('shot')))
              as RenderRepaintBoundary;
      final image = await boundary.toImage(pixelRatio: 1);
      final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
      File('$_shots/$name.png').writeAsBytesSync(bytes!.buffer.asUint8List());
    });
  }

  for (final e in _screens.entries) {
    testWidgets('Signed-in home on ${e.key}', (tester) async {
      await pumpHome(
        tester,
        e.value,
        Align(
          alignment: Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 720),
            child: const SignedInHomeView(),
          ),
        ),
      );

      expect(find.text('1,250 points'), findsWidgets);
      expect(find.text('Our Popular Products'), findsOneWidget);
      // Totals from the API (mock: 20 products, 6 categories), not the
      // former static 100+ / 25.
      expect(find.text('View all 20 products'), findsOneWidget);
      expect(
        find.text('Products from trusted brands across 6 categories'),
        findsOneWidget,
      );
      // Only `is_popular = 1` products of the mock catalog.
      Finder inCarousel(String name) => find.descendant(
        of: find.byType(GuestCatalog),
        matching: find.text(name),
      );
      expect(inCarousel('oraimo Watch Pro 2'), findsOneWidget);
      expect(inCarousel('Watch Nova 2'), findsNothing);
      expect(find.text('Redeem'), findsOneWidget);
      expect(find.text('Earn Points, Get Free Item!'), findsOneWidget);
      expect(tester.takeException(), isNull);
      await shot(tester, 'home_${e.key}');
    });
  }

  testWidgets('Guest home shows popular products from the server', (
    tester,
  ) async {
    await pumpHome(tester, const Size(400, 2300), const GuestHomeView());

    Finder inCarousel(String name) => find.descendant(
      of: find.byType(GuestCatalog),
      matching: find.text(name),
    );
    expect(inCarousel('oraimo Watch Pro 2'), findsOneWidget);
    expect(inCarousel('Watch Nova 2'), findsNothing);
    // Static catalog is no longer shown.
    expect(inCarousel('SpaceBuds 2'), findsNothing);
    expect(find.text('Our Popular Products'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Membership card renders', (tester) async {
    await pumpHome(
      tester,
      const Size(400, 900),
      const SizedBox(width: 400, child: CardMemberBarcode()),
    );

    expect(find.text('1,250 points'), findsWidgets);
    expect(tester.takeException(), isNull);
    await shot(tester, 'membership_card');
  });
}

/// Point rewards / vouchers from the mock JSON files.
/// Signed-in session: Promo loads rewards (loyalty points) too.
class _SignedInUserBloc extends UserBloc {
  _SignedInUserBloc() {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(const UserState(statusLogin: Status.success));
  }
}

class _MockFilePromo implements PromoRemote {
  const _MockFilePromo();

  static DataMap _read(String endpoint) =>
      jsonDecode(
            File(
              MockServerInterceptor.assetKey('GET', endpoint),
            ).readAsStringSync(),
          )
          as DataMap;

  @override
  ResultFuture<PromoPointsModel> getRewards(String storeDomain) async =>
      Right(PromoPointsModel.fromJson(_read(Endpoints.promoPointList)));

  @override
  ResultFuture<PromoVouchersModel> getVouchers(String storeDomain) async =>
      Right(PromoVouchersModel.fromJson(_read(Endpoints.promoVoucherList)));
}

/// `/catalog/lists` from the mock JSON file, `search[n]` filters applied the
/// way the mock server does.
class _MockFileCatalog implements ProductRemote {
  const _MockFileCatalog();

  @override
  ResultFuture<CatalogListModel> getProducts(CatalogQuery query) async {
    final json = _MockFilePromo._read(Endpoints.catalogList);
    final f = query.filters;
    final data = [
      for (final item in (json['data'] as List).cast<DataMap>())
        if ([
          for (var i = 0; f.containsKey('search[$i][search_column]'); i++)
            '${item[f['search[$i][search_column]']]}' ==
                f['search[$i][search_text]'],
        ].every((ok) => ok))
          item,
    ];
    return Right(CatalogListModel.fromJson({...json, 'data': data}));
  }

  /// Category tabs (mock: 6 categories).
  @override
  ResultFuture<CatalogGroupsModel> getGroups(CatalogQuery query) async =>
      Right(
        CatalogGroupsModel.fromJson(
          _MockFilePromo._read(Endpoints.catalogGroupList),
        ),
      );

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// `GET /profile/info` from the mock JSON file (`balance_points` 1250).
class _MockFileProfile implements ProfileRemote {
  const _MockFileProfile();

  @override
  ResultFuture<ProfileModel> getProfile() async {
    final json =
        jsonDecode(
              File(
                MockServerInterceptor.assetKey('GET', Endpoints.profileInfo),
              ).readAsStringSync(),
            )
            as DataMap;
    return Right(ProfileModel.fromJson(json['data'] as DataMap));
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}
