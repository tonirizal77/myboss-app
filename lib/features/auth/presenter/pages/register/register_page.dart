part of '../pages.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      useSafeArea: true,
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.auth_register_title.tr(),
        onClose: Responsive.isMobile(context) ? () => context.pop() : null,
      ),
      useScrollView: true,
      body: BlocListener<VerifyBloc, VerifyState>(
        listenWhen: (previous, current) =>
            current.action == ActionVerify.initial,
        listener: (context, state) =>
            context.pushNamed(RouteNames.verificationsPage),
        child: const FormRegister(),
      ),
    );
  }
}
