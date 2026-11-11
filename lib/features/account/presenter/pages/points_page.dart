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

  /// History from /profile/loyalty-points; balance from /profile/info.
  Future<void> _refresh() async {
    await Future.wait([
      context.read<PointsCubit>().load(),
      AccountFlows.getProfile(context),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    final id = context.locale.languageCode == 'id';

    return ResponsivePage(
      appBarCustom: MyBossHeader(
        title: LocaleKeys.points_title.tr(),
        onClose: () => context.pop(),
      ),
      backgroundColor: MyBossColors.surfaceContainerLow,
      alignment: Alignment.topCenter,
      useSafeArea: true,
      // Header height only: the status bar is already handled by useSafeArea.
      top: 56,
      body: BlocBuilder<PointsCubit, PointsState>(
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Balance + expiring points from /profile/info (same as Home).
              BlocBuilder<ProfileBloc, ProfileState>(
                buildWhen: (a, b) =>
                    a.profile.pointsSummary != b.profile.pointsSummary,
                builder: (context, profile) =>
                    _Banner(summary: profile.profile.pointsSummary, id: id),
              ),
              Flexible(child: _history(context, state, id)),
            ],
          );
        },
      ),
      bottomNav: SafeArea(
        top: false,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: MyBossButton(
            label: LocaleKeys.points_redeem_options.tr(),
            size: MyBossButtonSize.large,
            expand: true,
            // Promo tab (points rewards)
            onPressed: () => MainPageFlow.onChangeTab(context, 2),
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
      runSpacing: isMobile ? 0 : 8,
      child: (entry) => _HistoryTile(
        entry: entry,
        id: id,
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
  });

  final PointEntry entry;
  final bool id;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
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
