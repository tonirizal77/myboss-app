part of 'drawer_widgets.dart';

/// MARK: Not Used
class DrawerItemWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final bool isSelected;
  final VoidCallback? onTap;
  final bool showBadges;
  final EdgeInsetsGeometry? margin, padding;
  final Color? bgColorIcon;

  const DrawerItemWidget({
    super.key,
    this.icon = Icons.file_copy,
    this.text = "-",
    this.isSelected = false,
    this.showBadges = false,
    this.onTap,
    this.margin,
    this.padding,
    this.bgColorIcon,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        final _mini = state.isCollapse;

        return AnimatedSize(
          duration: const Duration(seconds: 1),
          child: Center(
            child: Stack(
              alignment: _mini
                  ? AlignmentDirectional.topEnd
                  : AlignmentDirectional.centerEnd,
              children: [
                ButtonsWidget(
                  isShadow: false,
                  isBorder: false,
                  height: 56,
                  width: _mini ? 56 : null,
                  onTap: onTap,
                  color: isSelected
                      ? AppColors.primary
                      : AppTheme.surface(context),
                  textColor: AppTheme.onSurface(context),
                  margin: margin,
                  padding: padding,
                  rounded: 10,
                  child: _mini ? _onlyIcons(context) : _iconName(context),
                ),

                /// Badges
                // Visibility(
                //   visible: showBadges,
                //   child: Padding(
                //     padding: EdgeInsets.only(
                //       top: _mini ? 4 : 0,
                //       right: _mini ? 2.0 : 8.0,
                //     ),
                //     child: BlocBuilder<OrderAntreanBloc, OrderAntreanState>(
                //       builder: (context, state) {
                //         final _count = state.listCheckin.meta?.total ?? 0;

                //         return BadgesCheckin(show: showBadges, count: _count);
                //       },
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Icon & Teks
  Row _iconName(BuildContext context) {
    return Row(
      spacing: 4,
      children: [
        /// Icon
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.transparent,
          ),
          height: 40,
          width: 40,
          child: Icon(
            icon,
            size: 24,
            color: isSelected ? AppColors.white : AppTheme.onSurface(context),
          ),
        ),

        /// Name
        Expanded(
          child: Text(
            text,
            style: AppTextStyles.body.copyWith(
              fontSize: 16,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              color: isSelected ? AppColors.white : AppTheme.onSurface(context),
            ),
          ),
        ),
      ],
    );
  }

  Widget _onlyIcons(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isSelected
            ? bgColorIcon ?? AppColors.primary
            : AppTheme.surface(context),
      ),
      child: Icon(
        icon,
        size: 24,
        color: isSelected ? AppColors.white : AppTheme.onSurface(context),
      ),
    );
  }
}

/// Item Navigation
class DrawerNavItem extends StatelessWidget {
  final int index;
  final Widget icon;
  final String label;
  final bool isActive;
  final bool isMini;
  final VoidCallback onTap;

  const DrawerNavItem({
    required this.index,
    required this.icon,
    required this.label,
    required this.isActive,
    required this.isMini,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final _colorText = isActive
        ? AppTheme.surface(context)
        : AppTheme.onSurface(context);

    return ButtonsWidget(
      height: 50,
      alignment: Alignment.center,
      color: isActive ? AppTheme.primary(context) : Colors.transparent,
      padding: EdgeInsets.symmetric(horizontal: 8),
      margin: EdgeInsets.only(bottom: 8),
      isBorder: false,
      rounded: 10,
      isShadow: false,
      onTap: onTap,
      child: Row(
        mainAxisSize: .min,
        mainAxisAlignment: .spaceBetween,
        children: [
          Container(alignment: .center, width: 32, height: 32, child: icon),

          Visibility(
            visible: !isMini,
            child: Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  label,
                  style: AppTextStyles.bodyMedium.copyWith(color: _colorText),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
