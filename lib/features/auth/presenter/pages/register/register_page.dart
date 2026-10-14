part of '../pages.dart';

/// Register page (Figma `Registration`): header with close, avatar picker,
/// name / phone / email form and a link back to sign in.
class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      useSafeArea: true,
      // The header is laid over the body - keep the content below it.
      padding: const EdgeInsets.only(top: 56),
      appBarCustom: MyBossHeader(
        title: LocaleKeys.auth_register_title.tr(),
        onClose: Responsive.isMobile(context) ? () => _close(context) : null,
      ),
      useScrollView: true,
      showButtonOnTop: false,
      body: BlocListener<VerifyBloc, VerifyState>(
        listenWhen: (previous, current) =>
            current.action == ActionVerify.initial,
        listener: (context, state) =>
            context.pushNamed(RouteNames.verificationsPage),
        child: const FormRegister(),
      ),
    );
  }

  /// Back when pushed on top of something, otherwise to sign in.
  void _close(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();

    if (context.canPop()) {
      context.pop();
    } else {
      UserFlows.gotoBackLogin(context);
    }
  }
}
