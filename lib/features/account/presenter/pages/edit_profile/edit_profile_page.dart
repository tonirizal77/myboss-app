part of '../pages.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      appBarCustom: AppBarCustom(
        isBlur: false,
        title: LocaleKeys.edit_profile_title.tr(),
        onClose: () => context.pop(),
        overRightButton: false,
        rightButton: _rightHeaderButton(context),
      ),
      useScrollView: true,
      body: BlocConsumer<ProfileBloc, ProfileState>(
        listenWhen: (previous, current) =>
            current.action == EditProfileAction.changeProfile,
        listener: (context, state) async {
          PrintHelper.printState("__state: ${state}");

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
              // await AccountFlows.getProfile(context);
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
          return Container(
            padding: Responsive.isMobile(context)
                ? EdgeInsets.only(top: 16)
                : null,
            child: Flex(
              direction: Responsive.isMobile(context) ? .vertical : .horizontal,
              mainAxisSize: .min,
              spacing: 16,
              mainAxisAlignment: .center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /// Generate Avatar
                Flexible(
                  child: AvatarWidget(
                    onTap: (avatar) {
                      ProfileEditFlows.updateAvatar(context, avatar);
                    },
                  ),
                ),

                /// Form Register
                Flexible(child: const FormProfile()),
              ],
            ),
          );
        },
      ),
      bottomNav: _buttonAction(context),
    );
  }

  ButtonAction _buttonAction(BuildContext context) {
    return ButtonAction(
      label1: LocaleKeys.button_batal.tr(),
      label2: LocaleKeys.button_simpan.tr(),
      enabled: true,
      onCancel: () => context.pop(),
      onApply: () async {
        final _data = ProfileEditFlows.formData;
        // PrintHelper.inspectx(_data);

        await ProfileEditFlows.updateProfile(context, {
          'name': _data.name,
          'avatar_id': _data.avatar.id,
        });
      },
    );
  }

  SizedBox _rightHeaderButton(BuildContext context) {
    return SizedBox(
      width: 240,
      child: ButtonAction(
        padding: EdgeInsets.zero,
        height: 40,
        enabled: true,
        onCancel: () {
          context.pop();
        },
        onApply: () async {
          final _data = ProfileEditFlows.formData;
          // PrintHelper.inspectx(_data);

          await ProfileEditFlows.updateProfile(context, {
            'name': _data.name,
            'avatar_id': _data.avatar.id,
          });
        },
      ),
    );
  }
}
