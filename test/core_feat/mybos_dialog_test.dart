import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

void main() {
  Future<bool?> Function() open(WidgetTester tester, {bool stacked = true}) {
    late BuildContext ctx;
    bool? result;
    var done = false;

    return () async {
      await tester.pumpWidget(
        MaterialApp(
          theme: MyBossTheme.dark,
          home: Builder(
            builder: (context) {
              ctx = context;
              return const SizedBox();
            },
          ),
        ),
      );
      MyBossDialog.confirm(
        ctx,
        title: 'Are you sure you want to delete your MyBoss account?',
        cancelLabel: 'No, cancel',
        confirmLabel: 'Yes, continue',
        destructive: true,
        icon: Icons.warning_rounded,
        stacked: stacked,
      ).then((v) {
        result = v;
        done = true;
      });
      await tester.pumpAndSettle();
      return done ? result : null;
    };
  }

  testWidgets('stacked warning dialog: icon, cancel above confirm', (
    tester,
  ) async {
    await open(tester)();

    expect(find.byIcon(Icons.warning_rounded), findsOneWidget);
    final cancel = tester.getCenter(find.text('No, cancel'));
    final confirm = tester.getCenter(find.text('Yes, continue'));
    expect(cancel.dy, lessThan(confirm.dy));
    expect(cancel.dx, closeTo(confirm.dx, 1));
  });

  testWidgets('Yes, continue resolves true; No, cancel resolves false', (
    tester,
  ) async {
    for (final (label, expected) in [
      ('Yes, continue', true),
      ('No, cancel', false),
    ]) {
      late BuildContext ctx;
      bool? result;
      await tester.pumpWidget(
        MaterialApp(
          theme: MyBossTheme.dark,
          home: Builder(
            builder: (context) {
              ctx = context;
              return const SizedBox();
            },
          ),
        ),
      );
      MyBossDialog.confirm(
        ctx,
        title: 'Are you sure?',
        cancelLabel: 'No, cancel',
        confirmLabel: 'Yes, continue',
        destructive: true,
        stacked: true,
      ).then((v) => result = v);
      await tester.pumpAndSettle();

      await tester.tap(find.text(label));
      await tester.pumpAndSettle();

      expect(result, expected);
      expect(find.text('Are you sure?'), findsNothing);
    }
  });

  testWidgets('default layout keeps the buttons side by side', (tester) async {
    await open(tester, stacked: false)();

    final cancel = tester.getCenter(find.text('No, cancel'));
    final confirm = tester.getCenter(find.text('Yes, continue'));
    expect(cancel.dy, closeTo(confirm.dy, 1));
    expect(cancel.dx, lessThan(confirm.dx));
  });

  testWidgets('buttons still work after the caller left the tree', (
    tester,
  ) async {
    late BuildContext caller;
    late StateSetter setOuter;
    var showCaller = true;
    bool? result;

    await tester.pumpWidget(
      MaterialApp(
        theme: MyBossTheme.dark,
        home: StatefulBuilder(
          builder: (context, setState) {
            setOuter = setState;
            return showCaller
                ? Builder(
                    builder: (context) {
                      caller = context;
                      return const SizedBox();
                    },
                  )
                : const SizedBox();
          },
        ),
      ),
    );
    MyBossDialog.confirm(
      caller,
      title: 'Are you sure?',
      cancelLabel: 'No, cancel',
      confirmLabel: 'Yes, continue',
      stacked: true,
    ).then((v) => result = v);
    await tester.pumpAndSettle();

    // e.g. the delete sheet rebuilt underneath the dialog.
    setOuter(() => showCaller = false);
    await tester.pumpAndSettle();

    await tester.tap(find.text('Yes, continue'));
    await tester.pumpAndSettle();

    expect(tester.takeException(), isNull);
    expect(result, isTrue);
  });
}
