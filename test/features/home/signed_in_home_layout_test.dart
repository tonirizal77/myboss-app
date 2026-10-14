import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
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
  });
  tearDown(() => getIt.reset());

  Future<void> pumpHome(WidgetTester tester, Size size, Widget home) async {
    tester.view.physicalSize = size;
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    final profile = ProfileBloc();
    getIt.registerSingleton<ProfileBloc>(profile);
    final points = PointsCubit();
    final guest = GuestHomeCubit();
    addTearDown(() async {
      await profile.close();
      await points.close();
      await guest.close();
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

      expect(find.text('6,969 points'), findsWidgets);
      expect(find.text('Our Popular Products'), findsOneWidget);
      expect(find.text('Redeem'), findsOneWidget);
      expect(find.text('Earn Points, Get Free Item!'), findsOneWidget);
      expect(tester.takeException(), isNull);
      await shot(tester, 'home_${e.key}');
    });
  }

  testWidgets('Membership card renders', (tester) async {
    await pumpHome(
      tester,
      const Size(400, 900),
      const SizedBox(width: 400, child: CardMemberBarcode()),
    );

    expect(find.text('6,969 points'), findsWidgets);
    expect(tester.takeException(), isNull);
    await shot(tester, 'membership_card');
  });
}
