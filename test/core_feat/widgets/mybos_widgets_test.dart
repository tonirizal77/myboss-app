import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/theme/mybos_theme.dart';
import 'package:myboss_app/core_feat/widgets/mybos_widgets.dart';

Widget _host(Widget child) => MaterialApp(
  theme: MyBossTheme.dark,
  home: Scaffold(body: Center(child: child)),
);

void main() {
  group('MyBossButton', () {
    testWidgets('calls onPressed when enabled', (tester) async {
      var taps = 0;
      await tester.pumpWidget(
        _host(MyBossButton(label: 'Sign up', onPressed: () => taps++)),
      );
      await tester.tap(find.text('Sign up'));
      expect(taps, 1);
    });

    testWidgets('ignores taps while loading or disabled', (tester) async {
      var taps = 0;
      await tester.pumpWidget(
        _host(
          Column(
            children: [
              MyBossButton(
                label: 'Loading',
                loading: true,
                onPressed: () => taps++,
              ),
              const MyBossButton(label: 'Disabled', onPressed: null),
            ],
          ),
        ),
      );
      expect(find.byType(CircularProgressIndicator), findsOneWidget);
      await tester.tap(find.byType(MyBossButton).first);
      await tester.tap(find.text('Disabled'));
      expect(taps, 0);
    });

    testWidgets('large size is 56px tall', (tester) async {
      await tester.pumpWidget(
        _host(
          MyBossButton(
            label: 'Sign in',
            size: MyBossButtonSize.large,
            onPressed: () {},
          ),
        ),
      );
      expect(tester.getSize(find.byType(MyBossButton)).height, 56);
    });
  });

  group('MyBossTextField', () {
    testWidgets('shows label, reports changes and error text', (tester) async {
      String? changed;
      await tester.pumpWidget(
        _host(
          MyBossTextField(
            label: 'Phone number',
            errorText: 'Invalid number',
            onChanged: (v) => changed = v,
          ),
        ),
      );
      expect(find.text('Phone number'), findsOneWidget);
      expect(find.text('Invalid number'), findsOneWidget);
      await tester.enterText(find.byType(TextField), '0812');
      expect(changed, '0812');
    });
  });

  group('MyBossStatusChip', () {
    testWidgets('renders label for each kind', (tester) async {
      await tester.pumpWidget(
        _host(
          const Column(
            children: [
              MyBossStatusChip(label: 'Open', kind: MyBossChipKind.success),
              MyBossStatusChip(label: 'Closed', kind: MyBossChipKind.danger),
              MyBossStatusChip(label: 'Audio'),
            ],
          ),
        ),
      );
      expect(find.text('Open'), findsOneWidget);
      expect(find.text('Closed'), findsOneWidget);
      expect(find.text('Audio'), findsOneWidget);
    });
  });

  group('MyBossDialog', () {
    testWidgets('resolves true on confirm and false on cancel', (tester) async {
      bool? result;
      late BuildContext ctx;
      await tester.pumpWidget(
        _host(
          Builder(
            builder: (c) {
              ctx = c;
              return const SizedBox();
            },
          ),
        ),
      );

      Future<void> open() async {
        result = null;
        MyBossDialog.confirm(
          ctx,
          title: 'Sign out?',
          cancelLabel: 'Back',
          confirmLabel: 'Yes, sign out',
          destructive: true,
        ).then((v) => result = v);
        await tester.pumpAndSettle();
      }

      await open();
      expect(find.text('Sign out?'), findsOneWidget);
      await tester.tap(find.text('Yes, sign out'));
      await tester.pumpAndSettle();
      expect(result, true);

      await open();
      await tester.tap(find.text('Back'));
      await tester.pumpAndSettle();
      expect(result, false);
    });
  });

  group('MyBossBottomSheet', () {
    testWidgets('shows content and closes with the close button', (
      tester,
    ) async {
      late BuildContext ctx;
      await tester.pumpWidget(
        _host(
          Builder(
            builder: (c) {
              ctx = c;
              return const SizedBox();
            },
          ),
        ),
      );

      MyBossBottomSheet.show(
        ctx,
        builder: (_) => const Text('Select our branch'),
      );
      await tester.pumpAndSettle();
      expect(find.text('Select our branch'), findsOneWidget);

      await tester.tap(find.byIcon(Icons.close));
      await tester.pumpAndSettle();
      expect(find.text('Select our branch'), findsNothing);
    });
  });

  group('MyBossToast', () {
    testWidgets('appears then disappears after its duration', (tester) async {
      late BuildContext ctx;
      await tester.pumpWidget(
        _host(
          Builder(
            builder: (c) {
              ctx = c;
              return const SizedBox();
            },
          ),
        ),
      );

      MyBossToast.success(
        ctx,
        'Hi! Rangga',
        duration: const Duration(seconds: 1),
      );
      await tester.pump();
      expect(find.text('Hi! Rangga'), findsOneWidget);

      await tester.pump(const Duration(seconds: 2));
      await tester.pumpAndSettle();
      expect(find.text('Hi! Rangga'), findsNothing);
    });
  });
}
