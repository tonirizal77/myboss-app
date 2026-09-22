part of 'main_widgets.dart';

/// A custom bottom navigation bar with 4 tabs and an active indicator.
///
/// Matches the design and behavior of the React Native version.
class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavCubit, BottomNavState>(
      builder: (context, state) {
        return Container(
          clipBehavior: Clip.hardEdge,
          padding: SyncUI.isIOS ? EdgeInsets.only(bottom: 24) : null,
          decoration: BoxDecoration(
            color: AppTheme.surface(context),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.08),
                blurRadius: 4,
                offset: const Offset(0, -1),
              ),
              BoxShadow(
                color: Colors.black.withValues(alpha: 0.05),
                blurRadius: 6,
                offset: const Offset(0, -1),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Row(
                children: [
                  _BottomNavItem(
                    index: 0,
                    // icon: Assets.svgHome,
                    icon: SvgPicture.asset(
                      Assets.svgHome,
                      color: _colorIcon(context, 0, state.currentIndex),
                    ),
                    label: LocaleKeys.bottom_nav_nav1.tr(),
                    isActive: state.currentIndex == 0,
                  ),

                  _BottomNavItem(
                    index: 1,
                    // icon: Assets.svgMenu,
                    icon: SvgPicture.asset(
                      Assets.svgMenu,
                      color: _colorIcon(context, 1, state.currentIndex),
                    ),
                    label: LocaleKeys.bottom_nav_nav2.tr(),
                    isActive: state.currentIndex == 1,
                  ),
                ],
              ),

              Row(
                children: [
                  _BottomNavItem(
                    index: 2,
                    icon: SvgPicture.asset(
                      Assets.svgStores,
                      color: _colorIcon(context, 2, state.currentIndex),
                    ),
                    label: LocaleKeys.bottom_nav_nav3.tr(),
                    isActive: state.currentIndex == 2,
                  ),

                  _BottomNavItem(
                    index: 3,
                    icon: Container(
                      height: 24,
                      width: 24,
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          width: 2,
                          strokeAlign: BorderSide.strokeAlignOutside,
                          color: AppColors.primary,
                        ),
                        image: DecorationImage(
                          image: AssetImage(Assets.icMaskot1),
                        ),
                      ),
                    ),
                    label: LocaleKeys.bottom_nav_nav4.tr(),
                    isActive: state.currentIndex == 3,
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Color _colorIcon(BuildContext context, int index, int current) {
    final colorScheme = Theme.of(context).colorScheme;
    final activeColor = colorScheme.primary;
    final inactiveColor = colorScheme.onSurface.withValues(alpha: 0.4);

    return index == current ? activeColor : inactiveColor;
  }
}

/// Item Navigation
class _BottomNavItem extends StatelessWidget {
  final int index;
  final Widget icon;
  final String label;
  final bool isActive;

  const _BottomNavItem({
    required this.index,
    required this.icon,
    required this.label,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final activeColor = colorScheme.primary;
    final inactiveColor = colorScheme.onSurface.withValues(alpha: 0.4);

    return ButtonsWidget(
      height: 64,
      width: 82,
      alignment: Alignment.center,
      color: Colors.transparent,
      padding: EdgeInsets.zero,
      isBorder: false,
      rounded: 0,
      onTap: () => context.read<BottomNavCubit>().changeTab(index),
      child: Stack(
        alignment: .bottomCenter,
        children: [
          /// Box Item Navbar
          Column(
            mainAxisAlignment: .center,
            children: [
              icon,

              const SizedBox(height: 2),

              Text(
                label,
                style: AppTextStyles.subtitleSmall.copyWith(
                  color: isActive ? activeColor : inactiveColor,
                  fontSize: 12,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),

          /// Indicator Bottom
          Visibility(
            visible: isActive,
            child: Container(
              height: 4,
              width: 24,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8),
                  topRight: Radius.circular(8),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// Bottom NavbarAction
class _BottomNavbarAction {
  const _BottomNavbarAction();

  static void onChange(BuildContext context, int index) {
    final _oldIndex = getIt<BottomNavCubit>().state.currentIndex;

    if (_oldIndex != index) {
      context.read<BottomNavCubit>().changeTab(index);
    }
  }
}
