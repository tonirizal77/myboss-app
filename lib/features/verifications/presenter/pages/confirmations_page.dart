part of 'pages.dart';

class ConfirmationsPage extends StatelessWidget {
  const ConfirmationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      useSafeArea: true,
      // useScrollView: true,
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.verify_confirm_title.tr(),
        onClose: () {
          final _fromPage = VerifyFlows.verifyData.fromPage;

          if (_fromPage == FromPage.login || _fromPage == FromPage.register) {
            /// Reset State and trigger listen user to welcome page
            getIt<UserBloc>().add(UserEvent.userReset());

            context.goNamed(RouteNames.welcome);
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
              _imageOtp(context),
              const SizedBox(height: 32),

              /// Content Input Otp
              const ConfirmationsOtp(),
            ],
          ),
        ),
      ),
    );
  }

  Container _imageOtp(BuildContext context) {
    return Container(
      width: 232,
      height: 112,
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(Assets.imgVerifyOtpWa)),
        borderRadius: BorderRadius.circular(20),
        border: AppTheme.isDark(context)
            ? Border.all(width: 8, color: AppTheme.outline(context))
            : null,
      ),
    );
  }
}
