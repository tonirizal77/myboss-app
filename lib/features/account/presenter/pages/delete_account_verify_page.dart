part of 'pages.dart';

/// Delete account step 2 (ported from hayo-app): reason + OTP on one page.
/// The OTP was already sent before opening this page
/// ([AccountFlows.goToDeleteAccountVerifyPage]); this page only loads the
/// reasons.
class DeleteAccountVerifyPage extends StatefulWidget {
  const DeleteAccountVerifyPage({super.key});

  @override
  State<DeleteAccountVerifyPage> createState() =>
      _DeleteAccountVerifyPageState();
}

class _DeleteAccountVerifyPageState extends State<DeleteAccountVerifyPage> {
  /// Same as `length: 4` passed to FormInputOtp inside [BodyFormToken].
  static const _otpLength = 4;

  ReasonModel? _selectedReason;
  String _otp = "";

  bool get _canSubmit => _otp.length == _otpLength && _selectedReason != null;

  @override
  void initState() {
    super.initState();
    AccountFlows.getReasons(context);
  }

  void _onCancel(BuildContext context) {
    getIt<VerifyBloc>().add(VerifyEvent.reset());
    context.pop();
  }

  Future<void> _onSubmit(BuildContext context) async {
    FocusManager.instance.primaryFocus?.unfocus();

    final reason = _selectedReason;
    if (reason == null) return;

    await VerifyFlows.updateDeleteAccountReason(context, reason);

    if (!context.mounted) return;

    await VerifyFlows.sendOtpCode(context, _otp);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      appBarCustom: MyBossHeader(
        title: LocaleKeys.akun_delete_reason_page_title.tr(),
        onClose: () => _onCancel(context),
      ),
      backgroundColor: MyBossColors.surfaceContainerLow,
      colorPage: MyBossColors.surfaceContainerLow,
      useSafeArea: true,
      useScrollView: true,
      maxWidth: 640,
      body: BlocListener<VerifyBloc, VerifyState>(
        listenWhen: (previous, current) =>
            current.action == ActionVerify.sendOtp,
        listener: DeleteAccountFlowsListener.sendOtpCodeListen,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _otpCard(context),
              const SizedBox(height: 24),
              Text(
                LocaleKeys.akun_delete_reason_section_title.tr(),
                style: MyBossTextStyles.subtitleBig2.copyWith(
                  color: MyBossColors.onSurface,
                ),
              ),
              const SizedBox(height: 16),
              BlocBuilder<AccountBloc, AccountState>(
                buildWhen: (a, b) => a.reasons != b.reasons,
                builder: (context, state) => Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    for (final reason in state.reasons.data ?? <ReasonModel>[])
                      _ReasonChip(
                        label: reason.label,
                        selected: _selectedReason?.reasonId == reason.reasonId,
                        onTap: () => setState(() => _selectedReason = reason),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNav: Container(
        color: MyBossColors.surface,
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          top: false,
          child: MyBossButton(
            label: LocaleKeys.akun_delete_otp_submit_button.tr(),
            role: MyBossButtonRole.danger,
            size: MyBossButtonSize.large,
            expand: true,
            onPressed: _canSubmit ? () => _onSubmit(context) : null,
          ),
        ),
      ),
    );
  }

  Widget _otpCard(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 24, 16, 8),
      decoration: BoxDecoration(
        color: MyBossColors.surface,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Text(
            LocaleKeys.verify_title.tr(),
            style: MyBossTextStyles.title.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          const SizedBox(height: 12),
          BlocBuilder<VerifyBloc, VerifyState>(
            buildWhen: (a, b) => a.verifyData.phone != b.verifyData.phone,
            builder: (context, state) {
              final phone = getIt<GeneralHelper>().maskPhone(
                state.verifyData.phone,
                isMaskContact: AppSetting.isMaskContact.value,
              );

              return Text.rich(
                TextSpan(
                  style: MyBossTextStyles.bodyBig2.copyWith(
                    color: MyBossColors.onSurfaceVariant,
                  ),
                  children: [
                    TextSpan(text: LocaleKeys.verify_otp_sent.tr()),
                    TextSpan(
                      text: phone,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: MyBossColors.onSurface,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              );
            },
          ),
          BodyFormToken(
            needResendOtp: false,
            callback: (otp) => setState(() => _otp = otp),
          ),
        ],
      ),
    );
  }
}

class _ReasonChip extends StatelessWidget {
  const _ReasonChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final primary = MyBossColors.primary;

    return Material(
      color: selected
          ? Color.alphaBlend(
              primary.withValues(alpha: 0.2),
              MyBossColors.surface,
            )
          : MyBossColors.surfaceContainer,
      shape: StadiumBorder(
        side: BorderSide(color: selected ? primary : Colors.transparent),
      ),
      child: InkWell(
        customBorder: const StadiumBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            spacing: 6,
            children: [
              if (selected) Icon(Icons.check_rounded, size: 16, color: primary),
              Text(
                label,
                style: MyBossTextStyles.body.copyWith(
                  color: selected ? primary : MyBossColors.onSurface,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
