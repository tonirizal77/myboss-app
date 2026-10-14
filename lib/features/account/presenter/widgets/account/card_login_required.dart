part of '../widgets.dart';

/// Guest profile card (Figma `Guest Account`): placeholder avatar, "Guest",
/// sign-up pitch, Sign up and "I already have an account". Same shape as the
/// signed-in [CardAccountMember].
class CardLoginRequired extends StatelessWidget {
  const CardLoginRequired({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: MyBossColors.surfaceContainerLowest,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: MyBossColors.outline.withValues(alpha: 0.6)),
      ),
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 130,
                height: 130,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFE6E6E6),
                ),
                child: const Icon(
                  Icons.person,
                  size: 96,
                  color: Color(0xFFA6A6A6),
                ),
              ),
              // Guests have no profile to edit yet: send them to sign in.
              _EditButton(onTap: () => context.pushNamed(RouteNames.login)),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            LocaleKeys.akun_guest_title.tr(),
            style: MyBossTextStyles.titleBig1.copyWith(
              color: MyBossColors.onSurfaceVariant,
            ),
          ),
          const SizedBox(height: 12),
          Text(
            LocaleKeys.akun_guest_desc.tr(),
            style: MyBossTextStyles.body.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          const SizedBox(height: 24),
          MyBossButton(
            label: LocaleKeys.guest_home_sign_up.tr(),
            leading: SvgPicture.asset(
              Assets.icUser,
              width: 24,
              height: 24,
              colorFilter: ColorFilter.mode(
                MyBossColors.onPrimary,
                BlendMode.srcIn,
              ),
            ),
            onPressed: () => UserFlows.goToRegisterPage(context),
          ),
          const SizedBox(height: 16),
          MyBossButton(
            label: LocaleKeys.guest_home_have_account.tr(),
            role: MyBossButtonRole.secondary,
            onPressed: () => context.pushNamed(RouteNames.login),
          ),
        ],
      ),
    );
  }
}
