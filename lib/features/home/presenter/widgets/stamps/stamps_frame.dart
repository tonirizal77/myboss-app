part of '../widgets.dart';

class StampsFrame extends StatelessWidget {
  const StampsFrame({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Responsive.isMobile(context) ? AppTheme.surface(context) : null,
      padding: Responsive.isMobile(context)
          ? EdgeInsets.all(kDefaultMargin)
          : EdgeInsets.all(0),
      child: Column(
        mainAxisSize: .min,
        spacing: 16,
        children: [
          /// Title
          _title(),

          /// Frame
          Container(
            width: 312,
            height: 110,
            color: AppTheme.surface(context),
            child: Stack(
              children: [
                /// Frame Stamps
                ImageAssets(width: 312, radius: 0, image: Assets.icFrameStamp),

                /// Stamps
                _content(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _content() {
    return BlocBuilder<StampsCubit, StampsState>(
      builder: (context, state) {
        final _totalFree = state.stamps.stampFreeCount;
        final _stampNeeded = state.stamps.stampsNeeded;

        return Container(
          alignment: .center,
          width: 312,
          height: 110,
          padding: EdgeInsets.fromLTRB(24, 12, 24, 12),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            spacing: 8,
            children: [
              /// Left
              Flexible(
                child: Container(
                  child: Column(
                    mainAxisSize: .min,
                    crossAxisAlignment: .start,
                    children: [
                      Text(
                        LocaleKeys.home_stamps_to_go1.tr(
                          args: ['${_stampNeeded}'],
                        ),
                        style: AppTextStyles.title.copyWith(
                          color: AppColors.primary,
                        ),
                      ),
                      Text(
                        LocaleKeys.home_stamps_to_go2.tr(),
                        style: AppTextStyles.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),

              /// Right
              CupCheckInfo(point: _totalFree),
            ],
          ),
        );
      },
    );
  }

  SizedBox _title() {
    return SizedBox(
      width: 312,
      child: Row(
        mainAxisAlignment: .center,
        spacing: 10,
        children: [
          ImageAssets(width: 24, image: Assets.icSmallCupGreen),
          Text(
            "ha-yo ${LocaleKeys.home_title.tr()}",
            style: AppTextStyles.title,
          ),
        ],
      ),
    );
  }
}
