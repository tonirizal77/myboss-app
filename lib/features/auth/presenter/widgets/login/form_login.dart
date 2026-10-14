part of '../widgets.dart';

enum _LoginMode { phone, email }

class FormLogin extends StatefulWidget {
  const FormLogin({super.key});

  @override
  State<FormLogin> createState() => _FormLoginState();
}

class _FormLoginState extends State<FormLogin> {
  final GlobalKey<FormFieldState<dynamic>> _fieldKeyPhone =
      GlobalKey<FormFieldState>();

  final _phone = TextEditingController();
  final _email = TextEditingController();

  _LoginMode _mode = _LoginMode.phone;
  bool _isValid = false;
  bool _emailTouched = false;
  String _completePhone = '';

  bool get _isEmail => _mode == _LoginMode.email;

  /// Only show the email error once the user typed something.
  String? get _emailError =>
      _isEmail && _emailTouched && !_isValid && _email.text.isNotEmpty
      ? LocaleKeys.auth_invalid_email.tr()
      : null;

  void _onModeChanged(_LoginMode mode) {
    if (mode == _mode) return;

    // Switch first so callbacks fired by clearing the controllers are ignored.
    _mode = mode;
    _phone.clear();
    _email.clear();

    setState(() {
      _isValid = false;
      _emailTouched = false;
      _completePhone = '';
    });
  }

  void _onPhoneChanged(String completeNumber) {
    if (_isEmail) return;

    _completePhone = completeNumber;

    final valid =
        _phone.text.isNotEmpty &&
        (_fieldKeyPhone.currentState?.validate() ?? false);

    // The phone field also reports while it is being created (inside build) -
    // only rebuild when the validity really changed.
    if (valid == _isValid) return;

    setState(() => _isValid = valid);
  }

  void _onEmailChanged(String value) {
    setState(() {
      _emailTouched = true;
      _isValid = value.trim().isValidEmail();
    });
  }

  Future<void> _submit() async {
    FocusManager.instance.primaryFocus?.unfocus();

    /// Initial data to state
    VerifyFlows.verifyLogin(
      context,
      phone: _isEmail ? '' : _completePhone,
      email: _isEmail ? _email.text.trim() : '',
      fromPage: FromPage.login,
    );

    /// Get OTP
    await Future.delayed(const Duration(milliseconds: 300));
    if (!mounted) return;
    await VerifyFlows.getOtpCode(context);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        /// Phone / Email switch
        MyBossSegmented<_LoginMode>(
          selected: _mode,
          onChanged: _onModeChanged,
          segments: [
            MyBossSegment(
              value: _LoginMode.phone,
              label: LocaleKeys.auth_tab_phone.tr(),
            ),
            MyBossSegment(
              value: _LoginMode.email,
              label: LocaleKeys.auth_tab_email.tr(),
            ),
          ],
        ),
        const SizedBox(height: 16),

        /// Single input following the selected mode
        if (_isEmail)
          MyBossTextField(
            label: LocaleKeys.auth_label_email.tr(),
            controller: _email,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.done,
            errorText: _emailError,
            onChanged: _onEmailChanged,
            onSubmitted: (_) {
              if (_isValid) _submit();
            },
          )
        else
          NormalPhoneField(
            formFieldKey: _fieldKeyPhone,
            controller: _phone,
            label: LocaleKeys.label_phone.tr(),
            onChanged: (value) => _onPhoneChanged(value.completeNumber),
          ),
        const SizedBox(height: 32),

        /// Button Login
        MyBossButton(
          label: LocaleKeys.button_login.tr(),
          size: MyBossButtonSize.large,
          expand: true,
          onPressed: _isValid ? _submit : null,
        ),
        const SizedBox(height: 24),

        /// Button Register
        Visibility(
          visible: Responsive.isMobile(context),
          child: Center(
            child: MyBossButton(
              label: LocaleKeys.button_register.tr(),
              style: MyBossButtonStyle.text,
              onPressed: () => UserFlows.goToRegisterPage(context),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _phone.dispose();
    _email.dispose();
    super.dispose();
  }
}
