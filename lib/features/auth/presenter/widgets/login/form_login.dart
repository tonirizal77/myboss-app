part of '../widgets.dart';

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final GlobalKey<FormFieldState<dynamic>> _fieldKeyPhone =
      GlobalKey<FormFieldState>();

  final _phone = TextEditingController();
  final _email = TextEditingController();

  bool _isValid = false;
  bool isPhoneValid = false;
  bool isEmailValid = false;
  bool isSigningIn = false;

  String _completePhone = "";

  @override
  void initState() {
    super.initState();
  }

  void _onChangeState(String value, String? typeState) {
    if (typeState == 'phone') {
      _email.text = "";
      _completePhone = value;
      _isValid = _fieldKeyPhone.currentState?.validate() ?? false;
    }

    if (typeState == "email") {
      _phone.text = "";
      _isValid = value.isValidEmail();
    }

    if (_phone.text.isEmpty && _email.text.isEmpty) {
      _isValid = false;
    }

    setState(() {});

    PrintHelper.printState(
      "_onChangeState: $value - type: $typeState --> valid: $_isValid",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          /// Phone Number
          NormalPhoneField(
            formFieldKey: _fieldKeyPhone,
            controller: _phone,
            label: LocaleKeys.label_phone.tr(),
            // onCountryChanged: (_) => _onChangeState(_phone.text, "phone"),
            onChanged: (value) {
              _onChangeState(value.completeNumber, "phone");
            },
          ),

          // Stack(
          //   alignment: Alignment.center,
          //   children: [
          //     Divider(height: 40),
          //     Container(
          //       color: AppTheme.surfaceContainerLow(context),
          //       child: Text(" or ", style: AppTextStyles.bodyMedium),
          //     ),
          //   ],
          // ),

          // /// Email
          // NormalTextField(
          //   label: "Email",
          //   textCapitalization: TextCapitalization.none,
          //   controller: _email,
          //   onChanged: (val) => _onChangeState(val, "email"),
          //   // validator: (value) => SharedMethod.validatorEmail(value),
          // ),

          ///
          SizedBox(height: 32),

          /// Button Login
          ButtonText(
            backgroundColor: _isValid == true
                ? AppColors.primary
                : AppColors.grey60,
            text: LocaleKeys.button_login.tr(),
            radius: 28,
            onTap: _isValid
                ? () async {
                    FocusManager.instance.primaryFocus?.unfocus();

                    /// Initial data to state
                    VerifyFlows.verifyLogin(
                      context,
                      phone: _completePhone,
                      fromPage: FromPage.login,
                    );

                    /// Get OTP
                    await Future.delayed(
                      const Duration(milliseconds: 300),
                      () async {
                        await VerifyFlows.getOtpCode(context);
                      },
                    );
                  }
                : null,
          ),

          const SizedBox(height: 8),

          /// Button Register
          Visibility(
            visible: Responsive.isMobile(context),
            child: ButtonsWidget(
              isBorder: false,
              color: Colors.transparent,
              isWide: true,
              rounded: 28,
              onTap: () => UserFlows.goToRegisterPage(context),
              child: Text(
                LocaleKeys.button_register.tr(),
                style: AppTextStyles.button.copyWith(color: AppColors.primary),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _phone.dispose();
    _email.dispose();
    super.dispose();
  }
}
