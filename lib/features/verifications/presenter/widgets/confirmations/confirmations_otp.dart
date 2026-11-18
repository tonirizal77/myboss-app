part of '../widgets.dart';

class ConfirmationsOtp extends StatefulWidget {
  const ConfirmationsOtp({super.key});

  @override
  State<ConfirmationsOtp> createState() => _ConfirmationsOtpState();
}

class _ConfirmationsOtpState extends State<ConfirmationsOtp> {
  String _tokenOtp = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _contentConfirm(),
        const SizedBox(height: 16),

        // Form Input Token
        BodyFormToken(callback: (otp) => setState(() => _tokenOtp = otp)),

        /// Button Verifikasi
        ButtonsWidget(
          isWide: true,
          onTap: _onConfirmOtp,
          child: Text(
            LocaleKeys.verify_confirm_btn.tr(),
            style: MyBossTextStyles.button.copyWith(
              color: AppTheme.surface(context),
            ),
          ),
        ),
      ],
    );
  }

  Widget _contentConfirm() {
    return BlocBuilder<VerifyBloc, VerifyState>(
      builder: (context, state) {
        final _data = state.verifyData;
        final _label = _data.maskedOtpTarget;

        return RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: MyBossTextStyles.bodyBig1.copyWith(
              color: AppTheme.onSurface(context),
            ),
            children: [
              TextSpan(
                text: _data.isEmailChannel
                    ? LocaleKeys.verify_otp_sent_email.tr()
                    : LocaleKeys.verify_otp_sent.tr(),
              ),
              TextSpan(
                text: _label,
                style: MyBossTextStyles.bodyBig1.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppTheme.onSurface(context),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _onConfirmOtp() async {
    FocusManager.instance.primaryFocus?.unfocus();

    /// Incomplete code (e.g. digits deleted after typing it all): do not send.
    if (_tokenOtp.length != 4) return;

    // await UserFlows.confirmOtp(context, phone: _phone, otp: _tokenOtp);

    PrintHelper.printError("__otp send: $_tokenOtp");
    await VerifyFlows.sendOtpCode(context, _tokenOtp);
  }
}
