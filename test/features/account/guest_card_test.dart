import 'dart:convert';
import 'dart:io';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
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

/// Set to a directory to also write a PNG (visual check).
final _shots = Platform.environment['SHOTS_DIR'];

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
    final loader = FontLoader('Poppins');
    for (final w in ['Regular', 'Medium', 'SemiBold', 'Bold']) {
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

  testWidgets('guest card (Figma Guest Account)', (tester) async {
    tester.view.physicalSize = const Size(400, 700);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

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
            home: Scaffold(
              backgroundColor: MyBossColors.surfaceContainerLow,
              body: RepaintBoundary(
                key: const Key('shot'),
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: const Align(
                    alignment: Alignment.topCenter,
                    child: CardLoginRequired(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('Guest'), findsOneWidget);
    expect(find.text('Sign up'), findsOneWidget);
    expect(find.text('I already have an account'), findsOneWidget);
    expect(tester.takeException(), isNull);

    if (_shots != null) {
      await tester.runAsync(() async {
        final boundary =
            tester.renderObject(find.byKey(const Key('shot')))
                as RenderRepaintBoundary;
        final image = await boundary.toImage();
        final bytes = await image.toByteData(format: ui.ImageByteFormat.png);
        File(
          '$_shots/guest_card.png',
        ).writeAsBytesSync(bytes!.buffer.asUint8List());
      });
    }
  });
}
