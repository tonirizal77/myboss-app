part of '../widgets.dart';

/// Delete-account confirmation (sheet on phones, dialog on wider windows).
/// Which flow it shows comes from [AppSetting.deleteAccountMode]:
/// - [DeleteAccountMode.direct] / [DeleteAccountMode.pending]: in-app
///   deletion (reason + OTP when [AppSetting.needConfirmOTP], see
///   [AccountFlows.confirmDeleteAccount]); they only differ after the OTP.
/// - [DeleteAccountMode.emailConfirmation]: instructions to email support.
class DeleteAccountSheetContent extends StatelessWidget {
  const DeleteAccountSheetContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(
        24,
        Responsive.isMobile(context) ? 16 : 56,
        24,
        24,
      ),
      child: switch (AppSetting.deleteAccountMode) {
        DeleteAccountMode.direct ||
        DeleteAccountMode.pending => const _InAppDeleteAccount(),
        DeleteAccountMode.emailConfirmation =>
          const _EmailConfirmationDeleteAccount(),
      },
    );
  }
}

/// Icon, title and warning shared by both flows.
class _DeleteAccountHeader extends StatelessWidget {
  const _DeleteAccountHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 72,
          height: 72,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: MyBossColors.danger.withValues(alpha: 0.15),
          ),
          child: Icon(
            Icons.person_remove_outlined,
            size: 36,
            color: MyBossColors.danger,
          ),
        ),
        const SizedBox(height: 16),
        Text(
          LocaleKeys.akun_delete_confirm_title.tr(),
          textAlign: TextAlign.center,
          style: MyBossTextStyles.title.copyWith(color: MyBossColors.onSurface),
        ),
        const SizedBox(height: 8),
        Text(
          LocaleKeys.akun_delete_confirm_desc.tr(),
          textAlign: TextAlign.center,
          style: MyBossTextStyles.body.copyWith(
            color: MyBossColors.onSurfaceVariant,
          ),
        ),
      ],
    );
  }
}

/// [DeleteAccountMode.direct] / [DeleteAccountMode.pending]: warns about
/// what will be lost (points balance, vouchers) before going on.
class _InAppDeleteAccount extends StatelessWidget {
  const _InAppDeleteAccount();

  @override
  Widget build(BuildContext context) {
    final points = context.read<PointsCubit>().state.summary.balance;
    final vouchers =
        context.read<AccountBloc>().state.vouchers.data?.length ?? 0;
    final hasBalance = points > 0 || vouchers > 0;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _DeleteAccountHeader(),
        if (hasBalance) ...[
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: MyBossColors.danger.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              spacing: 12,
              children: [
                Text(
                  LocaleKeys.akun_delete_still_have.tr(),
                  style: MyBossTextStyles.subtitleBig2.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
                if (points > 0)
                  _BalanceRow(
                    icon: PointsBadge(
                      size: 24,
                      color: MyBossColors.primary,
                      holeColor: MyBossColors.surface,
                    ),
                    label: LocaleKeys.points_balance.tr(
                      args: [PointsFormat.thousands(points)],
                    ),
                  ),
                if (vouchers > 0)
                  _BalanceRow(
                    icon: Icon(
                      Icons.confirmation_number_outlined,
                      color: MyBossColors.danger,
                    ),
                    label: LocaleKeys.akun_delete_active_voucher_desc.tr(
                      args: ['$vouchers'],
                    ),
                  ),
              ],
            ),
          ),
        ],
        const SizedBox(height: 24),
        MyBossButton(
          label: LocaleKeys.akun_delete_my_account.tr(),
          role: MyBossButtonRole.danger,
          size: MyBossButtonSize.large,
          expand: true,
          onPressed: () => AccountFlows.confirmDeleteAccount(context),
        ),
        const SizedBox(height: 8),
        MyBossButton(
          label: LocaleKeys.button_back.tr(),
          style: MyBossButtonStyle.text,
          role: MyBossButtonRole.secondary,
          expand: true,
          onPressed: () => context.pop(),
        ),
      ],
    );
  }
}

