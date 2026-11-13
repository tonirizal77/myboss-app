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

void main() {
  late ThemeBloc bloc;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        Directory.systemTemp.createTempSync('account_settings').path,
      ),
    );
  });

  setUp(() async {
    await HydratedBloc.storage.clear();
    await MyBossTheme.ensureDefaultDark();
    bloc = ThemeBloc();
    getIt.registerSingleton<ThemeBloc>(bloc);
    final prefs = SharedPreferencesHelper();
    await prefs.init();
    getIt.registerSingleton<SharedPreferencesHelper>(prefs);
  });

  tearDown(() async {
    await bloc.close();
    await getIt.reset();
  });

  Widget host() => EasyLocalization(
    supportedLocales: const [Locale('en'), Locale('id')],
    startLocale: const Locale('en'),
    saveLocale: false,
    path: 'unused',
    assetLoader: const _FileAssets(),
    child: Builder(
      builder: (context) => MaterialApp(
        locale: context.locale,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        theme: MyBossTheme.dark,
        home: Scaffold(
          body: BlocProvider<ThemeBloc>.value(
            value: bloc,
            child: const Padding(
              padding: EdgeInsets.all(24),
              child: AccountSettingsCard(),
            ),
          ),
        ),
      ),
    ),
  );

  testWidgets('dark mode row toggles the theme', (tester) async {
    await tester.pumpWidget(host());
    await tester.pumpAndSettle();

    bool isOn() =>
        tester.widget<Switch>(find.byKey(const Key('theme_switch'))).value;

    /// The bloc handles the event asynchronously: let it emit, then rebuild.
    Future<void> settle() async {
      await tester.runAsync(() => Future<void>.delayed(Duration.zero));
      await tester.pumpAndSettle();
    }

    expect(bloc.state.themeMode, ThemeMode.dark);
    expect(isOn(), isTrue);

    await tester.tap(find.byKey(const Key('theme_switch')));
    await settle();
    expect(bloc.state.themeMode, ThemeMode.light);
    expect(isOn(), isFalse);

    // Tapping the label works too.
    await tester.tap(find.text('Dark mode'));
    await settle();
    expect(bloc.state.themeMode, ThemeMode.dark);
    expect(isOn(), isTrue);
    expect(tester.takeException(), isNull);
  });

  testWidgets('language row switches between EN and ID', (tester) async {
    await tester.pumpWidget(host());
    await tester.pumpAndSettle();

    expect(find.text('Language'), findsOneWidget);
    expect(find.byType(SwitchLocaleBar), findsOneWidget);
    expect(find.byKey(const Key('account_tnc')), findsOneWidget);
    expect(find.text('Terms & Policy'), findsOneWidget);

    await tester.tap(find.text('Language'));
    await tester.pumpAndSettle();
    expect(find.text('Bahasa'), findsOneWidget);
    expect(find.text('Mode gelap'), findsOneWidget);
    expect(find.text('Syarat & Kebijakan'), findsOneWidget);
    expect(getIt<SharedPreferencesHelper>().getLangApp(), 'id');

    await tester.tap(find.text('Bahasa'));
    await tester.pumpAndSettle();
    expect(find.text('Language'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
