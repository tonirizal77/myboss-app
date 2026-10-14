import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

Widget host(Widget child) => MaterialApp(theme: MyBossTheme.dark, home: child);

final _popScope = find.byWidgetPredicate((w) => w is PopScope).first;

void _phone(WidgetTester tester) {
  tester.view.physicalSize = const Size(400, 800);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.reset);
}

void main() {
  wrapTests();

  group('ResponsiveGridOrWrap', () {
    testWidgets('builds the list or the empty state, never both', (
      tester,
    ) async {
      var emptyBuilds = 0;
      final empty = Builder(
        builder: (_) {
          emptyBuilds++;
          return const Text('empty');
        },
      );

      Widget grid(List<int> data) => host(
        Scaffold(
          body: ResponsiveGridOrWrap<int>(
            tipe: TipeView.gridview,
            maxHeight: 40,
            listData: data,
            showEmptyData: empty,
            child: (i) => Text('item $i'),
          ),
        ),
      );

      await tester.pumpWidget(grid([1, 2, 3]));
      await tester.pumpAndSettle();
      expect(find.text('item 1'), findsOneWidget);
      expect(emptyBuilds, 0);

      await tester.pumpWidget(grid([]));
      await tester.pumpAndSettle();
      expect(find.text('empty'), findsOneWidget);
      expect(find.text('item 1'), findsNothing);
    });

    testWidgets('no RefreshIndicator unless onRefresh is given', (
      tester,
    ) async {
      Widget grid({Future<void> Function()? onRefresh}) => host(
        Scaffold(
          body: ResponsiveGridOrWrap<int>(
            tipe: TipeView.gridview,
            maxHeight: 40,
            listData: const [1, 2],
            onRefresh: onRefresh,
            child: (i) => Text('item $i'),
          ),
        ),
      );

      await tester.pumpWidget(grid());
      expect(find.byType(RefreshIndicator), findsNothing);

      await tester.pumpWidget(grid(onRefresh: () async {}));
      expect(find.byType(RefreshIndicator), findsOneWidget);
    });

    testWidgets('load more fires once near the end, again after new data', (
      tester,
    ) async {
      var calls = 0;
      var data = List.generate(30, (i) => i);

      Widget grid() => host(
        Scaffold(
          body: SizedBox(
            height: 400,
            child: ResponsiveGridOrWrap<int>(
              tipe: TipeView.gridview,
              maxHeight: 60,
              listData: data,
              onLoadMore: () => calls++,
              child: (i) => SizedBox(height: 60, child: Text('item $i')),
            ),
          ),
        ),
      );

      await tester.pumpWidget(grid());
      expect(calls, 0);

      // Scroll to the bottom in several steps: only one request.
      final list = find.byType(SingleChildScrollView).first;
      for (var i = 0; i < 6; i++) {
        await tester.drag(list, const Offset(0, -600));
        await tester.pump();
      }
      await tester.pumpAndSettle();
      expect(calls, 1);

      // New page arrives -> another request is allowed.
      data = List.generate(60, (i) => i);
      await tester.pumpWidget(grid());
      for (var i = 0; i < 12; i++) {
        await tester.drag(list, const Offset(0, -600));
        await tester.pump();
      }
      await tester.pumpAndSettle();
      expect(calls, 2);
    });
  });

  group('ResponsivePage', () {
    testWidgets('does not intercept back by default', (tester) async {
      await tester.pumpWidget(host(const ResponsivePage(body: Text('x'))));

      final scope = tester.widget<PopScope>(_popScope);
      expect(scope.canPop, isTrue);
    });

    testWidgets('intercepts back only when onWillPop is given', (tester) async {
      await tester.pumpWidget(
        host(
          ResponsivePage(onWillPop: () async => false, body: const Text('x')),
        ),
      );

      final scope = tester.widget<PopScope>(_popScope);
      expect(scope.canPop, isFalse);
    });

    testWidgets('onNotification still fires when onRefresh is set', (
      tester,
    ) async {
      _phone(tester);
      var notified = 0;

      await tester.pumpWidget(
        host(
          ResponsivePage(
            useScrollView: true,
            onRefresh: () async {},
            onNotification: (_) {
              notified++;
              return false;
            },
            body: const SizedBox(height: 3000, child: Text('tall')),
          ),
        ),
      );

      await tester.drag(
        find.byType(SingleChildScrollView).first,
        const Offset(0, -300),
      );
      await tester.pump();

      expect(notified, greaterThan(0));
    });

    testWidgets('bottomNav has no BackdropFilter unless asked', (tester) async {
      _phone(tester);
      Widget page({bool blur = false}) => host(
        ResponsivePage(
          bottomNavBlur: blur,
          bottomNav: const SizedBox(height: 40, child: Text('nav')),
          body: const Text('x'),
        ),
      );

      await tester.pumpWidget(page());
      expect(find.byType(BackdropFilter), findsNothing);

      await tester.pumpWidget(page(blur: true));
      expect(find.byType(BackdropFilter), findsOneWidget);
    });
  });
}

void wrapTests() {
  group('ResponsiveGridOrWrap wrapview', () {
    Future<List<double>> widths(
      WidgetTester tester, {
      required double parentWidth,
      double? screen,
      int mobile = 2,
      bool largest = false,
    }) async {
      tester.view.physicalSize = Size(screen ?? 400, 800);
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);

      await tester.pumpWidget(
        host(
          Scaffold(
            body: Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                width: parentWidth,
                child: ResponsiveGridOrWrap<int>(
                  tipe: TipeView.wrapview,
                  mobile: mobile.toDouble(),
                  spacing: 10,
                  runSpacing: 10,
                  isSeperator: false,
                  useLargestHeight: largest,
                  padding: EdgeInsets.zero,
                  paddingBody: EdgeInsets.zero,
                  listData: const [1, 2, 3, 4],
                  child: (i) => SizedBox(height: 20, child: Text('w$i')),
                ),
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      return [
        for (final i in [1, 2, 3, 4])
          tester
              .getSize(
                find
                    .ancestor(
                      of: find.text('w$i'),
                      matching: find.byType(Container),
                    )
                    .first,
              )
              .width,
      ];
    }

    testWidgets('fills the real parent width, not the screen width', (
      tester,
    ) async {
      // Parent is narrower than the 400px screen.
      final w = await widths(tester, parentWidth: 300);

      expect(w, everyElement((300 - 10) / 2));
    });

    testWidgets('follows the column count', (tester) async {
      final w = await widths(tester, parentWidth: 320, mobile: 3);

      expect(w.first, closeTo((320 - 20) / 3, 1));
    });

    testWidgets('largest-height variant fills the parent too', (tester) async {
      getIt.registerSingleton<GeneralHelper>(GeneralHelper());
      addTearDown(getIt.reset);
      final w = await widths(tester, parentWidth: 300, largest: true);

      expect(w, everyElement((300 - 10) / 2));
    });
  });
}
