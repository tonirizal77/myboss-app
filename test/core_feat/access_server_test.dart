import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

void main() {
  group('AccessServer.isChanged', () {
    // Saved as strings by SharedPreferencesHelper.setServer ('$id').
    const saved = ['12', 'myboss', 'secret'];

    test('same server (int id vs saved string) -> unchanged', () {
      expect(
        AccessServer.isChanged(
          saved,
          id: 12,
          domain: 'myboss',
          mobileAccess: 'secret',
        ),
        isFalse,
      );
    });

    test('any one field different -> changed', () {
      expect(
        AccessServer.isChanged(
          saved,
          id: 13,
          domain: 'myboss',
          mobileAccess: 'secret',
        ),
        isTrue,
      );
      expect(
        AccessServer.isChanged(
          saved,
          id: 12,
          domain: 'other',
          mobileAccess: 'secret',
        ),
        isTrue,
      );
      expect(
        AccessServer.isChanged(
          saved,
          id: 12,
          domain: 'myboss',
          mobileAccess: 'other',
        ),
        isTrue,
      );
    });

    test('nothing saved yet -> changed', () {
      expect(
        AccessServer.isChanged(
          null,
          id: 12,
          domain: 'myboss',
          mobileAccess: 'secret',
        ),
        isTrue,
      );
    });
  });
}
