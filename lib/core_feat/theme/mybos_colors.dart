import 'package:flutter/material.dart';

/// MyBoss brand tokens taken from the Figma file `mybos` (dark mode).
///
/// `mobile_app_core` (branch `mybos-core`) still ships hayo's green palette as
/// `static final` values that cannot be overridden, so MyBoss tokens live here.
class MyBossColors {
  MyBossColors._();

  // Brand
  static const Color primary = Color(0xFFFAC038);
  static const Color onPrimary = Color(0xFF000000);
  static const Color onPrimaryContainer = Color(0xFFFCDF9C);

  /// Not defined in Figma - derived dark amber so containers stay on-brand.
  static const Color primaryContainer = Color(0xFF3A2E0B);

  // Surface (dark)
  static const Color surface = Color(0xFF000000);
  static const Color surfaceContainerLowest = Color(0xFF191919);
  static const Color surfaceContainerLow = Color(0xFF262626);
  static const Color onSurface = Color(0xFFFFFFFF);
  static const Color onSurfaceVariant = Color(0xFFB3B3B3);
  static const Color outline = Color(0xFF666666);

  /// Dark `surface-container` (not exported by Figma variables; matches core).
  static const Color surfaceContainer = Color(0xFF333333);

  // Status
  static const Color danger = Color(0xFFF48471);
  static const Color onDanger = Color(0xFF000000);
  static const Color success = Color(0xFF88DDA0);
  static const Color onSuccess = Color(0xFF000000);

  /// Toast background in dark mode - read from the Figma render of
  /// `notification animation` (variable only exposes the light value).
  static const Color successContainer = Color(0xFF0B2813);

  // Shared
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey50 = Color(0xFF7F7F7F);
}
