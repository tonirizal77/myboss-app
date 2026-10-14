part of '../widgets.dart';

/// "6,969 points" with the unit fading out to the right, followed by the
/// expiry lines. Shared by the Home member hero, the redeem panel and the
/// Membership Card sheet.
class MemberPointsText extends StatelessWidget {
  /// "100 expires in 9 days" with the amount in bold (Figma).
  Widget _expiryLine(int days, TextAlign textAlign) {
    final amount = '${summary.expiringPoints}';
    final text = LocaleKeys.points_expires_in.tr(args: [amount, '$days']);
    final style = MyBossTextStyles.body.copyWith(
      color: MyBossColors.onSurfaceVariant,
    );
    final i = text.indexOf(amount);

    return Text.rich(
      i < 0
          ? TextSpan(text: text)
          : TextSpan(
              children: [
                TextSpan(text: text.substring(0, i)),
                TextSpan(
                  text: amount,
                  style: style.copyWith(
                    color: MyBossColors.onSurface,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                TextSpan(text: text.substring(i + amount.length)),
              ],
            ),
      textAlign: textAlign,
      style: style,
    );
  }

  const MemberPointsText({
    super.key,
    required this.summary,
    this.align = CrossAxisAlignment.start,
    this.size = 40,
  });

  final PointsSummary summary;
  final CrossAxisAlignment align;
  final double size;

  @override
  Widget build(BuildContext context) {
    final id = context.locale.languageCode == 'id';
    final expires = summary.expiresAt;
    final days = expires == null
        ? 0
        : expires.difference(DateTime.now()).inDays.clamp(0, 9999);
    final center = align == CrossAxisAlignment.center;
    final textAlign = center ? TextAlign.center : TextAlign.start;
    final style = MyBossTextStyles.titleBig1.copyWith(
      fontSize: size,
      height: 1.1,
      color: MyBossColors.primary,
    );

    return Column(
      crossAxisAlignment: align,
      mainAxisSize: MainAxisSize.min,
      children: [
        ShaderMask(
          blendMode: BlendMode.dstIn,
          shaderCallback: (rect) => LinearGradient(
            colors: [
              Colors.white,
              Colors.white,
              Colors.white.withValues(alpha: 0.15),
            ],
            stops: const [0, 0.6, 1],
          ).createShader(rect),
          child: Text(
            LocaleKeys.points_balance.tr(
              args: [PointsFormat.thousands(summary.balance)],
            ),
            textAlign: textAlign,
            style: style,
          ),
        ),
        if (summary.expiringPoints > 0 && expires != null) ...[
          const SizedBox(height: 4),
          _expiryLine(days, textAlign),
          const SizedBox(height: 4),
          Text(
            PointsFormat.dateLong(expires, id: id),
            textAlign: textAlign,
            style: MyBossTextStyles.caption.copyWith(
              color: MyBossColors.onSurfaceVariant.withValues(alpha: 0.8),
            ),
          ),
        ],
      ],
    );
  }
}
