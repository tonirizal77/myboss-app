import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

/// The app opens sheets from pages inside the go_router shell (a nested
/// navigator) with main-page layers drawn above it. A sheet on that nested
/// navigator sat under those layers, so its close button got no taps.
void main() {
  testWidgets('sheet close button works above the shell layers', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(400, 800);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

    var layerTaps = 0;
    await tester.pumpWidget(
      MaterialApp(
        home: Stack(
          children: [
            // Shell navigator with the page that opens the sheet.
            Navigator(
              onGenerateRoute: (_) => MaterialPageRoute(
                builder: (context) => Scaffold(
                  body: Center(
                    child: TextButton(
                      onPressed: () => MyBossBottomSheet.show<void>(
                        context,
                        builder: (_) => const SizedBox(
                          height: 2000,
                          child: Text('sheet body'),
                        ),
                      ),
                      child: const Text('open'),
                    ),
                  ),
                ),
              ),
            ),
            // Transparent main-page layer over the top of the screen.
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              height: 160,
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => layerTaps++,
              ),
            ),
          ],
        ),
      ),
    );

    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
    expect(find.text('sheet body'), findsOneWidget);

    // Tall content: the close button sits under the layer's area.
    expect(tester.getCenter(find.byIcon(Icons.close)).dy, lessThan(160));

    await tester.tap(find.byIcon(Icons.close));
    await tester.pumpAndSettle();

    expect(find.text('sheet body'), findsNothing);
    expect(layerTaps, 0);
  });
}
