part of 'pages.dart';

class ConfirmationsPage extends StatelessWidget {
  const ConfirmationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _isEmail = context.select<VerifyBloc, bool>(
      (b) => b.state.verifyData.isEmailChannel,
    );

    return ResponsivePage(
      useSafeArea: true,
      // useScrollView: true,
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: _isEmail
            ? LocaleKeys.verify_confirm_title_email.tr()
            : LocaleKeys.verify_confirm_title.tr(),
        onClose: () {
          final _fromPage = VerifyFlows.verifyData.fromPage;

          if (_fromPage == FromPage.login || _fromPage == FromPage.register) {
            /// Reset State, back to the guest Main Page
            getIt<UserBloc>().add(UserEvent.userReset());

            AuthFlows.goToGuestMain(context);
          } else {
            getIt<VerifyBloc>().add(VerifyEvent.reset());

            context.goNamed(RouteNames.mainPage);
          }
        },
      ),
      maxWidth: Responsive.minWidthMobile,
      padding: EdgeInsets.zero,
      body: BlocListener<VerifyBloc, VerifyState>(
        listenWhen: (previous, current) =>
            current.action == ActionVerify.sendOtp,
        listener: VerifyFlowsListener.sendOtpCodeListen,
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(24, SyncUI.padTop, 24, 24),
          child: Column(
            mainAxisAlignment: Responsive.isMobile(context) ? .start : .center,
            children: [
              _imageOtp(context, _isEmail),
              const SizedBox(height: 32),

              /// Content Input Otp
              const ConfirmationsOtp(),
            ],
          ),
        ),
      ),
    );
  }

  Container _imageOtp(BuildContext context, bool isEmail) {
    return Container(
      width: 232,
      height: 112,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            isEmail ? Assets.imgVerifyOtpEmail : Assets.imgVerifyOtpWa,
          ),
        ),
        borderRadius: BorderRadius.circular(20),
        border: AppTheme.isDark(context)
            ? Border.all(width: 8, color: AppTheme.outline(context))
            : null,
      ),
    );
  }
}
