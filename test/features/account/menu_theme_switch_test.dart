import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

void main() {
  late ThemeBloc bloc;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        Directory.systemTemp.createTempSync('theme_switch').path,
      ),
    );
  });

  setUp(() async {
    await HydratedBloc.storage.clear();
    await MyBossTheme.ensureDefaultDark();
    bloc = ThemeBloc();
    getIt.registerSingleton<ThemeBloc>(bloc);
  });

  tearDown(() async {
    await bloc.close();
    await getIt.reset();
  });

  Widget host() => MaterialApp(
    theme: MyBossTheme.dark,
    home: Scaffold(
      body: BlocProvider<ThemeBloc>.value(
        value: bloc,
        child: const MenuThemeSwitch(),
      ),
    ),
  );

  bool switchValue(WidgetTester tester) =>
      tester.widget<Switch>(find.byKey(const Key('theme_switch'))).value;

  testWidgets('starts in Dark (default) and toggles to Light and back', (
    tester,
  ) async {
    await tester.pumpWidget(host());

    expect(bloc.state.themeMode, ThemeMode.dark);
    expect(switchValue(tester), isTrue);

    await tester.tap(find.byKey(const Key('theme_switch')));
    await tester.pumpAndSettle();
    expect(bloc.state.themeMode, ThemeMode.light);

    // Tapping the row itself works too.
    await tester.tap(find.text('akun.dark_mode'));
    await tester.pumpAndSettle();
    expect(bloc.state.themeMode, ThemeMode.dark);
  });
}
