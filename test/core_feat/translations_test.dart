import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';

/// Flattened `section.key` -> text of one translation file.
Map<String, Object?> _flat(String lang) {
  final out = <String, Object?>{};
  void walk(Map<String, dynamic> map, String prefix) {
    for (final e in map.entries) {
      final key = prefix.isEmpty ? e.key : '$prefix.${e.key}';
      if (e.value is Map<String, dynamic>) {
        walk(e.value as Map<String, dynamic>, key);
      } else {
        out[key] = e.value;
      }
    }
  }

  walk(
    jsonDecode(File('assets/translations/$lang.json').readAsStringSync())
        as Map<String, dynamic>,
    '',
  );
  return out;
}

/// Every key the app can ask for (`static const x = 'a.b'` in LocaleKeys).
Set<String> _localeKeys() => RegExp(r"=\s*'([^']+)';")
    .allMatches(
      File('lib/core_feat/translations/locale_keys.g.dart').readAsStringSync(),
    )
    .map((m) => m.group(1)!)
    .toSet();

void main() {
  final en = _flat('en');
  final id = _flat('id');

  test('en and id have the same keys', () {
    expect(
      en.keys.toSet().difference(id.keys.toSet()),
      isEmpty,
      reason: 'missing in id.json',
    );
    expect(
      id.keys.toSet().difference(en.keys.toSet()),
      isEmpty,
      reason: 'missing in en.json',
    );
  });

  test('every LocaleKeys entry has a text in both languages', () {
    // Section keys (e.g. `auth`) are generated too; only leaves need a text.
    final leaves = _localeKeys().where(
      (k) =>
          en.keys.any((e) => e == k) ||
          !en.keys.any((e) => e.startsWith('$k.')),
    );
    for (final key in leaves) {
      expect(en[key], isA<String>(), reason: 'en: $key');
      expect(id[key], isA<String>(), reason: 'id: $key');
    }
  });

  test('placeholders match between en and id', () {
    int count(Object? s) => '{}'.allMatches('$s').length;
    for (final key in en.keys) {
      expect(count(id[key]), count(en[key]), reason: key);
    }
  });
}
