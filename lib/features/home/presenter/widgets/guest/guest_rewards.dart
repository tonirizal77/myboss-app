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
            // Figma: inner brand glow along the edges, strongest in the
            // corners.
            Positioned.fill(
              child: IgnorePointer(
                child: CustomPaint(painter: _InnerGlowPainter(glow: primary)),
              ),
            ),
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

/// Inner glow (Figma): a soft band along the top and bottom edges, a thin
/// rim on the sides, and extra light in the corners so the glow reaches
/// further in there than in the middle of an edge.
class _InnerGlowPainter extends CustomPainter {
  const _InnerGlowPainter({required this.glow});

  final Color glow;

  static const double _band = 52; // top / bottom depth
  static const double _rim = 12; // side depth
  static const double _corner = 130; // corner radius of extra light
  static const double _alpha = 0.3;

  /// Eased fade: strong at the edge, long soft tail.
  List<Color> _fade(double alpha) => [
    for (final t in const [0.0, 0.2, 0.45, 0.7, 1.0])
      glow.withValues(alpha: alpha * (1 - t) * (1 - t)),
  ];

  void _drawBand(
    Canvas canvas,
    Rect rect,
    Alignment from,
    Alignment to,
    double a,
  ) {
    canvas.drawRect(
      rect,
      Paint()
        ..shader = LinearGradient(
          begin: from,
          end: to,
          colors: _fade(a),
        ).createShader(rect),
    );
  }

  @override
  void paint(Canvas canvas, Size size) {
    final w = size.width;
    final h = size.height;

    canvas.save();
    canvas.clipRect(Offset.zero & size);

    // Top and bottom bands.
    _drawBand(
      canvas,
      Rect.fromLTWH(0, 0, w, _band),
      Alignment.topCenter,
      Alignment.bottomCenter,
      _alpha,
    );
    _drawBand(
      canvas,
      Rect.fromLTWH(0, h - _band, w, _band),
      Alignment.bottomCenter,
      Alignment.topCenter,
      _alpha,
    );

    // Thin side rims.
    _drawBand(
      canvas,
      Rect.fromLTWH(0, 0, _rim, h),
      Alignment.centerLeft,
      Alignment.centerRight,
      _alpha * 0.6,
    );
    _drawBand(
      canvas,
      Rect.fromLTWH(w - _rim, 0, _rim, h),
      Alignment.centerRight,
      Alignment.centerLeft,
      _alpha * 0.6,
    );

    // Corners.
    for (final c in [Offset.zero, Offset(w, 0), Offset(0, h), Offset(w, h)]) {
      final rect = Rect.fromCircle(center: c, radius: _corner);
      canvas.drawRect(
        rect,
        Paint()
          ..shader = RadialGradient(
            colors: _fade(_alpha * 0.8),
          ).createShader(rect),
      );
    }

    canvas.restore();
  }

  @override
  bool shouldRepaint(_InnerGlowPainter old) => old.glow != glow;
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
