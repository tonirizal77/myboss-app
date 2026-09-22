part of 'responsive_widget_feat.dart';

/// Child for Header Quict Action Button
///
class RmdMainHeaderChild extends StatelessWidget {
  const RmdMainHeaderChild();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        final _shadow = state.isShadowHeaderButton;

        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Flex(
                spacing: 8,
                direction: Axis.horizontal,
                children: [
                  _switchMode(_shadow),
                  _settingStyleApp(context, _shadow),
                  _searchInput(),
                ],
              ),
            ),

            BlocBuilder<UserBloc, UserState>(
              buildWhen: (previous, current) =>
                  previous.statusLogin != current.statusLogin,
              builder: (context, userState) => SwitchChildWidgets(
                tipe: userState.statusLogin == Status.success
                    ? SwitchWidgets.child1
                    : SwitchWidgets.child2,
                child1: Row(
                  spacing: 8,
                  mainAxisSize: .min,
                  children: [
                    _showBarcode(context, _shadow),
                    _profileUser(context),
                  ],
                ),
                child2: Text(
                  "Let’s be a friend!",
                  style: AppTextStyles.titleBig1,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _switchMode(bool _shadow) {
    return ButtonMode(isShadow: _shadow, size: 44, isBorder: true);
  }

  Buttons _settingStyleApp(BuildContext context, bool _shadow) {
    return Buttons(
      width: 44,
      height: 44,
      isShadow: _shadow,
      margin: EdgeInsets.symmetric(horizontal: 4),
      child: Icon(Icons.settings_display, color: AppColors.primary),
      onTap: () {
        getIt<DialogHelper>().dialogCustom(
          context,
          title: Text("Tampilan Aplikasi", style: AppTextStyles.title),

          /// Widget Child
          child: const SettingStyleApps(),
        );
      },
    );
  }

  HeaderProfileUser _profileUser(BuildContext context) {
    return HeaderProfileUser(
      colorIcon: AppTheme.primary(context),
      bgColor: AppTheme.surface(context),
      radius: 22,
      isBorder: true,
      isShadow: true,
      borderColor: AppTheme.outline(context),
      child: _dataUser(context),
      icon: Icon(
        SolarIconsOutline.altArrowDown,
        color: AppTheme.primary(context),
      ),
      onSelected: (menu) => AppManageFlow.drodpDownMenu(context, menu),
    );
  }

  Widget _dataUser(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        return Row(
          mainAxisSize: .min,
          children: [
            CircleImage(
              // color: AppColors.primary,
              isShadow: true,
              boxShadow: boxShadow1,
              size: 44,
              border: Border.all(
                width: 2,
                strokeAlign: BorderSide.strokeAlignInside,
                color: AppTheme.outline(context),
              ),
              child: ImageNetwork(
                imageUrl: state.profile.favatar,
                imgError: Assets.icMaskot1,
                showError: false,
                height: 44,
                radius: 22,
                boxFit: BoxFit.contain,
              ),
            ),

            ///
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(state.profile.name, style: AppTextStyles.caption),
                  Text(state.profile.levelName, style: AppTextStyles.caption),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Visibility _searchInput() {
    return Visibility(
      visible: false,
      child: Flexible(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 8, 0),
          child: InputSearchText(radius: 40, hintText: "cari menu..."),
        ),
      ),
    );
  }

  Buttons _showBarcode(BuildContext context, bool _shadow) {
    return Buttons(
      height: 44,
      width: 44,
      isShadow: _shadow,
      borderWidth: 2,
      borderColor: AppTheme.outline(context),
      bgColor: AppTheme.primary(context),
      onTap: () => MainPageFlow.showBarcodeMember(context),
      child: Icon(Icons.qr_code, color: AppTheme.surface(context)),
    );
  }
}
