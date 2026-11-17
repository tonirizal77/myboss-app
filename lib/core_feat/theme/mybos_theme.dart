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

  /// `ThemeState.toJson()` of `mobile_app_core` leaves the nested
  /// `AppModeTime` as an object, which Hive cannot store - round-trip through
  /// JSON to get plain maps.
  static Map<String, dynamic> _plainJson(ThemeState state) =>
      jsonDecode(jsonEncode(state)) as Map<String, dynamic>;

  /// The app's own key for the Light/Dark choice - independent of class names.
  static const _storageKey = 'MyBossTheme';

  /// Where older builds stored the choice (HydratedBloc key of a
  /// non-obfuscated `ThemeBloc`); still read so that choice is kept.
  static const _legacyKey = 'ThemeBloc';

  /// Dark by default on a fresh install, and every Light/Dark change kept
  /// across restarts. Call once `ThemeBloc` is registered (lazily) and before
  /// anything creates it or `runApp` runs: a new `ThemeBloc` writes its
  /// Light default under the legacy key, so storage is read first.
  ///
  /// The choice is not left to `ThemeBloc`'s own HydratedBloc storage:
  /// - its key is the runtime type name, which `--obfuscate` builds minify,
  ///   so a key seeded under `'ThemeBloc'` was never read back (app started
  ///   in Light);
  /// - it writes the default Light state as soon as the bloc is created, so a
  ///   fresh install cannot be told apart from a saved choice;
  /// - its write fails anyway (see [_plainJson]).
  static StreamSubscription<ThemeState> setupDefaultDark() {
    final storage = HydratedBloc.storage;
    final stored = storage.read(_storageKey) ?? storage.read(_legacyKey);
    final mode = stored is Map
        ? ThemeMode.values.asNameMap()[stored['themeMode']] ?? ThemeMode.dark
        : ThemeMode.dark;

    final bloc = getIt<ThemeBloc>();
    final subscription = bloc.stream.listen(
      (state) => storage.write(_storageKey, _plainJson(state)),
    );

    if (bloc.state.themeMode != mode) {
      bloc.add(ThemeEvent.changeTheme(mode));
    }
    return subscription;
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