class _BalanceRow extends StatelessWidget {
  const _BalanceRow({required this.icon, required this.label});

  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: MyBossColors.surface,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        spacing: 12,
        children: [
          SizedBox(width: 24, height: 24, child: Center(child: icon)),
          Expanded(
            child: Text(
              label,
              style: MyBossTextStyles.bodyBig2.copyWith(
                color: MyBossColors.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// [DeleteAccountMode.emailConfirmation]: instructions to email support.
///
/// WARNING: Apple rejects this flow under App Store Guideline 5.1.1(v) for
/// apps outside highly-regulated industries.
class _EmailConfirmationDeleteAccount extends StatefulWidget {
  const _EmailConfirmationDeleteAccount();

  @override
  State<_EmailConfirmationDeleteAccount> createState() =>
      _EmailConfirmationDeleteAccountState();
}

class _EmailConfirmationDeleteAccountState
    extends State<_EmailConfirmationDeleteAccount> {
  // TODO(content): MyBoss support email (still the hayo address).
  static const String _supportEmail = "weare@hayo.co.id";

  /// Optimistic/unverified - see [EmailDeleteRequestLocalState].
  bool _hasSentRequest = false;

  @override
  void initState() {
    super.initState();
    _hasSentRequest = EmailDeleteRequestLocalState.hasSentRequest;
  }

  static TextSpan _withBold(String text, String bold, TextStyle style) {
    final i = text.indexOf(bold);
    if (bold.isEmpty || i == -1) return TextSpan(text: text, style: style);

    return TextSpan(
      style: style,
      children: [
        TextSpan(text: text.substring(0, i)),
        TextSpan(
          text: bold,
          style: const TextStyle(fontWeight: FontWeight.w700),
        ),
        TextSpan(text: text.substring(i + bold.length)),
      ],
    );
  }

  Future<void> _onSendRequest(BuildContext context) async {
    final profile = AccountFlows.profile;

    final launched = await OpenLinksHelper.launchEmail(
      context,
      email: _supportEmail,
      subject: LocaleKeys.akun_delete_confirm_email_subject.tr(
        args: [profile.email],
      ),
      body: LocaleKeys.akun_delete_confirm_email_body.tr(
        namedArgs: {
          'name': profile.name,
          'email': profile.email,
          'phone': profile.phone,
        },
      ),
    );

    if (!launched) return;

    await EmailDeleteRequestLocalState.markSent();

    if (!context.mounted) return;

    setState(() => _hasSentRequest = true);
    MyBossToast.success(
      context,
      LocaleKeys.akun_delete_confirm_email_sent_toast.tr(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final userEmail = AccountFlows.profile.email;
    final bodyStyle = MyBossTextStyles.body.copyWith(
      color: MyBossColors.onSurface,
    );

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const _DeleteAccountHeader(),
        const SizedBox(height: 20),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: MyBossColors.danger.withValues(alpha: 0.12),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text.rich(
                _withBold(
                  LocaleKeys.akun_delete_confirm_info1.tr(
                    args: [_supportEmail],
                  ),
                  _supportEmail,
                  bodyStyle,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),
              Text.rich(
                _withBold(
                  LocaleKeys.akun_delete_confirm_info2.tr(args: [userEmail]),
                  userEmail,
                  bodyStyle,
                ),
                textAlign: TextAlign.center,
              ),
              if (_hasSentRequest) ...[
                const SizedBox(height: 12),
                Text(
                  LocaleKeys.akun_delete_confirm_email_sent_desc.tr(
                    args: [EmailDeleteRequestLocalState.sentAtFormatted],
                  ),
                  textAlign: TextAlign.center,
                  style: bodyStyle.copyWith(
                    color: MyBossColors.onSurfaceVariant,
                  ),
                ),
              ],
            ],
          ),
        ),
        const SizedBox(height: 24),
        MyBossButton(
          label: _hasSentRequest
              ? LocaleKeys.akun_delete_confirm_email_resend_button.tr()
              : LocaleKeys.akun_delete_confirm_email_button.tr(),
          role: MyBossButtonRole.danger,
          size: MyBossButtonSize.large,
          expand: true,
          leading: Icon(
            Icons.mail_outline_rounded,
            color: MyBossColors.onDanger,
          ),
          onPressed: () => _onSendRequest(context),
        ),
      ],
    );
  }
}

/// Red pill with a countdown label, e.g. "29d 23h left".
class DeleteAccountCountdownChip extends StatelessWidget {
  const DeleteAccountCountdownChip({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 6),
      decoration: BoxDecoration(
        color: MyBossColors.danger,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        spacing: 6,
        children: [
          Icon(
            Icons.access_time_rounded,
            size: 16,
            color: MyBossColors.onDanger,
          ),
          Flexible(
            child: Text(
              label,
              style: MyBossTextStyles.subtitleSmall.copyWith(
                color: MyBossColors.onDanger,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// "Your account deletion request is being processed" - shown on Home and
/// instead of the member barcode while [DeleteAccountLocalState.isPending].
/// Tapping it opens [DeleteAccountStatusSheet].
class DeleteAccountPendingCard extends StatelessWidget {
  const DeleteAccountPendingCard({
    super.key,
    this.closeSheetBeforeNavigate = false,
    this.margin = const EdgeInsets.fromLTRB(16, 16, 16, 0),
  });

  /// `true` inside a sheet/dialog: close it before opening the status page.
  final bool closeSheetBeforeNavigate;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    final countdown = DeleteAccountLocalState.countdownLabel;

    return Padding(
      padding: margin,
      child: Material(
        color: MyBossColors.danger.withValues(alpha: 0.15),
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: () {
            if (closeSheetBeforeNavigate) context.pop();
            AccountFlows.showDeleteAccountStatus(context);
          },
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              spacing: 12,
              children: [
                Icon(Icons.hourglass_top_rounded, color: MyBossColors.danger),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    spacing: 8,
                    children: [
                      Text(
                        LocaleKeys.akun_delete_pending_banner.tr(),
                        style: MyBossTextStyles.subtitleSmall.copyWith(
                          color: MyBossColors.onSurface,
                        ),
                      ),
                      if (countdown != null)
                        DeleteAccountCountdownChip(label: countdown),
                    ],
                  ),
                ),
                Icon(Icons.chevron_right, color: MyBossColors.onSurface),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
