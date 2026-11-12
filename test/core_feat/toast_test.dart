import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

void main() {
  testWidgets('toast shows from the root navigator context', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        navigatorKey: NavigatorKey.rootNavigatorKey,
        home: const Scaffold(body: Text('home')),
      ),
    );

    // Flows that outlive their page (delete account) use this context.
    MyBossToast.success(
      NavigatorKey.rootNavigatorKey.currentContext!,
      'Deleted!',
    );
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 300));

    expect(tester.takeException(), isNull);
    expect(find.text('Deleted!'), findsOneWidget);

    // Let the toast finish (3 s + fade out).
    await tester.pump(const Duration(seconds: 4));
    await tester.pumpAndSettle();
    expect(find.text('Deleted!'), findsNothing);
  });
}
