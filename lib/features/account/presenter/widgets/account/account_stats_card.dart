part of '../widgets.dart';

/// Points + vouchers summary (Figma `Account Overview`).
class AccountStatsCard extends StatelessWidget {
  const AccountStatsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return _AccountCard(
      child: Column(
        children: [
          BlocBuilder<PointsCubit, PointsState>(
            builder: (context, state) => _AccountRow(
              icon: PointsBadge(
                size: 32,
                color: MyBossColors.onSurface,
                holeColor: MyBossColors.surface,
              ),
              label: LocaleKeys.points_balance.tr(
                args: [PointsFormat.thousands(state.summary.balance)],
              ),
              labelStyle: MyBossTextStyles.title,
              onTap: () => AccountFlows.goToPointsPage(context),
            ),
          ),
          Divider(height: 1, thickness: 0.5, color: MyBossColors.outline),
          BlocBuilder<AccountBloc, AccountState>(
            builder: (context, state) {
              final vouchers = state.vouchers.data?.toList() ?? [];

              return _AccountRow(
                icon: Icon(
                  Icons.confirmation_number,
                  size: 32,
                  color: MyBossColors.danger,
                ),
                label: LocaleKeys.akun_voucher_count.tr(
                  args: [vouchers.length.toString()],
                ),
                labelStyle: MyBossTextStyles.title,
                onTap: () => AccountFlows.goToVoucherPage(context),
              );
            },
          ),
        ],
      ),
    );
  }
}

/// Log Out / Delete my account rows (danger colored, with a chevron).
class AccountDangerRow extends StatelessWidget {
  const AccountDangerRow({
    super.key,
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return _AccountCard(
      child: _AccountRow(
        icon: Icon(icon, size: 28, color: MyBossColors.danger),
        label: label,
        labelStyle: MyBossTextStyles.subtitleBig2.copyWith(
          color: MyBossColors.danger,
        ),
        showChevron: true,
        onTap: onTap,
      ),
    );
  }
}

class _AccountCard extends StatelessWidget {
  const _AccountCard({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: MyBossColors.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: MyBossColors.outline.withValues(alpha: 0.6)),
      ),
      child: child,
    );
  }
}

class _AccountRow extends StatelessWidget {
  const _AccountRow({
    required this.icon,
    required this.label,
    required this.labelStyle,
    required this.onTap,
    this.showChevron = false,
  });

  final Widget icon;
  final String label;
  final TextStyle labelStyle;
  final VoidCallback onTap;
  final bool showChevron;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 64,
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Row(
          children: [
            SizedBox(width: 32, height: 32, child: Center(child: icon)),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                label,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: labelStyle.copyWith(
                  color: labelStyle.color ?? MyBossColors.onSurface,
                ),
              ),
            ),
            if (showChevron)
              Icon(
                Icons.chevron_right,
                size: 24,
                color: MyBossColors.onSurfaceVariant,
              ),
          ],
        ),
      ),
    );
  }
}
