part of '../pages.dart';

class ChangeNewPhonePage extends StatefulWidget {
  const ChangeNewPhonePage({super.key});

  @override
  State<ChangeNewPhonePage> createState() => _ChangeNewPhonePageState();
}

class _ChangeNewPhonePageState extends State<ChangeNewPhonePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final GlobalKey<FormFieldState<dynamic>> _fieldKeyPhone =
      GlobalKey<FormFieldState>();

  final _phone = TextEditingController();

  // ignore: unused_field
  bool _isValid = false;
  bool isPhoneValid = false;
  bool isEmailValid = false;
  bool isSigningIn = false;

  // ignore: unused_field
  String _completePhone = "";

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
    _phone.dispose();
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
        title: LocaleKeys.edit_profile_new_phone_title.tr(),
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
                /// Form Change Phone Number
                NormalPhoneField(
                  formFieldKey: _fieldKeyPhone,
                  controller: _phone,
                  label: LocaleKeys.label_phone.tr(),
                  onChanged: (value) {
                    setState(() {
                      _completePhone = value.completeNumber;
                    });
                  },
                  validator: (value) {
                    final _oldPhone =
                        getIt<VerifyBloc>().state.verifyData.phone;

                    if (_oldPhone == value?.completeNumber) {
                      return LocaleKeys.edit_profile_error_phone_same.tr();
                    }

                    return null;
                  },
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
          VerifyFlows.verifyNewPhone(
            context,
            phone: _completePhone,
            fromPage: FromPage.changeNewNumber,
          );
        },
      ),
    );
  }
}
