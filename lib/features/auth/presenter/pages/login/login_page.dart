part of '../pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      useScrollView: true,
      useSafeArea: true,
      maxWidth: Responsive.minWidthMobile,
      padding: EdgeInsets.all(padPage),
      alignment: Responsive.isMobile(context) ? .topCenter : .center,
      body: BlocListener<VerifyBloc, VerifyState>(
        listenWhen: (previous, current) =>
            current.action == ActionVerify.getOtp,
        listener: VerifyFlowsListener.getOtpCodeListen,
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 32, bottom: 32),
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Visibility(
                    visible: Responsive.isMobile(context),
                    child: Text(
                      LocaleKeys.auth_title.tr(),
                      style: AppTextStyles.titleBig1,
                    ),
                  ),
                  Text(
                    LocaleKeys.auth_subtitle.tr(),
                    style: AppTextStyles.bodyBig2.copyWith(
                      color: AppColors.grey50,
                    ),
                  ),
                ],
              ),
            ),

            /// Form
            const FormLogin(),
          ],
        ),
      ),
    );
  }
}
