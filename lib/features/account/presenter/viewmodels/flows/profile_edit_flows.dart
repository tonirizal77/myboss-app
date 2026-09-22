part of 'flows.dart';

class ProfileEditFlows {
  ProfileEditFlows._();

  static ProfileEditModel get formData =>
      getIt<ProfileBloc>().state.profileEdit;

  /// === LISTENERS === ///
  /// - Change Phone Listener
  static void changeVerifyListener(BuildContext context, ProfileState state) {
    /// 1. Goto Verification Page
    /// Goto Verification Page
    // if (state.action == EditProfileAction.changePhone ||
    //     state.action == EditProfileAction.changeEmail) {
    //   context.pushNamed(RouteNames.verificationProfilePage);
    // }

    /// 2. Goto Confirm OTP
    // if (state.event == UserLoginOtp) {
    //   if (state.isLoading) {
    //     getIt<LoadingHelper>().turnOnLoading();
    //   } else {
    //     getIt<LoadingHelper>().turnOffLoading();
    //     if (state.statusGetOtp == Status.success) {
    //       UserFlows.goToConfirmOtp(context);
    //     } else {
    //       getIt<FlushbarHelper>().showErrorFlushbar(
    //         context: context,
    //         message: state.errorMessage,
    //       );
    //     }
    //   }
    // }
  }

  /// === HANDLERS === ///
  static void initializeFormData(BuildContext context) {
    final _profile = context.read<ProfileBloc>().state.profile;

    PrintHelper.printWarning("__initialize FormData: ${_profile}");

    context.read<ProfileBloc>().add(
      ProfileEvent.initialFormField(
        ProfileEditModel(
          avatar: AvatarsModel(fimg: _profile.favatar, id: _profile.avatarId),
          name: _profile.name,
        ),
      ),
    );
  }

  static void updateAvatar(BuildContext context, AvatarsModel avatar) {
    /// Update Form
    final _formData = formData.copyWith(avatar: avatar);

    context.read<ProfileBloc>().add(ProfileEvent.updateFormField(_formData));
  }

  static void updateName(BuildContext context, String name) {
    /// Update Form
    final _formData = formData.copyWith(name: name);

    context.read<ProfileBloc>().add(ProfileEvent.updateFormField(_formData));
  }

  static FutureOr<void> updateProfile(
    BuildContext context,
    DataMap formData,
  ) async {
    /// Update Profile (avatar and name)
    context.read<ProfileBloc>().add(ProfileEvent.updateProfile(formData));
  }

  /// - Goto Verification Page
  static void goToVerifyChangePage(
    BuildContext context, {
    required EditProfileAction action,
    String? phone,
    String? email,
  }) {
    /// Update State Only
    context.read<ProfileBloc>().add(
      ProfileEvent.updateDataVerify(action: action, phone: phone, email: email),
    );
  }

  /// -
}
