part of '../pages.dart';

/// Sign in page (Figma `sign in`): logo, headline, phone/email switch, login
/// button and a link to register. The round button at the top right closes it.
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ResponsivePage(
          useScrollView: true,
          useSafeArea: true,
          maxWidth: Responsive.minWidthMobile,
          padding: const EdgeInsets.all(32),
          alignment: Responsive.isMobile(context) ? .topCenter : .center,
          body: BlocListener<VerifyBloc, VerifyState>(
            listenWhen: (previous, current) =>
                current.action == ActionVerify.getOtp,
            listener: VerifyFlowsListener.getOtpCodeListen,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(Assets.logoMyBossText, width: 188, height: 48),
                const SizedBox(height: 12),
                Text(
                  LocaleKeys.auth_title.tr(),
                  style: MyBossTextStyles.titleBig1.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
                const SizedBox(height: 32),

                /// Form
                const FormLogin(),
              ],
            ),
          ),
        ),

        /// Close - only when there is somewhere to go: a page below us, or
        /// guest mode. When sign-in is required the guest gate would send the
        /// user straight back here.
        if (context.canPop() || AppSetting.isGuestModeEnabled)
          SafeArea(
            child: Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 24, right: 20),
                child: _CloseButton(onTap: () => _close(context)),
              ),
            ),
          ),
      ],
    );
  }

  /// Back when something is below us, otherwise to the guest main page.
  ///
  /// (`UserFlows.goToLoginPage` would land on `MainPageFirst`, i.e. this very
  /// page, so go to the main page directly.)
  void _close(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();

    if (context.canPop()) {
      context.pop();
    } else {
      MainPageFlow.goToMainPage(context);
    }
  }
}

class _CloseButton extends StatelessWidget {
  const _CloseButton({required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: MyBossColors.surface,
      shape: const CircleBorder(),
      child: InkWell(
        customBorder: const CircleBorder(),
        onTap: onTap,
        child: const Padding(
          padding: EdgeInsets.all(8),
          child: Icon(Icons.close, size: 24, color: MyBossColors.onSurface),
        ),
      ),
    );
  }
}
