import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
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

  // HydratedBloc keys its state by the bloc's runtime type.
  static const _storageKey = 'ThemeBloc';

  /// `ThemeState.toJson()` of `mobile_app_core` leaves the nested
  /// `AppModeTime` as an object, which Hive cannot store - round-trip through
  /// JSON to get plain maps.
  static Map<String, dynamic> _plainJson(ThemeState state) =>
      jsonDecode(jsonEncode(state)) as Map<String, dynamic>;

  /// Makes Dark the default mode on a fresh install.
  ///
  /// The generated `ThemeState` of `mobile_app_core` defaults to Light, so seed
  /// the persisted state when the user has not chosen a mode yet (an existing
  /// choice is kept). Call after `HydratedBloc.storage` is ready and before
  /// `ThemeBloc` is created.
  static Future<void> ensureDefaultDark() async {
    if (HydratedBloc.storage.read(_storageKey) != null) return;

    await HydratedBloc.storage.write(
      _storageKey,
      _plainJson(const ThemeState(themeMode: ThemeMode.dark)),
    );
  }

  /// Persists every Light/Dark change.
  ///
  /// The core's own HydratedBloc write fails (see [_plainJson]), so the choice
  /// was lost on every restart. Call once `ThemeBloc` is registered.
  static StreamSubscription<ThemeState> persistChanges() {
    return getIt<ThemeBloc>().stream.listen(
      (state) => HydratedBloc.storage.write(_storageKey, _plainJson(state)),
    );
  }

  /// Marks every element dirty so widgets that read [MyBossColors] (including
  /// `const` subtrees) are rebuilt with the new palette in the next frame,
  /// keeping all State - Flutter's documented "rebuild everything" pattern.
  static void rebuildAll() {
    void visit(Element element) {
      element.markNeedsBuild();
      element.visitChildren(visit);
    }

    WidgetsBinding.instance.rootElement?.visitChildren(visit);
  }

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
