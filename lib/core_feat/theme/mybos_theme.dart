import 'package:flutter/material.dart';
import 'package:mobile_app_core/mobile_app_core.dart';

import 'mybos_colors.dart';
import 'mybos_text_styles.dart';

/// MyBoss themes: `mobile_app_core`'s light/dark themes with MyBoss
/// colors/typography. Dark is the app default.
///
/// `AppTheme.primary(context)` & friends read from the color scheme, so they
/// pick up these values automatically.
class MyBossTheme {
  MyBossTheme._();

  static ThemeData get dark => _build(AppTheme.dark, MyBossPalette.dark);

  static ThemeData get light => _build(AppTheme.light, MyBossPalette.light);

  static ThemeData _build(ThemeData base, MyBossPalette p) {
    final scheme = base.colorScheme.copyWith(
      primary: p.primary,
      onPrimary: p.onPrimary,
      primaryContainer: p.primaryContainer,
      onPrimaryContainer: p.onPrimaryContainer,
      surface: p.surface,
      onSurface: p.onSurface,
      onSurfaceVariant: p.onSurfaceVariant,
      outline: p.outline,
      surfaceContainerLowest: p.surfaceContainerLowest,
      surfaceContainerLow: p.surfaceContainerLow,
      surfaceContainer: p.surfaceContainer,
      error: p.danger,
      onError: p.onDanger,
    );

    final textTheme = const TextTheme(
      headlineLarge: MyBossTextStyles.title,
      titleMedium: MyBossTextStyles.subtitle,
      bodyLarge: MyBossTextStyles.bodyBig2,
      bodyMedium: MyBossTextStyles.body,
      labelLarge: MyBossTextStyles.button,
      bodySmall: MyBossTextStyles.caption,
    ).apply(bodyColor: p.onSurface, displayColor: p.onSurface);

    return base.copyWith(
      primaryColor: p.primary,
      colorScheme: scheme,
      textTheme: textTheme,
      // Pages sit on the "low" container, like the Figma frames.
      scaffoldBackgroundColor: p.surfaceContainerLow,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: p.primary,
          foregroundColor: p.onPrimary,
          textStyle: MyBossTextStyles.button,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 0,
          minimumSize: const Size(double.infinity, 48),
        ),
      ),
    );
  }
}
