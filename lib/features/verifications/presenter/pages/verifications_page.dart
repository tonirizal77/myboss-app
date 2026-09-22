part of 'pages.dart';

/// Verification only for Login or Register
///
class VerificationsPage extends StatelessWidget {
  const VerificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      useSafeArea: true,
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.verify_title.tr(),
        onClose: () {
          final _fromPage = VerifyFlows.verifyData.fromPage;

          if (_fromPage == FromPage.login || _fromPage == FromPage.register) {
            /// Reset State and trigger listen user to welcome page
            getIt<UserBloc>().add(UserEvent.userReset());

            context.goNamed(RouteNames.welcome);
          } else {
            /// ! Not Used
            getIt<VerifyBloc>().add(VerifyEvent.reset());

            context.goNamed(RouteNames.mainPage);
          }
        },
      ),
      maxWidth: Responsive.minWidthMobile,
      body: BlocConsumer<VerifyBloc, VerifyState>(
        listenWhen: (previous, current) =>
            current.action == ActionVerify.getOtp,
        listener: VerifyFlowsListener.getOtpCodeListen,
        builder: (context, state) {
          return Column(
            mainAxisSize: .min,
            mainAxisAlignment: Responsive.isMobile(context) ? .start : .center,
            children: [
              ImageAssets(image: Assets.imgShieldKey, width: 200, height: 200),
              SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    _contentBody(context, state),
                    SizedBox(height: 16),
                    _buttonSendOtp(context, state),
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  ButtonsWidget _buttonSendOtp(BuildContext context, VerifyState state) {
    return ButtonsWidget(
      color: AppTheme.primary(context),
      onTap: () async => await VerifyFlows.getOtpCode(context),
      child: Row(
        mainAxisAlignment: .center,
        spacing: 8,
        children: [
          Image.asset(Assets.icWaBlack, color: AppTheme.surface(context)),

          Text(
            LocaleKeys.verify_send_otp.tr(),
            style: AppTextStyles.button.copyWith(
              color: AppTheme.surface(context),
            ),
          ),
        ],
      ),
    );
  }

  Column _contentBody(BuildContext context, VerifyState state) {
    return Column(
      mainAxisSize: .min,
      children: [
        Text(
          LocaleKeys.verify_verify_phone.tr(),
          style: AppTextStyles.subtitleHuge2,
          textAlign: TextAlign.center,
        ),

        SizedBox(height: 16),

        CardCustom(
          isBorder: true,
          alignment: Alignment.center,
          borderColor: AppColors.primary,
          borderWidth: 1,
          height: 60,
          color: AppTheme.surfaceContainer(context),
          child: Text(
            getIt<GeneralHelper>().maskPhone(state.verifyData.phone, isMaskContact: AppSetting.isMaskContact.value),
            style: AppTextStyles.subtitleBig1,
          ),
        ),

        SizedBox(height: 24),

        Text(
          LocaleKeys.verify_otp_instruction.tr(),
          style: AppTextStyles.bodyBig2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
