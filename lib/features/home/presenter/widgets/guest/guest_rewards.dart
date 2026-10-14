part of '../widgets.dart';

/// "Earn Points, Get Free Item!" panel: 2x2 reward grid and a Sign up CTA.
class GuestRewards extends StatelessWidget {
  const GuestRewards({super.key, required this.rewards, this.footer});

  final List<RewardPreview> rewards;

  /// Replaces the "Sign up to get points" call to action (signed-in Home
  /// shows the balance and Redeem instead).
  final Widget? footer;

  @override
  Widget build(BuildContext context) {
    final primary = MyBossColors.primary;
    final base = MyBossColors.surfaceContainerLowest;

    return Container(
      width: double.infinity,
      color: base,
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: DecoratedBox(
        decoration: BoxDecoration(border: Border.all(color: primary)),
        child: Stack(
          children: [
            // Figma: soft brand glow along the top and bottom edges.
            _EdgeGlow(color: primary, alignment: Alignment.topCenter),
            _EdgeGlow(color: primary, alignment: Alignment.bottomCenter),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
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
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 12,
                          crossAxisSpacing: 12,
                          mainAxisExtent: 172,
                        ),
                    itemBuilder: (_, i) => _RewardCard(reward: rewards[i]),
                  ),
                  const SizedBox(height: 24),
                  footer ?? _signUpCta(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _signUpCta(BuildContext context) {
    return Column(
      children: [
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
    );
  }
}

/// Brand color fading into the panel over [height] logical pixels from one
/// edge, eased so it reads as a glow rather than a band.
class _EdgeGlow extends StatelessWidget {
  const _EdgeGlow({required this.color, required this.alignment});

  static const double height = 28;
  static const double alpha = 0.3;

  final Color color;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    final top = alignment == Alignment.topCenter;

    return Positioned(
      left: 0,
      right: 0,
      top: top ? 0 : null,
      bottom: top ? null : 0,
      height: height,
      child: IgnorePointer(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: top ? Alignment.topCenter : Alignment.bottomCenter,
              end: top ? Alignment.bottomCenter : Alignment.topCenter,
              colors: [
                for (final t in const [0.0, 0.25, 0.5, 0.75, 1.0])
                  color.withValues(alpha: alpha * (1 - t) * (1 - t)),
              ],
            ),
          ),
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
