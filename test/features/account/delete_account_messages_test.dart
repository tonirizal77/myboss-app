import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

/// Without loaded translations `.tr()` answers the key itself.
void main() {
  group('delete account failure messages', () {
    test('server reason: "failed to delete" + the reason', () {
      expect(
        AccountFlows.deleteErrorMessage(' Account has active orders '),
        LocaleKeys.akun_delete_account_failed_reason,
      );
      expect(
        AccountFlows.cancelDeleteErrorMessage('Not pending'),
        LocaleKeys.akun_delete_cancel_failed_reason,
      );
    });

    test('no server reason: a generic retry text, never empty', () {
      expect(
        AccountFlows.deleteErrorMessage('  '),
        LocaleKeys.akun_delete_account_failed,
      );
      expect(
        AccountFlows.cancelDeleteErrorMessage(''),
        LocaleKeys.akun_delete_cancel_failed,
      );
    });

    test('texts exist in both languages, reason texts take the reason', () {
      for (final lang in ['en', 'id']) {
        final akun =
            (jsonDecode(
                      File('assets/translations/$lang.json').readAsStringSync(),
                    )
                    as Map<String, dynamic>)['akun']
                as Map<String, dynamic>;

        for (final key in [
          'delete_account_success',
          'delete_account_failed',
          'delete_cancel_success',
          'delete_cancel_failed',
        ]) {
          expect(akun[key], isA<String>(), reason: '$lang: $key');
        }
        expect(akun['delete_account_failed_reason'], contains('{}'));
        expect(akun['delete_cancel_failed_reason'], contains('{}'));
      }
    });
  });
}
