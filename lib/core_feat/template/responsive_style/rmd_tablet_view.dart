part of 'responsive_style_feat.dart';

/// View for Tablet and Desktop
/// - call from [ResponsiveRootPage]
///
class RmdTabletView extends StatelessWidget {
  final Widget child;

  const RmdTabletView({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        final _bgColor = AppTheme.surface(context);

        final _shadowStyle = (AppTheme.isDark(context)
            ? shadowStyleDart
            : shadowStyleLight);

        /// Sytle 2 specific for padding
        final StyleApp _style = RmdStyleApp.shared.getStyleApp.value;
        final _top = MediaQuery.of(context).viewPadding.top;

        return CardCustom(
          // state.paddingMain
          padding: _style == StyleApp.theme2
              ? EdgeInsets.fromLTRB(16, _top, 16, 16)
              : EdgeInsets.only(top: _top),
          color: _bgColor,
          child: Flex(
            direction: Axis.horizontal,
            mainAxisSize: MainAxisSize.min,
            spacing: state.spaceL2R,
            children: [
              /// MARK:[RmdLeftSide]
              /// Left Side for SideBar only for Size Tablet and Desktop
              // Switch wide sidebar with Size Device
              AnimatedSize(
                duration: Duration(milliseconds: 300),
                child: CardCustom(
                  padding: state.paddingLeftSide,
                  isShadow: state.isShadowSideLeft,
                  shadow: _shadowStyle,
                  radius: state.radiusLeft,

                  /// !Testing
                  color: AppTheme.surface(
                    context,
                  ), // state.bgColorLeft ?? _bgColor,
                  alignment: Alignment.center,
                  constraints: BoxConstraints(
                    maxWidth: state.isCollapse
                        ? 100
                        : Responsive.sizex(
                            context,
                            mobileL: 180,
                            tablet: state.widthSideLeft ?? 180,
                            desktop: state.widthSideLeft ?? 200,
                          ),
                  ),
                  // child: RmdLeftSide(listMenu: AppSetting.menuApp),
                  child: const RmdLeftSide(),
                ),
              ),

              /// MARK: [RmdRightSide] Right Side
              /// Responsive Page
              /// MARK: Main Content
              /// - Header and Content
              Flexible(
                child: RmdRightSide(
                  header: const RmdMainHeader(),
                  child: child,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
