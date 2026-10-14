import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/theme/mybos_colors.dart';
import 'package:myboss_app/core_feat/theme/mybos_theme.dart';

void main() {
  tearDown(() => MyBossColors.apply(Brightness.dark));

  test('dark is the default palette (yellow brand)', () {
    expect(MyBossColors.palette.brightness, Brightness.dark);
    expect(MyBossColors.primary, const Color(0xFFFAC038));
    expect(MyBossColors.surface, const Color(0xFF000000));
  });

  test('apply switches the whole palette to light (blue brand)', () {
    MyBossColors.apply(Brightness.light);

    expect(MyBossColors.primary, const Color(0xFF173C82));
    expect(MyBossColors.surface, const Color(0xFFFFFFFF));
    expect(MyBossColors.onSurface, const Color(0xFF191919));

    MyBossColors.apply(Brightness.dark);
    expect(MyBossColors.primary, const Color(0xFFFAC038));
  });

  test('themes expose the matching brightness and brand colors', () {
    expect(MyBossTheme.dark.brightness, Brightness.dark);
    expect(MyBossTheme.dark.colorScheme.primary, MyBossPalette.dark.primary);
    expect(MyBossTheme.light.brightness, Brightness.light);
    expect(MyBossTheme.light.colorScheme.primary, MyBossPalette.light.primary);
    expect(MyBossTheme.light.colorScheme.surface, MyBossPalette.light.surface);
  });

  test('themeEpoch only changes when the palette really changes', () {
    final start = MyBossColors.themeEpoch;

    MyBossColors.apply(Brightness.dark); // already dark
    expect(MyBossColors.themeEpoch, start);

    MyBossColors.apply(Brightness.light);
    expect(MyBossColors.themeEpoch, start + 1);

    MyBossColors.apply(Brightness.light); // same again
    expect(MyBossColors.themeEpoch, start + 1);
  });
}
