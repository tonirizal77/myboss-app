part of '../widgets.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegistertate();
}

class _FormRegistertate extends State<FormRegister> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final GlobalKey<FormFieldState<dynamic>> _fieldKeyPhone =
      GlobalKey<FormFieldState>();

  final _name = TextEditingController(text: '');
  final _phone = TextEditingController();
  final _email = TextEditingController();

  bool _isValid = false;

  bool isSigningIn = false;

  bool _isValidName = false;
  bool _isValidPhone = false;
  bool _isValidEmail = false;

  RegistrationModel _register = RegistrationModel();

  @override
  void initState() {
    super.initState();
  }

  void _onChangeState(dynamic value, String? typeState) {
    if (typeState == 'phone') {
      if (value.isNotEmpty && value.length > 1) {
        final _codeIndo = value.isNotEmpty ? value.substring(0, 2) : "";
        if (_codeIndo == '62') {
          _isValidPhone = value.length >= 11 && value.length <= 16;
          PrintHelper.printWarning("Nomor indonesia");
        } else {
          _isValidPhone = value.length >= 9 && value.length <= 14;
          PrintHelper.printWarning("bukan Nomor indonesia");
        }
      }
      _register = _register.copyWith(phone: value);
    } else {
      _isValidPhone = _phone.text.isNotEmpty;
      PrintHelper.printWarning("__check Phone: ${_phone.text} - $_isValid");
    }

    if (typeState == 'email') {
      _isValidEmail = (value as String).isValidEmail();
      _register = _register.copyWith(email: value);
    }

    if (typeState == 'avatar') {
      _register = _register.copyWith(avatarId: value);
    }

    if (typeState == 'name') {
      _isValidName = (value as String).length > 2;
      _register = _register.copyWith(name: value);
    }

    _isValid =
        _isValidName &&
        _isValidPhone &&
        _isValidEmail &&
        (_formKey.currentState?.validate() ?? false);

    setState(() {});

    PrintHelper.printState(
      "_onChangeState: $value - type: $typeState --> valid: $_isValid",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Responsive.isMobile(context) ? .vertical : .horizontal,
      mainAxisSize: .min,
      spacing: 16,
      children: [
        /// Generate Avatar
        Flexible(
          child: AvatarWidget(
            onTap: (val) {
              _onChangeState(val.id, 'avatar');
            },
          ),
        ),

        Flexible(
          child: Container(
            padding: EdgeInsets.fromLTRB(24, 0, 24, 0),
            child: Form(key: _formKey, child: _bodyForm(context)),
          ),
        ),
      ],
    );
  }

  Column _bodyForm(BuildContext context) {
    return Column(
      spacing: 16,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        /// Name
        NormalTextField(
          // focusNode: _myFocusInput,
          controller: _name,
          label: LocaleKeys.label_name.tr(),
          onChanged: (val) => _onChangeState(val, "name"),
          validator: (value) => validatorName(value),
        ),

        /// Phone Number
        NormalPhoneField(
          formFieldKey: _fieldKeyPhone,
          controller: _phone,
          label: LocaleKeys.label_phone.tr(),
          // onCountryChanged: (country) {
          //   PrintHelper.printError("__dialcode: //");
          // },
          onChanged: (value) {
            _onChangeState(value.completeNumber, "phone");
          },
        ),

        /// Email
        NormalTextField(
          label: LocaleKeys.edit_profile_email_label.tr(),
          textCapitalization: TextCapitalization.none,
          controller: _email,
          onChanged: (val) => _onChangeState(val, "email"),
          validator: (value) => validatorEmail(value),
        ),

        SizedBox(height: 16),

        /// Button Register
        ButtonText(
          radius: 28,
          text: LocaleKeys.auth_btn_ready.tr(),
          onTap: _isValid
              ? () {
                  FocusManager.instance.primaryFocus?.unfocus();
                  VerifyFlows.verifyRegister(
                    context,
                    register: _register,
                    fromPage: FromPage.register,
                  );
                }
              : null,
        ),

        /// Button Sign In
        Visibility(
          visible: Responsive.isMobile(context),
          child: Column(
            children: [
              Text(
                LocaleKeys.auth_have_account.tr(),
                style: AppTextStyles.bodyBig2,
              ),

              ButtonText(
                text: LocaleKeys.auth_sign_in.tr(),
                backgroundColor: Colors.transparent,
                elevation: 0,
                textStyle: AppTextStyles.button.copyWith(
                  color: AppColors.primary,
                ),
                onTap: () {
                  UserFlows.gotoBackLogin(context);
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  String? validatorEmail(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.edit_profile_error_email_required.tr();
    }

    if (!value.isValidEmail()) {
      return LocaleKeys.edit_profile_error_email_invalid.tr();
    }

    return null;
  }

  String? validatorName(String? value) {
    if (value == null || value.isEmpty) {
      return LocaleKeys.auth_error_name_required.tr();
    }

    if (value.length < 3) {
      return LocaleKeys.auth_error_name_length.tr();
    }

    return null;
  }

  bool isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    return num.tryParse(s) != null;
  }

  @override
  void dispose() {
    _name.dispose();
    _phone.dispose();
    _email.dispose();
    super.dispose();
  }
}
