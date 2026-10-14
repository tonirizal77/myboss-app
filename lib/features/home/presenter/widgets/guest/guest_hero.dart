part of '../widgets.dart';

/// Points hero of the guest Home: branch name, tagline and the Sign up /
/// "I already have an account" actions.
class GuestHero extends StatelessWidget {
  const GuestHero({super.key});

  /// "Oraimo Semarang" -> two lines ("Oraimo" / "Semarang").
  static String _twoLines(String name) {
    final i = name.trim().indexOf(' ');
    return i < 0
        ? name.trim()
        : '${name.substring(0, i)}\n${name.substring(i + 1)}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: MyBossColors.surfaceContainerLowest,
      padding: const EdgeInsets.all(32),
      child: BlocBuilder<BranchCubit, BranchState>(
        buildWhen: (previous, current) =>
            previous.selected?.name != current.selected?.name,
        builder: (context, branch) {
          final name = branch.selected?.name ?? 'MyBoss';

          return Column(
            children: [
              Text(
                _twoLines(name),
                textAlign: TextAlign.center,
                style: MyBossTextStyles.titleBig2.copyWith(
                  color: MyBossColors.primary,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                LocaleKeys.guest_home_subtitle.tr(),
                textAlign: TextAlign.center,
                style: MyBossTextStyles.bodyMedium.copyWith(
                  color: MyBossColors.onSurfaceVariant,
                ),
              ),
              const SizedBox(height: 24),
              MyBossButton(
                label: LocaleKeys.guest_home_sign_up.tr(),
                leading: SvgPicture.asset(Assets.icUser, width: 24, height: 24),
                onPressed: () => UserFlows.goToRegisterPage(context),
              ),
              const SizedBox(height: 16),
              MyBossButton(
                label: LocaleKeys.guest_home_have_account.tr(),
                style: MyBossButtonStyle.text,
                role: MyBossButtonRole.secondary,
                onPressed: () => context.pushNamed(RouteNames.login),
              ),
            ],
          );
        },
      ),
    );
  }
}
