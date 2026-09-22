part of 'responsive_style_feat.dart';

/// SideBar left
/// Responsive for Desktiop or Tablet
class RmdLeftSide extends StatelessWidget {
  const RmdLeftSide({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        final bool mini = state.isCollapse;
        final Color? bgColor = state.bgColorMenu;

        return SwitchChildWidgets(
          tipe: Responsive.isMobile(context)
              ? SwitchWidgets.child1
              : SwitchWidgets.child2,

          /// !for Phone
          child1: ResponsiveSafeArea(
            child: Drawer(
              backgroundColor: AppTheme.surface(context),
              // AppTheme.isDark(context)
              //     ? Colors.black
              //     : Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: _sideBarSwitch(context, mini, bgColor: bgColor),
            ),
          ),

          /// !for Tablet or Desktop
          child2: _sideBarSwitch(context, mini, bgColor: bgColor),
        );
      },
    );
  }

  /// !NEW COLLAPSE
  Widget _sideBarSwitch(BuildContext context, bool mini, {Color? bgColor}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        /// Header Drawer
        /// only show logo
        DrawerHeaderx(mini: mini),

        /// Drawer Menu
        Expanded(
          child: Container(
            alignment: Alignment(0, -0.6),
            child: SingleChildScrollView(
              child: DrawerMenux(
                padding: EdgeInsets.all(8),
                bgColor: AppTheme.surface(context), // bgColor,
                mini: mini,
              ),
            ),
          ),
        ),

        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              visible: !Responsive.isPhoneLandscape(context),
              child: const DrawerVersionx(),
            ),
            _switchDrawer(mini, context),
          ],
        ),
      ],
    );
  }

  Container _switchDrawer(bool mini, BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 8, bottom: 8),
      child: Flex(
        mainAxisSize: MainAxisSize.min,
        direction: mini ? Axis.vertical : Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 16,
        children: [
          /// Swith bahasa
          Visibility(
            visible: !Responsive.isPhoneLandscape(context),
            child: SwitchLocaleBar(tipe: TipeSwitch.rolling),
          ),

          /// Button Swith Drawer
          Visibility(
            visible: !Responsive.isMobile(context),
            child: ButtonsWidget(
              color: AppColors.white,
              textColor: AppColors.black,
              width: 32,
              height: 32,
              rounded: 16,
              isBorder: true,
              onTap: () {
                getIt<ResponsiveCubit>().switchDrawer(!mini);
              },
              child: Icon(mini ? Icons.last_page : Icons.first_page),
            ),
          ),
        ],
      ),
    );
  }

  Container sloganDrawer() {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.symmetric(vertical: 16),
      child: Text(
        "Start Your day \n& Be \nProductive ✌️",
        style: AppTextStyles.caption,
      ),
    );
  }
}
