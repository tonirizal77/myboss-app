import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

/// Back-to-top button of `ResponsivePage` (mobile_app_core): driven by the
/// page scroll view only, without any help from the page.
void main() {
  final button = find.byKey(const ValueKey('responsive_page_back_to_top'));

  /// Opacity of the button (1 = shown, 0 = hidden) once animations settle.
  double opacity(WidgetTester tester) => tester
      .widget<AnimatedOpacity>(
        find.ancestor(of: button, matching: find.byType(AnimatedOpacity)),
      )
      .opacity;

  Future<ValueNotifier<bool>> pumpPage(WidgetTester tester) async {
    final tall = ValueNotifier<bool>(true);
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (_, _) => ValueListenableBuilder<bool>(
            valueListenable: tall,
            builder: (_, isTall, _) => ResponsivePage(
              useScrollView: true,
              backgroundColor: Colors.white,
              colorPage: Colors.white,
              body: Column(
                children: [
                  // Nested horizontal scrollable: must not drive the button.
                  SizedBox(
                    height: 100,
                    child: ListView(
                      key: const ValueKey('carousel'),
                      scrollDirection: Axis.horizontal,
                      children: [
                        for (var i = 0; i < 20; i++)
                          const SizedBox(width: 200, child: Text('item')),
                      ],
                    ),
                  ),
                  SizedBox(height: isTall ? 3000 : 50),
                ],
              ),
            ),
          ),
        ),
      ],
    );
    addTearDown(router.dispose);
    addTearDown(tall.dispose);

    await tester.pumpWidget(MaterialApp.router(routerConfig: router));
    await tester.pumpAndSettle();
    return tall;
  }

  testWidgets('hidden at the top, shown after scrolling down', (tester) async {
    await pumpPage(tester);
    expect(opacity(tester), 0);

    await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -400));
    await tester.pumpAndSettle();
    expect(opacity(tester), 1);
  });

  testWidgets('hides when the content shrinks below the offset', (
    tester,
  ) async {
    final tall = await pumpPage(tester);
    await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -400));
    await tester.pumpAndSettle();
    expect(opacity(tester), 1);

    // Like switching to a shorter tab: the offset is clamped to 0 silently.
    tall.value = false;
    await tester.pumpAndSettle();
    expect(opacity(tester), 0);
  });

  testWidgets('a nested horizontal list does not show it', (tester) async {
    await pumpPage(tester);
    await tester.drag(
      find.byKey(const ValueKey('carousel')),
      const Offset(-600, 0),
    );
    await tester.pumpAndSettle();
    expect(opacity(tester), 0);
  });

  testWidgets('tapping it scrolls back to the top and hides it', (
    tester,
  ) async {
    await pumpPage(tester);
    await tester.drag(find.byType(SingleChildScrollView), const Offset(0, -400));
    await tester.pumpAndSettle();

    await tester.tap(button);
    await tester.pumpAndSettle();
    expect(opacity(tester), 0);
  });
}
