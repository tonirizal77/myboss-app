part of '../pages.dart';

class ChangeNewEmailPage extends StatefulWidget {
  const ChangeNewEmailPage({super.key});

  @override
  State<ChangeNewEmailPage> createState() => _ChangeNewEmailPageState();
}

class _ChangeNewEmailPageState extends State<ChangeNewEmailPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _email = TextEditingController();

  // ignore: unused_field
  bool _isValid = false;
  bool isEmailValid = false;

  FocusNode _myFocusInput = FocusNode();

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 1),
      () => _myFocusInput.requestFocus(),
    );
  }

  @override
  void dispose() {
    _email.dispose();
    _myFocusInput.dispose();
    super.dispose();
  }

  void _onCancel(BuildContext context) {
    context.read<VerifyBloc>().add(VerifyEvent.reset());
    context.goNamed(RouteNames.mainPage);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      useSafeArea: true,
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.edit_profile_new_email_title.tr(),
        onClose: () => _onCancel(context),
      ),
      useScrollView: true,
      maxWidth: Responsive.minWidthMobile,
      body: BlocListener<VerifyBloc, VerifyState>(
        listenWhen: (previous, current) =>
            current.action == ActionVerify.initial,
        listener: (context, state) {
          context.pushNamed(RouteNames.verificationProfilePage);
        },
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                /// Email
                NormalTextField(
                  label: LocaleKeys.edit_profile_email_label.tr(),
                  textCapitalization: TextCapitalization.none,
                  controller: _email,
                  onChanged: (value) =>
                      setState(() => _isValid = value.isValidEmail()),
                  validator: (value) => validatorEmail(value),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNav: ButtonAction(
        label1: LocaleKeys.button_batal.tr(),
        label2: LocaleKeys.button_simpan.tr(),
        enabled: _formKey.currentState?.validate() ?? false,
        onCancel: () => _onCancel(context),
        onApply: () async {
          FocusManager.instance.primaryFocus?.unfocus();

          /// Initial data
          VerifyFlows.verifyNewEmail(
            context,
            email: _email.text,
            fromPage: FromPage.changeNewEmail,
          );
        },
      ),
    );
  }

  String? validatorEmail(String? value) {
    final _oldValue = getIt<VerifyBloc>().state.verifyData.email;

    if (value == null || value.isEmpty) {
      return LocaleKeys.edit_profile_error_email_required.tr();
    } else {
      if (value == _oldValue) {
        return LocaleKeys.edit_profile_error_email_same.tr();
      }
    }

    if (!value.isValidEmail()) {
      return LocaleKeys.edit_profile_error_email_invalid.tr();
    }
    return null;
  }
}
