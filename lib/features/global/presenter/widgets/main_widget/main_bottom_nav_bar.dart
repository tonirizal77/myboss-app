part of 'main_widgets.dart';

/// Bottom navigation bar with 4 tabs and an active indicator.
///
/// Signed-in users get a docked FAB (member card) between the two menu
/// groups, so a gap is left in the middle. For guests the FAB is hidden and
/// the gap shrinks so the 4 menus spread evenly (see Figma `navigation menu`).
class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({super.key});

  /// Gap between the left and right menu groups.
  static const double _gapGuest = 4;
  static const double _gapWithFab = 32;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      buildWhen: (previous, current) =>
          previous.statusLogin != current.statusLogin,
      builder: (context, userState) {
        final isLoggedIn = userState.statusLogin == Status.success;

        return BlocBuilder<BottomNavCubit, BottomNavState>(
          builder: (context, state) {
            final current = state.currentIndex;

            return Container(
              clipBehavior: Clip.hardEdge,
              padding: SyncUI.isIOS ? const EdgeInsets.only(bottom: 24) : null,
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
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        _item(
                          context,
                          0,
                          Assets.icNavHome,
                          LocaleKeys.bottom_nav_nav1,
                          current,
                        ),
                        _item(
                          context,
                          1,
                          Assets.icNavProduct,
                          LocaleKeys.bottom_nav_nav2,
                          current,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: isLoggedIn ? _gapWithFab : _gapGuest),
                  Expanded(
                    child: Row(
                      children: [
                        _item(
                          context,
                          2,
                          Assets.icNavPromo,
                          LocaleKeys.bottom_nav_nav3,
                          current,
                        ),
                        _item(
                          context,
                          3,
                          Assets.icNavAccount,
                          LocaleKeys.bottom_nav_nav4,
                          current,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  Widget _item(
    BuildContext context,
    int index,
    String iconAsset,
    String labelKey,
    int current,
  ) {
    final color = _colorIcon(context, index, current);

    return Expanded(
      child: _BottomNavItem(
        index: index,
        icon: SvgPicture.asset(
          iconAsset,
          width: 24,
          height: 24,
          colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
        ),
        label: labelKey.tr(),
        isActive: index == current,
      ),
    );
  }

  Color _colorIcon(BuildContext context, int index, int current) {
    final colorScheme = Theme.of(context).colorScheme;

    return index == current
        ? colorScheme.primary
        : colorScheme.onSurfaceVariant;
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
    final inactiveColor = colorScheme.onSurfaceVariant;

    return ButtonsWidget(
      height: 64,
      alignment: Alignment.center,
      color: Colors.transparent,
      padding: EdgeInsets.zero,
      isBorder: false,
      rounded: 0,
      onTap: () => context.read<BottomNavCubit>().changeTab(index),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          /// Box Item Navbar
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,

              const SizedBox(height: 2),

              Text(
                label,
                style: MyBossTextStyles.subtitleSmall.copyWith(
                  color: isActive ? activeColor : inactiveColor,
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
              decoration: const BoxDecoration(
                color: MyBossColors.primary,
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
