part of '../widgets.dart';

/// Status copy is framed as an automatic process with a fixed deadline and a
/// legal reason - never as something waiting for approval (Apple rejects
/// that under App Store Guideline 5.1.1(v)).
TextSpan _deletionDeadlineText() {
  final scheduledAt = DeleteAccountLocalState.scheduledAtFormatted;
  if (scheduledAt.isEmpty) {
    return TextSpan(text: LocaleKeys.akun_delete_status_desc_no_date.tr());
  }

  final text = LocaleKeys.akun_delete_status_desc.tr(args: [scheduledAt]);
  final i = text.indexOf(scheduledAt);
  if (i == -1) return TextSpan(text: text);

  return TextSpan(
    children: [
      TextSpan(text: text.substring(0, i)),
      TextSpan(
        text: scheduledAt,
        style: TextStyle(
          fontWeight: FontWeight.w700,
          color: MyBossColors.onSurface,
        ),
      ),
      TextSpan(text: text.substring(i + scheduledAt.length)),
    ],
  );
}

/// Figma `Deletion Request Status`: red badge, title, countdown, deadline
/// and Cancel request. Shown as a sheet (phones) / dialog (wider).
class DeleteAccountStatusSheet extends StatelessWidget {
  const DeleteAccountStatusSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final countdown = DeleteAccountLocalState.countdownLabel;

    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        24,
        Responsive.isMobile(context) ? 16 : 56,
        24,
        24,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 92,
            height: 92,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFFF2552C), Color(0xFFD9271C)],
              ),
            ),
            child: const Icon(
              Icons.person_off_outlined,
              size: 52,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            LocaleKeys.akun_delete_status_title.tr(),
            textAlign: TextAlign.center,
            style: MyBossTextStyles.title.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          if (countdown != null) ...[
            const SizedBox(height: 12),
            DeleteAccountCountdownChip(label: countdown),
          ],
          const SizedBox(height: 12),
          Text.rich(
            _deletionDeadlineText(),
            textAlign: TextAlign.center,
            style: MyBossTextStyles.bodyBig2.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          const SizedBox(height: 32),
          MyBossButton(
            label: LocaleKeys.akun_delete_status_cancel_button.tr(),
            role: MyBossButtonRole.secondary,
            size: MyBossButtonSize.large,
            pill: true,
            expand: true,
            leading: Icon(Icons.close, color: MyBossColors.onSurface),
            onPressed: () async {
              final cancelled = await AccountFlows.cancelDeleteAccount(context);
              if (cancelled && context.mounted) context.pop();
            },
          ),
        ],
      ),
    );
  }
}

/// Figma `Account — Deletion Pending`: card under "Delete my account" while
/// a request is pending - status, countdown, what is left (points,
/// vouchers) and Cancel request.
class DeleteAccountPendingPanel extends StatelessWidget {
  const DeleteAccountPendingPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final countdown = DeleteAccountLocalState.countdownLabel;
    final danger = MyBossColors.danger;
    final points = context.watch<PointsCubit>().state.summary.balance;
    final vouchers =
        context.watch<AccountBloc>().state.vouchers.data?.length ?? 0;

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 32, 24, 32),
      decoration: BoxDecoration(
        // Same container as the Promo coupons (dark: Figma red-brown).
        color: MyBossColors.dangerContainer,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          Text(
            LocaleKeys.akun_delete_status_title.tr(),
            textAlign: TextAlign.center,
            style: MyBossTextStyles.title.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          if (countdown != null) ...[
            const SizedBox(height: 12),
            DeleteAccountCountdownChip(label: countdown),
          ],
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            decoration: BoxDecoration(
              color: MyBossColors.surface,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: MyBossColors.outline),
            ),
            child: Column(
              spacing: 12,
              children: [
                Text(
                  LocaleKeys.akun_delete_still_have.tr(),
                  style: MyBossTextStyles.body.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
                _PendingRow(
                  icon: PointsBadge(
                    size: 24,
                    color: MyBossColors.onSurface,
                    holeColor: MyBossColors.surface,
                  ),
                  label: LocaleKeys.points_balance.tr(
                    args: [PointsFormat.thousands(points)],
                  ),
                ),
                _PendingRow(
                  icon: Icon(Icons.confirmation_number, color: danger),
                  label: LocaleKeys.akun_voucher_count.tr(args: ['$vouchers']),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          OutlinedButton.icon(
            onPressed: () => AccountFlows.cancelDeleteAccount(context),
            icon: Icon(Icons.close, color: danger),
            label: Text(
              LocaleKeys.akun_delete_status_cancel_button.tr(),
              style: MyBossTextStyles.bodyBig2.copyWith(color: danger),
            ),
            style: OutlinedButton.styleFrom(
              shape: const StadiumBorder(),
              side: BorderSide(color: danger),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            ),
          ),
        ],
      ),
    );
  }
}

class _PendingRow extends StatelessWidget {
  const _PendingRow({required this.icon, required this.label});

  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 12,
      children: [
        SizedBox(width: 24, height: 24, child: Center(child: icon)),
        Text(
          label,
          style: MyBossTextStyles.title.copyWith(
            color: MyBossColors.onSurface,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
