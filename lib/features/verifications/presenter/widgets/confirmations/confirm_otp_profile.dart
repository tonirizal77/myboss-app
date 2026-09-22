part of '../widgets.dart';

class ConfirmOtpProfile extends StatefulWidget {
  const ConfirmOtpProfile({super.key});

  @override
  State<ConfirmOtpProfile> createState() => _ConfirmOtpProfileState();
}

class _ConfirmOtpProfileState extends State<ConfirmOtpProfile> {
  String _tokenOtp = "";

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Column(
          children: [
            _contentConfirm(getIt<GeneralHelper>().maskPhone(state.phone ?? "", isMaskContact: AppSetting.isMaskContact.value)),
            const SizedBox(height: 16),

            // Form Input Token
            BodyFormToken(callback: (otp) => setState(() => _tokenOtp = otp)),

            /// Button Verifikasi
            ButtonsWidget(
              isWide: true,
              onTap: () async => _onConfirmOtp(state.phone ?? ""),
              child: Text(
                LocaleKeys.verify_confirm_btn.tr(),
                style: AppTextStyles.button.copyWith(
                  color: AppTheme.surface(context),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _contentConfirm(String phone) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: AppTextStyles.bodyBig1.copyWith(
          color: AppTheme.onSurface(context),
        ),
        children: [
          TextSpan(
            text: LocaleKeys.verify_otp_sent.tr(),
          ),
          TextSpan(
            text: phone,
            style: AppTextStyles.bodyBig1.copyWith(
              fontWeight: FontWeight.bold,
              color: AppTheme.onSurface(context),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _onConfirmOtp(String phone) async {
    /// Goto Confirm OTP / Verify OTP
    PrintHelper.printData("__otp form confirm: Phone: $phone, otp: $_tokenOtp");

    FocusManager.instance.primaryFocus?.unfocus();

    // await context.read<ProfileBloc>().onSendOtpChange(
    //   phone: phone,
    //   otpCode: _tokenOtp,
    // );
  }
}
