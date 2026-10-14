part of '../widgets.dart';

/// "Dark mode" row of the account menu: a switch bound to [ThemeBloc].
/// Available to guests too (the old switch lived in the member card only).
class MenuThemeSwitch extends StatelessWidget {
  const MenuThemeSwitch({super.key, this.borderRadius});

  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDark = state.themeMode != ThemeMode.light;

        return ButtonMenuAkun(
          borderRadius: borderRadius,
          icon: Icon(
            isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
            color: MyBossColors.primary,
          ),
          title: Text(
            LocaleKeys.akun_dark_mode.tr(),
            style: MyBossTextStyles.subtitle,
          ),
          trailing: Switch(
            key: const Key('theme_switch'),
            value: isDark,
            activeThumbColor: MyBossColors.onPrimary,
            activeTrackColor: MyBossColors.primary,
            onChanged: (_) => ThemeFlow.switchTheme(),
          ),
          onTap: ThemeFlow.switchTheme,
        );
      },
    );
  }
}
