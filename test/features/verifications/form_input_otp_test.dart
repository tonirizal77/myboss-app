import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/features/verifications/presenter/presenters.dart';

void main() {
  _pasteTests();
  testWidgets('reports partial/empty code after digits are deleted', (
    tester,
  ) async {
    final reported = <String>[];
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FormInputOtp(onVerify: (_) {}, onChanged: reported.add),
        ),
      ),
    );

    Finder field(int i) => find.byKey(ValueKey('otp_field_$i'));

    for (var i = 0; i < 4; i++) {
      await tester.enterText(field(i), '${i + 1}');
      await tester.pump();
    }
    expect(reported.last, '1234');

    // Delete one by one, last to first.
    for (var i = 3; i >= 0; i--) {
      await tester.enterText(field(i), '');
      await tester.pump();
      expect(reported.last, '1234'.substring(0, i));
    }
    expect(reported.last, '');
  });
}

void _pasteTests() {
  Finder field(int i) => find.byKey(ValueKey('otp_field_$i'));

  Future<List<String>> pump(
    WidgetTester tester, {
    List<String>? verified,
  }) async {
    final reported = <String>[];
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FormInputOtp(
            onVerify: (otp) => verified?.add(otp),
            onChanged: reported.add,
          ),
        ),
      ),
    );
    return reported;
  }

  testWidgets('pasting a full code into the first field fills all fields', (
    tester,
  ) async {
    final verified = <String>[];
    final reported = await pump(tester, verified: verified);

    await tester.enterText(field(0), '1234');
    await tester.pumpAndSettle();

    expect(reported.last, '1234');
    expect(verified, ['1234']);
  });

  testWidgets('pasting a full code into another field still starts at first', (
    tester,
  ) async {
    final reported = await pump(tester);

    await tester.enterText(field(2), '5678');
    await tester.pumpAndSettle();

    expect(reported.last, '5678');
  });

  testWidgets('pasting digits with spaces / extra length keeps first 4', (
    tester,
  ) async {
    final reported = await pump(tester);

    await tester.enterText(field(0), '12 34 99');
    await tester.pumpAndSettle();

    expect(reported.last, '1234');
  });

  testWidgets('a short paste fills from the receiving field', (tester) async {
    final reported = await pump(tester);

    await tester.enterText(field(0), '1');
    await tester.pump();
    await tester.enterText(field(1), '23');
    await tester.pumpAndSettle();

    expect(reported.last, '123');
  });
}
