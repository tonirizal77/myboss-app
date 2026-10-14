part of '../pages.dart';

/// Edit profile (Figma `Edit Profile`): avatar picker, name and the phone /
/// email (changed through OTP), with Cancel / Save at the bottom.
class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      backgroundColor: MyBossColors.surfaceContainerLow,
      appBar: MyBossHeader(
        title: LocaleKeys.edit_profile_title.tr(),
        onClose: () => context.pop(),
      ),
      padding: EdgeInsets.zero,
      alignment: Alignment.topCenter,
      maxWidth: 640,
      useScrollView: true,
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listenWhen: (previous, current) =>
            current.action == EditProfileAction.changeProfile,
        listener: (context, state) async {
          if (state.respon == Respons.loading) {
            getIt<LoadingHelper>().turnOnLoading();
          } else {
            getIt<LoadingHelper>().turnOffLoading();
            if (state.respon == Respons.failure) {
              await getIt<FlushbarHelper>().showErrorFlushbar(
                context: context,
                message: state.errorMessage,
              );
            } else {
              await getIt<FlushbarHelper>()
                  .showNormalFlushbar(
                    context: context,
                    message: LocaleKeys.edit_profile_success.tr(),
                  )
                  .whenComplete(() => context.pop());
            }
          }
        },
        builder: (context, state) {
          return Padding(
            padding: const EdgeInsets.only(top: 24, bottom: 24),
            child: Column(
              children: [
                /// Avatars
                AvatarWidget(
                  onTap: (avatar) =>
                      ProfileEditFlows.updateAvatar(context, avatar),
                ),
                const SizedBox(height: 16),

                /// Form
                const FormProfile(),
              ],
            ),
          );
        },
      ),
      bottomNav: Container(
        color: MyBossColors.surface,
        padding: const EdgeInsets.all(16),
        child: SafeArea(
          top: false,
          child: Row(
            children: [
              Expanded(
                child: MyBossButton(
                  label: LocaleKeys.button_batal.tr(),
                  role: MyBossButtonRole.secondary,
                  size: MyBossButtonSize.large,
                  expand: true,
                  onPressed: () => context.pop(),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: MyBossButton(
                  label: LocaleKeys.button_simpan.tr(),
                  size: MyBossButtonSize.large,
                  expand: true,
                  onPressed: () async {
                    final data = ProfileEditFlows.formData;

                    await ProfileEditFlows.updateProfile(context, {
                      'name': data.name,
                      'avatar_id': data.avatar.id,
                    });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
