part of '../widgets.dart';

class FormProfile extends StatefulWidget {
  const FormProfile({super.key});

  @override
  State<FormProfile> createState() => _FormProfiletate();
}

class _FormProfiletate extends State<FormProfile> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _name = TextEditingController(text: '');

  @override
  void initState() {
    super.initState();

    PrintHelper.printError("__${ProfileEditFlows.formData}");

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
          return Container(
            padding: EdgeInsets.all(16),
            child: Form(key: _formKey, child: _bodyForm(context, state)),
          );
        },
      ),
    );
  }

  Column _bodyForm(BuildContext context, ProfileState state) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: .min,
      children: [
        // Text("${state.profileEdit}"),

        /// Name
        NormalTextField(
          controller: _name,
          label: LocaleKeys.label_name.tr(),
          onChanged: (val) => ProfileEditFlows.updateName(context, val),
        ),

        const SizedBox(height: 16),

        /// Phone, Email
        Column(
          spacing: 16,
          children: [_phoneNumber(state, context), _email(state, context)],
        ),
      ],
    );
  }

  NormalTextField _email(ProfileState state, BuildContext context) {
    return NormalTextField(
      label: LocaleKeys.edit_profile_email_label.tr(),
      isEdit: true,
      enabled: false,
      hintText: getIt<GeneralHelper>().maskEmail(state.profile.email, isMaskContact: AppSetting.isMaskContact.value),
      onTapEdit: () {
        VerifyFlows.verifyEditProfile(
          context,
          email: state.profile.email,
          phone: state.profile.phone,
          fromPage: FromPage.changeEmail,
        );
      },
    );
  }

  NormalTextField _phoneNumber(ProfileState state, BuildContext context) {
    return NormalTextField(
      label: LocaleKeys.label_phone.tr(),
      hintText: getIt<GeneralHelper>().maskPhone(state.profile.phone, isMaskContact: AppSetting.isMaskContact.value),
      isEdit: true,
      enabled: false,
      onTapEdit: () {
        PrintHelper.printError("__onTapEdit phone");

        VerifyFlows.verifyEditProfile(
          context,
          phone: state.profile.phone,
          fromPage: FromPage.changeNumber,
        );
      },
    );
  }

  @override
  void dispose() {
    _name.dispose();
    super.dispose();
  }
}
