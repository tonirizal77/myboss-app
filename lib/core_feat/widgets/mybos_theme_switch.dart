import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mobile_app_core/mobile_app_core.dart';

import '../theme/mybos_colors.dart';

/// Light/Dark switch button (replaces core's `ButtonMode`, whose icon uses
/// the hayo green). Tap toggles the mode, double tap toggles auto (06:00-18:00).
class MyBossThemeSwitch extends StatelessWidget {
  const MyBossThemeSwitch({super.key, this.size = 40, this.bordered = false});

  final double size;
  final bool bordered;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDark = state.themeMode != ThemeMode.light;

        return Material(
          key: const Key('toggle_theme'),
          color: MyBossColors.surface,
          shape: CircleBorder(
            side: bordered
                ? BorderSide(color: MyBossColors.outline)
                : BorderSide.none,
          ),
          elevation: bordered ? 0 : 1,
          child: InkWell(
            customBorder: const CircleBorder(),
            onTap: ThemeFlow.switchTheme,
            onDoubleTap: ThemeFlow.switchAuto,
            child: SizedBox(
              width: size,
              height: size,
              child: Icon(
                isDark ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
                color: state.appModeTime.auto
                    ? Colors.amber
                    : MyBossColors.primary,
              ),
            ),
          ),
        );
      },
    );
  }
}
