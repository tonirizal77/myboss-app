part of '../widgets.dart';

/// "Earn Points, Get Free Item!" panel: 2x2 reward grid and a Sign up CTA.
class GuestRewards extends StatelessWidget {
  const GuestRewards({super.key, required this.rewards});

  final List<RewardPreview> rewards;

  @override
  Widget build(BuildContext context) {
    final primary = MyBossColors.primary;
    final base = MyBossColors.surfaceContainerLowest;

    return Container(
      width: double.infinity,
      color: MyBossColors.surfaceContainerLowest,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        decoration: BoxDecoration(
          border: Border.all(color: primary),
          // Figma: surface in the middle, glowing brand color at the edges.
          gradient: RadialGradient(
            radius: 1.1,
            colors: [base, base, primary.withValues(alpha: 0.55)],
            stops: const [0, 0.78, 1],
          ),
        ),
        child: Column(
          children: [
            Text(
              LocaleKeys.guest_home_earn_title.tr(),
              textAlign: TextAlign.center,
              style: MyBossTextStyles.title.copyWith(
                color: MyBossColors.onSurface,
              ),
            ),
            const SizedBox(height: 24),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: rewards.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                mainAxisExtent: 172,
              ),
              itemBuilder: (_, i) => _RewardCard(reward: rewards[i]),
            ),
            const SizedBox(height: 24),
            Text(
              LocaleKeys.guest_home_sign_up_for_points.tr(),
              textAlign: TextAlign.center,
              style: MyBossTextStyles.bodyBig2.copyWith(
                color: MyBossColors.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 16),
            MyBossButton(
              label: LocaleKeys.guest_home_sign_up.tr(),
              trailing: SvgPicture.asset(
                Assets.icArrowSquareRight,
                width: 24,
                height: 24,
                colorFilter: ColorFilter.mode(
                  MyBossColors.onPrimary,
                  BlendMode.srcIn,
                ),
              ),
              onPressed: () => UserFlows.goToRegisterPage(context),
            ),
          ],
        ),
      ),
    );
  }
}

class _RewardCard extends StatelessWidget {
  const _RewardCard({required this.reward});

  final RewardPreview reward;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: MyBossColors.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.08),
            blurRadius: 2.5,
            offset: const Offset(0, 0.5),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(
              child: Image.asset(reward.image, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            reward.name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: MyBossTextStyles.subtitleSmall.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          Text(
            LocaleKeys.guest_home_points_value.tr(args: ['${reward.points}']),
            style: MyBossTextStyles.subtitleSmall.copyWith(
              color: MyBossColors.onPrimaryContainer,
            ),
          ),
        ],
      ),
    );
  }
}
