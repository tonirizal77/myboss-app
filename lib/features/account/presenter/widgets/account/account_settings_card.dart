part of '../widgets.dart';

/// App settings of the Account page, for guests and members alike:
/// language (ID / EN) and dark mode. Same card as [AccountStatsCard].
class AccountSettingsCard extends StatelessWidget {
  const AccountSettingsCard({super.key});

  /// Saves the language and switches the UI; `main.dart` keeps the API
  /// locale (`ConfigServer.locale`) in step.
  static Future<void> _setLanguage(BuildContext context, String code) =>
      getIt<SharedPreferencesHelper>().setLangApp(context, code);

  @override
  Widget build(BuildContext context) {
    final isId = context.locale.languageCode == 'id';

    return _AccountCard(
      child: Column(
        children: [
          _AccountRow(
            key: const Key('account_language'),
            icon: Icon(Icons.translate, size: 28, color: MyBossColors.primary),
            label: LocaleKeys.akun_language.tr(),
            labelStyle: MyBossTextStyles.subtitleBig2,
            // Tapping the row switches to the other language too.
            onTap: () => _setLanguage(context, isId ? 'en' : 'id'),
            trailing: const SwitchLocaleBar(tipe: TipeSwitch.rolling),
          ),
          Divider(height: 1, thickness: 0.5, color: MyBossColors.outline),
          BlocBuilder<ThemeBloc, ThemeState>(
            builder: (context, state) {
              final isDark = state.themeMode != ThemeMode.light;

              return _AccountRow(
                key: const Key('account_dark_mode'),
                icon: Icon(
                  isDark ? Icons.dark_mode_outlined : Icons.light_mode_outlined,
                  size: 28,
                  color: MyBossColors.primary,
                ),
                label: LocaleKeys.akun_dark_mode.tr(),
                labelStyle: MyBossTextStyles.subtitleBig2,
                onTap: ThemeFlow.switchTheme,
                trailing: Switch(
                  key: const Key('theme_switch'),
                  value: isDark,
                  activeThumbColor: MyBossColors.onPrimary,
                  activeTrackColor: MyBossColors.primary,
                  onChanged: (_) => ThemeFlow.switchTheme(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
