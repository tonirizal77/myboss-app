import 'package:flutter/material.dart';

/// Color set of one theme mode.
class MyBossPalette {
  const MyBossPalette({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.onPrimaryContainer,
    required this.surface,
    required this.surfaceContainerLowest,
    required this.surfaceContainerLow,
    required this.surfaceContainer,
    required this.onSurface,
    required this.onSurfaceVariant,
    required this.outline,
    required this.danger,
    required this.onDanger,
    required this.success,
    required this.onSuccess,
    required this.successContainer,
  });

  final Brightness brightness;

  final Color primary;
  final Color onPrimary;
  final Color primaryContainer;
  final Color onPrimaryContainer;

  final Color surface;
  final Color surfaceContainerLowest;
  final Color surfaceContainerLow;
  final Color surfaceContainer;
  final Color onSurface;
  final Color onSurfaceVariant;
  final Color outline;

  final Color danger;
  final Color onDanger;
  final Color success;
  final Color onSuccess;
  final Color successContainer;

  /// Figma `mybos`, dark mode (default).
  static const dark = MyBossPalette(
    brightness: Brightness.dark,
    primary: Color(0xFFFAC038),
    onPrimary: Color(0xFF000000),
    // Not defined in Figma - derived dark amber so containers stay on-brand.
    primaryContainer: Color(0xFF3A2E0B),
    onPrimaryContainer: Color(0xFFFCDF9C),
    surface: Color(0xFF000000),
    surfaceContainerLowest: Color(0xFF191919),
    surfaceContainerLow: Color(0xFF262626),
    // Dark `surface-container` is not exported by Figma variables; matches core.
    surfaceContainer: Color(0xFF333333),
    onSurface: Color(0xFFFFFFFF),
    onSurfaceVariant: Color(0xFFB3B3B3),
    outline: Color(0xFF666666),
    danger: Color(0xFFF48471),
    onDanger: Color(0xFF000000),
    success: Color(0xFF88DDA0),
    onSuccess: Color(0xFF000000),
    // Read from the Figma render of `notification animation`.
    successContainer: Color(0xFF0B2813),
  );

  /// Figma `mybos`, light mode (values come from the variable fallbacks).
  static const light = MyBossPalette(
    brightness: Brightness.light,
    primary: Color(0xFF173C82),
    onPrimary: Color(0xFFFFFFFF),
    // Not defined in Figma - derived light blue.
    primaryContainer: Color(0xFFD4E0F7),
    onPrimaryContainer: Color(0xFF0F2857),
    surface: Color(0xFFFFFFFF),
    surfaceContainerLowest: Color(0xFFFCFCFC),
    surfaceContainerLow: Color(0xFFFAFAFA),
    surfaceContainer: Color(0xFFF2F2F2),
    onSurface: Color(0xFF191919),
    onSurfaceVariant: Color(0xFF7F7F7F),
    outline: Color(0xFFCCCCCC),
    danger: Color(0xFFED3312),
    onDanger: Color(0xFFFFFFFF),
    success: Color(0xFF2D9F4D),
    onSuccess: Color(0xFFFFFFFF),
    successContainer: Color(0xFFEBF9EF),
  );
}

/// MyBoss brand tokens (Figma `mybos`).
///
/// `mobile_app_core` (branch `mybos-core`) still ships hayo's green palette as
/// `static final` values that cannot be overridden, so MyBoss tokens live here.
///
/// The getters follow the active theme mode: [apply] is called by `MyApp`
/// whenever the mode changes, together with `MyBossTheme.rebuildAll`.
/// Because of that these are **not** compile-time constants - do not use
/// them in `const`.
class MyBossColors {
  MyBossColors._();

  static MyBossPalette _palette = MyBossPalette.dark;

  static MyBossPalette get palette => _palette;

  /// Switch the active palette (dark is the default). Returns whether it changed.
  static bool apply(Brightness brightness) {
    final next = brightness == Brightness.light
        ? MyBossPalette.light
        : MyBossPalette.dark;

    final changed = !identical(next, _palette);
    _palette = next;
    return changed;
  }

  // Brand
  static Color get primary => _palette.primary;
  static Color get onPrimary => _palette.onPrimary;
  static Color get primaryContainer => _palette.primaryContainer;
  static Color get onPrimaryContainer => _palette.onPrimaryContainer;

  // Surface
  static Color get surface => _palette.surface;
  static Color get surfaceContainerLowest => _palette.surfaceContainerLowest;
  static Color get surfaceContainerLow => _palette.surfaceContainerLow;
  static Color get surfaceContainer => _palette.surfaceContainer;
  static Color get onSurface => _palette.onSurface;
  static Color get onSurfaceVariant => _palette.onSurfaceVariant;
  static Color get outline => _palette.outline;

  // Status
  static Color get danger => _palette.danger;
  static Color get onDanger => _palette.onDanger;

  /// Container in the danger hue (vouchers, account deletion): deep
  /// red-brown in dark mode (Figma), pale red in light mode so dark text
  /// stays readable. Not a Figma variable - derived from [danger].
  static Color get dangerContainer {
    final hsl = HSLColor.fromColor(danger);
    return _palette.brightness == Brightness.dark
        ? hsl.withSaturation(0.65).withLightness(0.1).toColor()
        : hsl.withSaturation(0.8).withLightness(0.95).toColor();
  }
  static Color get success => _palette.success;
  static Color get onSuccess => _palette.onSuccess;
  static Color get successContainer => _palette.successContainer;

  // Shared (same in both modes)
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey50 = Color(0xFF7F7F7F);
}
