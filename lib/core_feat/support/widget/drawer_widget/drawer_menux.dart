part of 'drawer_widgets.dart';

/// List Menu Drawer
class DrawerMenux extends StatelessWidget {
  final bool mini;
  final Color? bgColor;
  final BorderRadiusGeometry? radius;
  final EdgeInsetsGeometry? padding;

  const DrawerMenux({
    Key? key,
    this.mini = false,
    this.bgColor,
    this.radius,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: bgColor, borderRadius: radius),
      padding: padding ?? EdgeInsets.all(8),
      child: SingleChildScrollView(primary: true, child: listViewMenu()),
    );
  }

  Color _colorIcon(BuildContext context, int index, int current) {
    final activeColor = AppTheme.surface(context);
    final inactiveColor = AppTheme.onSurface(context);

    return index == current ? activeColor : inactiveColor;
  }

  Widget listViewMenu() {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        List<DataMap> _listMenu = state.hasLogin
            ? AppMenu.menuDrawerLogin
            : AppMenu.menuDrawerNotLogin;

        return ListView.builder(
          padding: EdgeInsets.zero,
          primary: false,
          shrinkWrap: true,
          itemCount: _listMenu.length,
          itemBuilder: (context, index) {
            /// Item
            final String _icon = _listMenu[index]['icon'] as String;
            final _label = _listMenu[index]['label'] as String;

            final _currIndex = context
                .watch<BottomNavCubit>()
                .state
                .currentIndex;
            final bool _isSelected = _currIndex == index;

            return DrawerNavItem(
              index: index,
              icon: (index == 3)
                  ? Image.asset(_icon, width: 32, height: 32)
                  : SvgPicture.asset(
                      _icon,
                      color: _colorIcon(context, index, _currIndex),
                    ),
              label: _label.tr(),
              isActive: _isSelected,
              isMini: mini,
              onTap: () => MainPageFlow.onChangeTab(context, index),
            );
          },
        );
      },
    );
  }
}
