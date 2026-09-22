/// MARK: Not Used
/// !Only for Pre-Design for New Style
part of 'responsive_style_feat.dart';

class RmdRightSideType2 extends StatelessWidget {
  final Widget child;

  const RmdRightSideType2({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        final _shadowStyle = (AppTheme.isDark(context)
            ? shadowStyleDart
            : shadowStyleLight);

        return Container(
          color: state.bgColorRight,
          padding: state.paddingRightSide ?? EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Responsive.isPhoneLandscape(context) ? 0 : state.spaceH2Mc,
            children: [
              /// MARK: Main Header Page
              const RmdMainHeader(),

              /// MARK: Main Content Page
              /// Frame Content Dalam 1
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  padding: state.paddingMc, // ?? EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: state.bgColorMc ?? Colors.white,
                    borderRadius: BorderRadius.circular(
                      state.radiusMc ?? borderRadius,
                    ),
                    boxShadow: _shadowStyle,
                  ),

                  /// Frame Content Dalam 2
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      state.radiusMc ?? borderRadius,
                    ),
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
