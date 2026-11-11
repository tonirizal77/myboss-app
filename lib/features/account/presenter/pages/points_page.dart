part of 'pages.dart';

/// Points page (Figma `Points`): balance banner, history and a redeem action.
class PointsPage extends StatefulWidget {
  const PointsPage({super.key});

  @override
  State<PointsPage> createState() => _PointsPageState();
}

class _PointsPageState extends State<PointsPage> {
  @override
  void initState() {
    super.initState();
    _refresh();
  }

  /// Balance, expiring points and history from /profile/loyalty-points;
  /// /profile/info refreshes the balance shown elsewhere (and is the
  /// fallback when loyalty-points sends no balance).
  Future<void> _refresh() async {
    await Future.wait([
      context.read<PointsCubit>().load(),
      AccountFlows.getProfile(context),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final id = context.locale.languageCode == 'id';
    // Promo tab (points rewards).
    void redeem() => MainPageFlow.onChangeTab(context, 2);

    return ResponsivePage(
      // AppBarCustom.rightButton shows on tablet / desktop only: the redeem
      // action sits in the header there, at the bottom on phones.
      appBarCustom: AppBarCustom(
        title: LocaleKeys.points_title.tr(),
        styleTitle: MyBossTextStyles.titleBig2.copyWith(
          color: MyBossColors.onSurface,
        ),
        color: MyBossColors.surface,
        isBlur: false,
        iconColor: MyBossColors.onSurface,
        onClose: () => context.pop(),
        // Phones keep the bottom button; the header one is tablet / desktop.
        overRightButton: false,
        rightButton: MyBossButton(
          key: const ValueKey('points_redeem'),
          label: LocaleKeys.points_redeem_options.tr(),
          onPressed: redeem,
        ),
      ),
      backgroundColor: MyBossColors.surfaceContainerLow,
      alignment: Alignment.topCenter,
      useSafeArea: true,
      // AppBarCustom height: 56 + 8 top margin on tablet / desktop; phones
      // only the 56 bar (the status bar is handled by useSafeArea).
      top: Responsive.isMobile(context) ? 56 : 64,     
      body: BlocBuilder<PointsCubit, PointsState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Balance + expiring points from /profile/loyalty-points,
              // /profile/info when that payload has no balance.
              BlocBuilder<ProfileBloc, ProfileState>(
                buildWhen: (a, b) =>
                    a.profile.pointsSummary != b.profile.pointsSummary,
                builder: (context, profile) => _Banner(
                  summary: state.summary.hasBalance
                      ? state.summary
                      : profile.profile.pointsSummary,
                  id: id,
                ),
              ),
              Flexible(child: _history(context, state, id)),
            ],
          );
        },
      ),
      // Phone: full-width redeem button at the bottom (Figma). Tablet /
      // desktop: in the header instead (ResponsivePage shows bottomNav on
      // phones only).
      bottomNav: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: MyBossButton(
            key: const ValueKey('points_redeem'),
            label: LocaleKeys.points_redeem_options.tr(),
            size: MyBossButtonSize.large,
            expand: true,
            onPressed: redeem,
          ),
        ),
      ),
    );
  }

  /// History list: phone = one column with separators, tablet / desktop =
  /// two columns. Wrap view: the column width follows the real parent width.
  Widget _history(BuildContext context, PointsState state, bool id) {
    final isMobile = Responsive.isMobile(context);

    return ResponsiveGridOrWrap<PointEntry>(
      tipe: TipeView.wrapview,
      mobile: 1,
      tablet: 2,
      desktop: 2,
      useScrollView: true,
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      paddingBody: EdgeInsets.zero,
      isLoading: state.status == Status.loading && state.history.isEmpty,
      isFailure: state.status == Status.failed && state.history.isEmpty,
      onRetry: _refresh,
      onRefresh: _refresh,
      listData: state.history,
      showEmptyData: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Text(
          LocaleKeys.points_empty.tr(),
          key: const ValueKey('points_empty'),
          textAlign: TextAlign.center,
          style: MyBossTextStyles.body.copyWith(
            color: MyBossColors.onSurfaceVariant,
          ),
        ),
      ),
      isSeperator: isMobile,
      colorSeperator: MyBossColors.outline,
      spacing: 16,
      runSpacing: isMobile ? 0 : 12,
      child: (entry) => _HistoryTile(
        entry: entry,
        id: id,
        // Tablet / desktop: a card per row, so the two columns read apart.
        card: !isMobile,
        onTap: () => PointDetailSheet.show(context, entry),
      ),
    );
  }
}

class _HistoryTile extends StatelessWidget {
  const _HistoryTile({
    required this.entry,
    required this.id,
    required this.onTap,
    this.card = false,
  });

  final PointEntry entry;
  final bool id;
  final VoidCallback onTap;

  /// Rounded card with inner padding (tablet / desktop grid).
  final bool card;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: card ? MyBossColors.surfaceContainer : Colors.transparent,
      borderRadius: BorderRadius.circular(card ? 12 : 0),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12,
            horizontal: card ? 16 : 0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      PointsFormat.label(entry),
                      style: MyBossTextStyles.subtitleBig2.copyWith(
                        color: MyBossColors.onSurface,
                      ),
                    ),
                    Text(
                      PointsFormat.date(entry.date, id: id),
                      style: MyBossTextStyles.caption.copyWith(
                        color: MyBossColors.onSurfaceVariant,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    (entry.isEarned
                            ? LocaleKeys.points_earned_value
                            : LocaleKeys.points_redeemed_value)
                        .tr(args: ['${entry.points.abs()}']),
                    style: MyBossTextStyles.subtitleBig2.copyWith(
                      color: entry.isEarned
                          ? MyBossColors.success
                          : MyBossColors.danger,
                    ),
                  ),
                  // Points not from an order (bonus) have no amount.
                  if (entry.amount > 0)
                    Text(
                      PointsFormat.rupiah(entry.amount),
                      style: MyBossTextStyles.caption.copyWith(
                        color: MyBossColors.onSurfaceVariant,
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Banner extends StatelessWidget {
  const _Banner({required this.summary, required this.id});

  final PointsSummary summary;
  final bool id;

  @override
  Widget build(BuildContext context) {
    final onPrimary = MyBossColors.onPrimary;
    final expires = summary.expiresAt;
    final days = expires == null
        ? 0
        : expires.difference(DateTime.now()).inDays.clamp(0, 9999);

    return Container(
      width: double.infinity,
      color: MyBossColors.primary,
      padding: const EdgeInsets.fromLTRB(24, 24, 24, 24),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PointsBadge(
            size: 56,
            color: onPrimary,
            holeColor: MyBossColors.primary,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  LocaleKeys.points_balance.tr(
                    args: [PointsFormat.thousands(summary.balance)],
                  ),
                  style: MyBossTextStyles.titleBig1.copyWith(color: onPrimary),
                ),
                if (summary.expiringPoints > 0 && expires != null) ...[
                  Text(
                    LocaleKeys.points_expires_in.tr(
                      args: ['${summary.expiringPoints}', '$days'],
                    ),
                    style: MyBossTextStyles.bodyMedium.copyWith(
                      color: onPrimary,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    PointsFormat.dateLong(expires, id: id),
                    style: MyBossTextStyles.caption.copyWith(
                      color: onPrimary.withValues(alpha: 0.8),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
