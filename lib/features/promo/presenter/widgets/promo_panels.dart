part of 'widgets.dart';

/// "Points" panel of the All tab (signed in only - guests have no loyalty
/// points): balance, the first four rewards and See more.
class PromoPointsPanel extends StatelessWidget {
  const PromoPointsPanel({
    super.key,
    required this.rewards,
    this.failed = false,
  });

  static const int preview = 4;

  final List<RewardPreview> rewards;

  /// `promoPointList` failed while vouchers loaded: inline retry.
  final bool failed;

  @override
  Widget build(BuildContext context) {
    return MyBossGlowPanel(
      color: MyBossColors.primary,
      background: MyBossColors.surfaceContainerLowest,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          children: [
            BlocBuilder<PointsCubit, PointsState>(
              buildWhen: (a, b) => a.summary != b.summary,
              builder: (context, points) => PromoHeading(
                title: LocaleKeys.promo_points_title.tr(),
                subtitle: LocaleKeys.promo_points_available.tr(
                  args: [PointsFormat.thousands(points.summary.balance)],
                ),
              ),
            ),
            const SizedBox(height: 24),
            if (failed)
              PromoLoadError(
                compact: true,
                onRetry: context.read<PromoCubit>().retry,
              )
            else ...[
              /// Grid Product
              RewardGrid(
                rewards: rewards.take(preview).toList(),
                maxColumns: 2,
              ),
              if (rewards.length > preview) ...[
                const SizedBox(height: 24),
                PromoSeeMore(
                  onPressed: () =>
                      context.read<PromoCubit>().selectTab(PromoTab.points),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }
}

/// "Voucher" panel of the All tab: count (or the guest pitch), the first
/// four vouchers and See more.
class PromoVoucherPanel extends StatelessWidget {
  const PromoVoucherPanel({
    super.key,
    required this.vouchers,
    required this.isLoggedIn,
    this.failed = false,
  });

  static const int preview = 4;

  final List<Voucher> vouchers;
  final bool isLoggedIn;

  /// `promoVoucherList` failed while rewards loaded: inline retry.
  final bool failed;

  @override
  Widget build(BuildContext context) {
    return MyBossGlowPanel(
      color: MyBossColors.danger,
      background: MyBossColors.surfaceContainerLowest,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
        child: Column(
          children: [
            PromoHeading(
              title: LocaleKeys.promo_voucher_title.tr(),
              subtitle: isLoggedIn
                  ? LocaleKeys.promo_voucher_count.tr(
                      args: ['${vouchers.length}'],
                    )
                  : LocaleKeys.promo_voucher_guest.tr(),
            ),
            const SizedBox(height: 24),
            if (failed)
              PromoLoadError(
                compact: true,
                onRetry: context.read<PromoCubit>().retry,
              )
            else ...[
              for (final v in vouchers.take(preview))
                Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: VoucherTicket(voucher: v),
                ),
              if (vouchers.length > preview) ...[
                const SizedBox(height: 12),
                PromoSeeMore(
                  onPressed: () =>
                      context.read<PromoCubit>().selectTab(PromoTab.voucher),
                ),
              ],
            ],
          ],
        ),
      ),
    );
  }
}

/// Promo request failed: message + retry. Full size for the whole page,
/// [compact] inside a panel when only that section failed.
class PromoLoadError extends StatelessWidget {
  const PromoLoadError({
    super.key,
    required this.onRetry,
    this.compact = false,
  });

  final VoidCallback onRetry;
  final bool compact;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: compact ? 8 : 48),
      child: Column(
        children: [
          Icon(
            Icons.cloud_off_outlined,
            size: compact ? 40 : 64,
            color: MyBossColors.onSurfaceVariant,
          ),
          const SizedBox(height: 16),
          Text(
            LocaleKeys.promo_load_failed.tr(),
            textAlign: TextAlign.center,
            style: MyBossTextStyles.title.copyWith(
              color: MyBossColors.onSurfaceVariant,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(height: 16),
          MyBossButton(
            key: const ValueKey('promo_retry'),
            label: LocaleKeys.promo_retry.tr(),
            role: MyBossButtonRole.secondary,
            onPressed: onRetry,
          ),
        ],
      ),
    );
  }
}

/// Reward tiles in a grid: 2 columns on phones, more on wider windows
/// (capped by [maxColumns]).
class RewardGrid extends StatelessWidget {
  const RewardGrid({
    super.key,
    required this.rewards,
    this.maxColumns = 4,
    this.outlined = false,
  });

  final List<RewardPreview> rewards;
  final int maxColumns;
  final bool outlined;

  @override
  Widget build(BuildContext context) {
    final cols = Responsive.isMobile(context)
        ? 2
        : Responsive.isTablet(context)
        ? 3
        : 4;

    return ResponsiveGridOrWrap<RewardPreview>(
      tipe: TipeView.gridview,
      column: cols.clamp(1, maxColumns).toDouble(),
      maxHeight: 172,
      spacing: 12,
      runSpacing: 12,
      padding: EdgeInsets.zero,
      paddingBody: EdgeInsets.zero,
      top: 0,
      // The page scrolls; the grid must not grab the drag.
      physics: const NeverScrollableScrollPhysics(),
      isSeperator: false,
      listData: rewards,
      child: (r) => RewardCard(reward: r, outlined: outlined),
    );
  }
}
