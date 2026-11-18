import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/widgets/mybos_dialog.dart';

void main() {
  testWidgets('confirm shows title + message and resolves per button', (
    tester,
  ) async {
    bool? result;
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) => TextButton(
            onPressed: () async => result = await MyBossDialog.confirm(
              context,
              title: 'Exit the app?',
              message: 'Open again to continue.',
              cancelLabel: 'Cancel',
              confirmLabel: 'Yes, exit',
              icon: Icons.warning_amber_rounded,
              barrierDismissible: false,
            ),
            child: const Text('open'),
          ),
        ),
      ),
    );

    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
    expect(find.text('Exit the app?'), findsOneWidget);
    expect(find.text('Open again to continue.'), findsOneWidget);

    await tester.tap(find.text('Cancel'));
    await tester.pumpAndSettle();
    expect(result, false);

    await tester.tap(find.text('open'));
    await tester.pumpAndSettle();
    await tester.tap(find.text('Yes, exit'));
    await tester.pumpAndSettle();
    expect(result, true);
  });
}
