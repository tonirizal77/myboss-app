part of '../widgets.dart';

class StampsWidget extends StatelessWidget {
  final int index; // indexing
  final bool inRange; // helper
  final bool current; // total of stamps
  final bool isFree; // Break of Free = [4,8,12]
  final int maxStamps; // Max Stamps = [25,50,75]
  final int tiers; // Current Tiers = 1 -> 1/2/3
  final int totalStamps; //

  const StampsWidget({
    super.key,
    this.index = 0,
    this.inRange = false,
    this.current = false,
    this.isFree = false,
    this.maxStamps = 0,
    this.tiers = 1,
    this.totalStamps = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      width: 72,
      decoration: _decoration(context),
      child: Stack(
        children: [
          /// Back Image
          _boxImage(),

          /// Tiers Badges
          _tiersOfBadges(),

          /// Checklist
          _checklist(),

          /// Label Free
          _labelFree(context),

          /// Label Start
          _startLabel(context),
        ],
      ),
    );
  }

  BoxDecoration _decoration(BuildContext context) {
    // ignore: unused_local_variable
    Color _bgColor = tiers == 1
        ? AppColors.cool
        : tiers == 2
        ? AppColors.cooler.lighten(50)
        : AppColors.coolest.lighten(50);

    return BoxDecoration(
      color: current || inRange
          ? AppColors.primary
          : Colors.transparent, // !Circle (last position)
      borderRadius: current && inRange
          ? BorderRadius.only(
              topRight: Radius.circular(36),
              bottomRight: Radius.circular(36),
            )
          : null,
    );
  }

  Container _boxImage() {
    return Container(
      alignment: .center,
      child: Stack(
        alignment: .center,
        children: [
          /// Start for Animations
          _animaStart(),

          /// Free for Animations
          _animation(),

          _image(),
        ],
      ),
    );
  }

  ImageAssets _image() {
    return ImageAssets(
      width: 35,
      height: isFree
          ? 54
          : inRange && inRange
          ? 45
          : 35,
      image: isFree
          ? Assets.icBigCup
          : inRange && inRange
          ? Assets.icSmallCupGreen
          : Assets.icSmallCupGrey,
    );
  }

  Visibility _animation() {
    return Visibility(
      visible: current,
      child: RippleAnimation(
        repeat: true,
        minRadius: 18,
        ripplesCount: 5,
        color: Colors.yellow,
        child: Container(
          height: 16,
          width: 16,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.yellow,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }

  Visibility _animaStart() {
    return Visibility(
      visible: index == 1 && totalStamps == 0,
      child: RippleAnimation(
        repeat: true,
        minRadius: 18,
        ripplesCount: 5,
        color: AppColors.primary,
        child: Container(
          height: 16,
          width: 16,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }

  Visibility _startLabel(BuildContext context) {
    final _labelColor = totalStamps == 1
        ? inRange || current
              ? AppTheme.isDark(context)
                    ? AppColors.black
                    : AppColors.white
              : AppTheme.isDark(context)
              ? AppColors.white
              : AppColors.black
        : AppTheme.isDark(context)
        ? AppColors.white
        : AppColors.black;

    return Visibility(
      visible: index == 1 && totalStamps == 0,
      child: Align(
        alignment: Alignment(0, 0.8),
        child: Text(
          "Start",
          style: AppTextStyles.hint.copyWith(
            fontWeight: FontWeight.bold,
            color: _labelColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Visibility _labelFree(BuildContext context) {
    final _labelColor = isFree
        ? inRange || current
              ? AppColors.white
              : AppTheme.isDark(context)
              ? AppColors.white
              : AppColors.black
        : AppTheme.isDark(context)
        ? AppColors.white
        : AppColors.black;

    return Visibility(
      visible: isFree,
      child: Align(
        alignment: Alignment(0, 1),
        child: Text(
          LocaleKeys.home_free.tr(),
          style: AppTextStyles.hint.copyWith(
            fontWeight: FontWeight.bold,
            color: _labelColor,
            fontSize: 12,
          ),
        ),
      ),
    );
  }

  Visibility _checklist() {
    return Visibility(
      visible: isFree && inRange,
      child: Align(
        alignment: AlignmentGeometry.xy(0.5, -0.8),
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.check_circle, color: Colors.yellow, size: 24),
        ),
      ),
    );
  }

  Visibility _tiersOfBadges() {
    String _icon = Assets.icTierCool;

    if (tiers == 1) {
      _icon = Assets.icTierCooler;
    }

    if (tiers == 2) {
      _icon = Assets.icTierCoolest;
    }

    return Visibility(
      visible: index == maxStamps && tiers < 3,
      child: Container(
        margin: const EdgeInsets.only(top: 6, left: 6),
        height: 20,
        child: Image.asset(_icon),
      ),
    );
  }
}
