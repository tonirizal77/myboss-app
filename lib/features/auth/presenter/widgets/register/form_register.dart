part of '../widgets.dart';

class FormRegister extends StatefulWidget {
  const FormRegister({super.key});

  @override
  State<FormRegister> createState() => _FormRegisterState();
}

class _FormRegisterState extends State<FormRegister> {
  final GlobalKey<FormFieldState<dynamic>> _fieldKeyPhone =
      GlobalKey<FormFieldState>();

  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();

  /// Open the T&C page when the link in the agreement text is tapped.
  late final TapGestureRecognizer _termsTap = TapGestureRecognizer()
    ..onTap = () => AccountFlows.goToTncPage(context);

  bool _nameTouched = false;
  bool _emailTouched = false;

  bool _isValidName = false;
  bool _isValidPhone = false;
  bool _isValidEmail = false;

  RegistrationModel _register = const RegistrationModel();

  bool get _isValid => _isValidName && _isValidPhone && _isValidEmail;

  /// Errors only show after the user typed in the field.
  String? get _nameError {
    if (!_nameTouched || _isValidName) return null;

    return _name.text.isEmpty
        ? LocaleKeys.auth_error_name_required.tr()
        : LocaleKeys.auth_error_name_length.tr();
  }

  String? get _emailError {
    if (!_emailTouched || _isValidEmail) return null;

    return _email.text.isEmpty
        ? LocaleKeys.edit_profile_error_email_required.tr()
        : LocaleKeys.edit_profile_error_email_invalid.tr();
  }

  void _onAvatar(AvatarsModel avatar) {
    setState(
      () => _register = _register.copyWith(
        avatarId: avatar.id ?? _register.avatarId,
      ),
    );
  }

  void _onName(String value) {
    setState(() {
      _nameTouched = true;
      _isValidName = value.trim().length > 2;
      _register = _register.copyWith(name: value.trim());
    });
  }

  void _onPhone(String completeNumber) {
    final valid =
        _phone.text.isNotEmpty &&
        (_fieldKeyPhone.currentState?.validate() ?? false);

    _register = _register.copyWith(phone: completeNumber);

    // The phone field also reports while it is being created (inside build) -
    // only rebuild when the validity really changed.
    if (valid == _isValidPhone) return;

    setState(() => _isValidPhone = valid);
  }

  void _onEmail(String value) {
    setState(() {
      _emailTouched = true;
      _isValidEmail = value.trim().isValidEmail();
      _register = _register.copyWith(email: value.trim());
    });
  }

  void _submit() {
    FocusManager.instance.primaryFocus?.unfocus();

    VerifyFlows.verifyRegister(
      context,
      register: _register,
      fromPage: FromPage.register,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Responsive.isMobile(context) ? Axis.vertical : Axis.horizontal,
      mainAxisSize: MainAxisSize.min,
      spacing: 16,
      children: [
        /// Avatars
        Flexible(
          child: Padding(
            padding: EdgeInsets.only(
              top: Responsive.isMobile(context) ? 24 : 0,
            ),
            child: AvatarWidget(onTap: _onAvatar),
          ),
        ),

        Flexible(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 24),
            child: _bodyForm(context),
          ),
        ),
      ],
    );
  }

  Widget _bodyForm(BuildContext context) {
    final iconColor = ColorFilter.mode(
      MyBossColors.onSurface,
      BlendMode.srcIn,
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /// Name
        MyBossTextField(
          label: LocaleKeys.label_name.tr(),
          controller: _name,
          textCapitalization: TextCapitalization.words,
          textInputAction: TextInputAction.next,
          errorText: _nameError,
          onChanged: _onName,
          prefix: SvgPicture.asset(
            Assets.icInputUser,
            width: 22,
            height: 22,
            colorFilter: iconColor,
          ),
        ),
        const SizedBox(height: 16),

        /// Phone Number
        NormalPhoneField(
          formFieldKey: _fieldKeyPhone,
          controller: _phone,
          label: LocaleKeys.label_phone.tr(),
          onChanged: (value) => _onPhone(value.completeNumber),
        ),
        const SizedBox(height: 16),

        /// Email
        MyBossTextField(
          label: LocaleKeys.edit_profile_email_label.tr(),
          controller: _email,
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.done,
          errorText: _emailError,
          onChanged: _onEmail,
          onSubmitted: (_) {
            if (_isValid) _submit();
          },
          prefix: SvgPicture.asset(
            Assets.icInputMail,
            width: 22,
            height: 22,
            colorFilter: iconColor,
          ),
        ),
        const SizedBox(height: 32),

        /// Button Register
        MyBossButton(
          label: LocaleKeys.auth_btn_register.tr(),
          size: MyBossButtonSize.large,
          expand: true,
          onPressed: _isValid ? _submit : null,
        ),
        const SizedBox(height: 16),

        /// Terms & Conditions agreement
        Text.rich(
          textAlign: TextAlign.center,
          TextSpan(
            style: MyBossTextStyles.caption.copyWith(
              color: MyBossColors.onSurfaceVariant,
            ),
            children: [
              TextSpan(text: LocaleKeys.auth_terms_prefix.tr()),
              TextSpan(
                text: LocaleKeys.auth_terms_link.tr(),
                recognizer: _termsTap,
                style: TextStyle(
                  color: MyBossColors.primary,
                  fontWeight: FontWeight.w500,
                  decoration: TextDecoration.underline,
                  decorationColor: MyBossColors.primary,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),

        /// Already have an account? Sign in
        Visibility(
          visible: Responsive.isMobile(context),
          child: Column(
            children: [
              Text(
                LocaleKeys.auth_have_account.tr(),
                textAlign: TextAlign.center,
                style: MyBossTextStyles.bodyBig2.copyWith(
                  color: MyBossColors.onSurface,
                ),
              ),
              const SizedBox(height: 8),
              MyBossButton(
                label: LocaleKeys.auth_sign_in.tr(),
                style: MyBossButtonStyle.text,
                onPressed: () => UserFlows.gotoBackLogin(context),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _termsTap.dispose();
    _name.dispose();
    _phone.dispose();
    _email.dispose();
    super.dispose();
  }
}
