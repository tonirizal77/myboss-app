import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

/// Without loaded translations `.tr()` answers the key itself, so the
/// expectations name the translation keys.
void main() {
  VerifyState failed(FromPage from, String message) => VerifyState(
    errorMessage: message,
    verifyData: VerifyModel(fromPage: from),
  );

  group('VerifyFlowsListener.errorMessage', () {
    test('register with a server reason says registration failed + reason', () {
      expect(
        VerifyFlowsListener.errorMessage(
          failed(FromPage.register, ' Phone already registered '),
        ),
        LocaleKeys.auth_register_failed_reason,
      );
    });

    test('register without a server reason falls back to a retry text', () {
      expect(
        VerifyFlowsListener.errorMessage(failed(FromPage.register, '  ')),
        LocaleKeys.auth_register_failed,
      );
    });

    test('other flows keep the server message unchanged', () {
      expect(
        VerifyFlowsListener.errorMessage(failed(FromPage.login, 'Wrong OTP')),
        'Wrong OTP',
      );
    });
  });

  test('register messages exist in both languages', () {
    for (final lang in ['en', 'id']) {
      final auth =
          (jsonDecode(File('assets/translations/$lang.json').readAsStringSync())
                  as Map<String, dynamic>)['auth']
              as Map<String, dynamic>;

      for (final key in [
        LocaleKeys.auth_register_success,
        LocaleKeys.auth_register_failed,
        LocaleKeys.auth_register_failed_reason,
      ]) {
        final text = auth[key.split('.').last];
        expect(
          text,
          isA<String>().having((s) => s, 'text', isNotEmpty),
          reason: '$lang: $key',
        );
      }
      expect(auth['register_failed_reason'], contains('{}'), reason: lang);
    }
  });
}
