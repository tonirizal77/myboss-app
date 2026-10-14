import 'package:flutter/material.dart';
import 'package:mobile_app_core/mobile_app_core.dart';

import 'mybos_colors.dart';
import 'mybos_text_styles.dart';

/// MyBoss theme: `mobile_app_core`'s dark theme with MyBoss colors/typography.
///
/// `AppTheme.primary(context)` & friends read from the color scheme, so they
/// pick up these values automatically.
class MyBossTheme {
  MyBossTheme._();

  static ThemeData get dark {
    final base = AppTheme.dark;

    final scheme = base.colorScheme.copyWith(
      primary: MyBossColors.primary,
      onPrimary: MyBossColors.onPrimary,
      primaryContainer: MyBossColors.primaryContainer,
      onPrimaryContainer: MyBossColors.onPrimaryContainer,
      surface: MyBossColors.surface,
      onSurface: MyBossColors.onSurface,
      onSurfaceVariant: MyBossColors.onSurfaceVariant,
      outline: MyBossColors.outline,
      surfaceContainerLowest: MyBossColors.surfaceContainerLowest,
      surfaceContainerLow: MyBossColors.surfaceContainerLow,
      error: MyBossColors.danger,
      onError: MyBossColors.onDanger,
    );

    final textTheme =
        const TextTheme(
          headlineLarge: MyBossTextStyles.title,
          titleMedium: MyBossTextStyles.subtitle,
          bodyLarge: MyBossTextStyles.bodyBig2,
          bodyMedium: MyBossTextStyles.body,
          labelLarge: MyBossTextStyles.button,
          bodySmall: MyBossTextStyles.caption,
        ).apply(
          bodyColor: MyBossColors.onSurface,
          displayColor: MyBossColors.onSurface,
        );

    return base.copyWith(
      primaryColor: MyBossColors.primary,
      colorScheme: scheme,
      textTheme: textTheme,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: MyBossColors.primary,
          foregroundColor: MyBossColors.onPrimary,
          textStyle: MyBossTextStyles.button,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          elevation: 0,
          minimumSize: const Size(double.infinity, 48),
        ),
      ),
    );
  }
}
