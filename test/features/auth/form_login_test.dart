import 'dart:convert';
import 'dart:io';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/theme/mybos_theme.dart';
import 'package:myboss_app/core_feat/widgets/mybos_widgets.dart';
import 'package:myboss_app/features/auth/presenter/widgets/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Reads translations synchronously so every test has them on the first frame.
class _FileLoader extends AssetLoader {
  const _FileLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) async =>
      jsonDecode(File('$path/${locale.languageCode}.json').readAsStringSync())
          as Map<String, dynamic>;
}

Widget _host() => EasyLocalization(
  assetLoader: const _FileLoader(),
  supportedLocales: const [Locale('en')],
  fallbackLocale: const Locale('en'),
  path: 'assets/translations',
  useOnlyLangCode: true,
  child: Builder(
    builder: (context) => MaterialApp(
      theme: MyBossTheme.dark,
      locale: context.locale,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      home: const Scaffold(body: SingleChildScrollView(child: FormLogin())),
    ),
  ),
);

MyBossButton _loginButton(WidgetTester tester) =>
    tester.widget<MyBossButton>(find.widgetWithText(MyBossButton, 'Login'));

Future<void> _pump(WidgetTester tester) async {
  await tester.pumpWidget(_host());
  await tester.pumpAndSettle();
}

void main() {
  setUpAll(() async {
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
  });

  testWidgets('starts in phone mode with the login button disabled', (
    tester,
  ) async {
    await _pump(tester);

    expect(find.text('Phone'), findsOneWidget);
    expect(find.byType(MyBossTextField), findsNothing);
    expect(_loginButton(tester).onPressed, isNull);
  });

  testWidgets('email mode validates the address and enables login', (
    tester,
  ) async {
    await _pump(tester);
    await tester.tap(find.text('Email'));
    await tester.pump();
    expect(find.byType(MyBossTextField), findsOneWidget);
    expect(_loginButton(tester).onPressed, isNull);

    await tester.enterText(find.byType(TextField), 'rangga@');
    await tester.pump();
    expect(find.text('Invalid email address'), findsOneWidget);
    expect(_loginButton(tester).onPressed, isNull);

    await tester.enterText(find.byType(TextField), 'rangga@gmail.com');
    await tester.pump();
    expect(find.text('Invalid email address'), findsNothing);
    expect(_loginButton(tester).onPressed, isNotNull);
  });

  testWidgets('switching modes clears the input', (tester) async {
    await _pump(tester);

    await tester.tap(find.text('Email'));
    await tester.pump();
    await tester.enterText(find.byType(TextField), 'rangga@gmail.com');
    await tester.pump();

    await tester.tap(find.text('Phone'));
    await tester.pump();
    await tester.tap(find.text('Email'));
    await tester.pump();

    expect(
      tester.widget<TextField>(find.byType(TextField)).controller?.text,
      isEmpty,
    );
    expect(_loginButton(tester).onPressed, isNull);
  });
}
