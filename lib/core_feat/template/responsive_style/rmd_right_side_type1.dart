/// MARK: Not Used
/// !Only for Pre-Design for New Style
part of 'responsive_style_feat.dart';

class RmdRightSideType1 extends StatelessWidget {
  final Widget child;

  const RmdRightSideType1({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ResponsiveCubit, ResponsiveState>(
      builder: (context, state) {
        return Container(
          color: state.bgColorRight,
          padding: state.paddingRightSide ?? EdgeInsets.zero,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Responsive.isPhoneLandscape(context) ? 0 : state.spaceH2Mc,
            children: [
              /// MARK: Main Header Page
              Visibility(
                visible: !Responsive.isPhoneLandscape(context),
                child: const RmdMainHeader(),
              ),

              /// MARK: Main Content Page
              /// Frame Content Dalam 1
              Expanded(
                child: Container(
                  clipBehavior: Clip.hardEdge,
                  padding: state.paddingMc ?? EdgeInsets.all(16),
                  margin: EdgeInsets.only(
                    /// Aktifkan jika tidak menggunakan sidebar left
                    // left: Responsive.isPhoneLandscape(context) ? 0 : borderRadius,
                    right: Responsive.isPhoneLandscape(context)
                        ? 0
                        : borderRadius,
                    bottom: Responsive.isPhoneLandscape(context)
                        ? 0
                        : borderRadius,
                  ),

                  decoration: BoxDecoration(
                    color: AppColors.grey80,
                    borderRadius: BorderRadius.circular(
                      state.radiusMc ?? borderRadius,
                    ),
                  ),

                  /// Frame Content Dalam 2
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(
                      state.radiusMc ?? borderRadius,
                    ),
                    child: Container(
                      // color: cWhite,
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
