/// MARK: Not Used
/// !Only for Pre-Design for New Style
///
part of 'responsive_style_feat.dart';

class RmdRightSideType3 extends StatelessWidget {
  final Widget child;

  const RmdRightSideType3({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        final _shadowStyle = (AppTheme.isDark(context)
            ? shadowStyleDart
            : shadowStyleLight);

        return Container(
          margin: EdgeInsets.fromLTRB(0, 16, 16, 16),
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            color: state.bgColorRight,
            boxShadow: state.isShadowSideRight ? _shadowStyle : null,
            borderRadius: BorderRadius.circular(state.radiusRight ?? 0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Responsive.isPhoneLandscape(context) ? 0 : state.spaceH2Mc,
            children: [
              /// MARK: Main Page Header
              const RmdMainHeader(),

              /// MARK: Main Content Page
              /// Frame Content Dalam 1
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  padding:
                      state.paddingMc ??
                      state.paddingRightSide ??
                      EdgeInsets.zero,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(state.radiusMc ?? 0),
                    boxShadow: state.isShadowMc ? _shadowStyle : null,
                    // color: Colors.red,
                  ),

                  /// Frame Content Dalam 2
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(state.radiusMc ?? 0),
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: child,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
