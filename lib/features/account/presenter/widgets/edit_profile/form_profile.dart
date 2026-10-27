part of '../widgets.dart';

class FormProfile extends StatefulWidget {
  const FormProfile({super.key});

  @override
  State<FormProfile> createState() => _FormProfileState();
}

class _FormProfileState extends State<FormProfile> {
  final _name = TextEditingController();
  final _phone = TextEditingController();
  final _email = TextEditingController();

  @override
  void initState() {
    super.initState();

    _name.text = ProfileEditFlows.formData.name;
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyBloc, VerifyState>(
      listenWhen: (previous, current) => current.action == ActionVerify.initial,
      listener: (context, state) {
        context.pushNamed(RouteNames.verificationProfilePage);
      },
      child: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          // Phone / email come from the profile (read-only here).
          final _maskedPhone = getIt<GeneralHelper>().maskPhone(
            state.profile.phone,
            isMaskContact: AppSetting.isMaskContact.value,
          );
          final _maskedEmail = getIt<GeneralHelper>().maskEmail(
            state.profile.email,
            isMaskContact: AppSetting.isMaskContact.value,
          );
          if (_phone.text != _maskedPhone) _phone.text = _maskedPhone;
          if (_email.text != _maskedEmail) _email.text = _maskedEmail;

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                /// Name
                MyBossTextField(
                  label: LocaleKeys.label_name.tr(),
                  controller: _name,
                  textCapitalization: TextCapitalization.words,
                  onChanged: (val) => ProfileEditFlows.updateName(context, val),
                ),
                const SizedBox(height: 16),

                /// Phone number (changed with OTP)
                _readOnlyField(
                  label: LocaleKeys.label_phone.tr(),
                  controller: _phone,
                  onEdit: () {
                    VerifyFlows.verifyEditProfile(
                      context,
                      phone: state.profile.phone,
                      fromPage: FromPage.changeNumber,
                    );
                  },
                ),
                const SizedBox(height: 16),

                /// Email (changed with OTP)
                _readOnlyField(
                  label: LocaleKeys.edit_profile_email_label.tr(),
                  controller: _email,
                  onEdit: () {
                    VerifyFlows.verifyEditProfile(
                      context,
                      email: state.profile.email,
                      phone: state.profile.phone,
                      fromPage: FromPage.changeEmail,
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _readOnlyField({
    required String label,
    required TextEditingController controller,
    required VoidCallback onEdit,
  }) {
    return MyBossTextField(
      label: label,
      controller: controller,
      readOnly: true,
      fillColor: MyBossColors.surfaceContainerLow,
      onTap: onEdit,
      suffix: IconButton(
        onPressed: onEdit,
        icon: Icon(Icons.edit_outlined, size: 22, color: MyBossColors.primary),
      ),
    );
  }

  @override
  void dispose() {
    _name.dispose();
    _phone.dispose();
    _email.dispose();
    super.dispose();
  }
}
