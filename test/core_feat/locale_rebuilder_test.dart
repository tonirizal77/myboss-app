import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
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

/// A `const` page reading `.tr()` only: nothing subscribes it to the
/// locale, so without [LocaleRebuilder] it keeps the old language.
class _ConstLabel extends StatelessWidget {
  const _ConstLabel();

  @override
  Widget build(BuildContext context) => Text(LocaleKeys.akun_language.tr());
}

/// Switches the language from inside the tree, like the Account toggle.
class _Switcher extends StatelessWidget {
  const _Switcher();

  @override
  Widget build(BuildContext context) => TextButton(
    key: const Key('to_id'),
    onPressed: () => context.setLocale(const Locale('id')),
    child: const Text('switch'),
  );
}

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
  });

  Widget app({required bool rebuilder, VoidCallback? onChanged}) =>
      EasyLocalization(
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
            builder: rebuilder
                ? (context, child) =>
                      LocaleRebuilder(onChanged: onChanged, child: child!)
                : null,
            home: const Scaffold(
              body: Column(children: [_ConstLabel(), _Switcher()]),
            ),
          ),
        ),
      );

  Future<void> switchToId(WidgetTester tester) async {
    await tester.tap(find.byKey(const Key('to_id')));
    // Translations load asynchronously; then the post-frame rebuild.
    await tester.runAsync(() => Future<void>.delayed(Duration.zero));
    await tester.pumpAndSettle();
  }

  testWidgets('const pages follow the new language at once', (tester) async {
    await tester.pumpWidget(app(rebuilder: true));
    await tester.pumpAndSettle();
    expect(find.text('Language'), findsOneWidget);

    await switchToId(tester);

    expect(find.text('Bahasa'), findsOneWidget);
    expect(find.text('Language'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('onChanged runs once per change, not on start', (tester) async {
    var calls = 0;
    await tester.pumpWidget(app(rebuilder: true, onChanged: () => calls++));
    await tester.pumpAndSettle();
    expect(calls, 0);

    await switchToId(tester);
    expect(calls, 1);
  });

  testWidgets('without it a const page keeps the old language (the bug)', (
    tester,
  ) async {
    await tester.pumpWidget(app(rebuilder: false));
    await tester.pumpAndSettle();

    await switchToId(tester);

    expect(find.text('Language'), findsOneWidget);
  });
}
