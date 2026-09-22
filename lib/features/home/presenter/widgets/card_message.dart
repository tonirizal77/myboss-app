part of 'widgets.dart';

class CardMessage extends StatelessWidget {
  final int tiers;
  final EdgeInsetsGeometry? padding;

  const CardMessage({super.key, this.padding, required this.tiers});

  @override
  Widget build(BuildContext context) {
    /// Label Info
    final _tierInfo = tiers == 1
        ? LocaleKeys.home_tier_info_12.tr()
        : tiers == 2
        ? LocaleKeys.home_tier_info_12.tr()
        : LocaleKeys.home_tier_info_3.tr();

    final _tierLabel = tiers == 1
        ? LocaleKeys.home_tier_label2.tr()
        : LocaleKeys.home_tier_label3.tr();

    /// Card Color
    final _tierBgColor = tiers == 1 ? AppColors.coolerBg : AppColors.coolestBg;

    /// Text Color
    final _tierColor = AppTextStyles.titleBig2.copyWith(
      color: tiers == 1 ? AppColors.cooler : AppColors.coolest,
    );

    /// Icon
    final _iconTier = tiers == 1 ? Assets.icTierCooler : Assets.icTierCoolest;

    return CardCustom(
      alignment: Alignment.center,
      radius: 0,
      padding: padding ?? EdgeInsets.all(40),
      color: _tierBgColor,
      child: Column(
        mainAxisAlignment: .center,
        spacing: 12,
        children: [
          Text(
            _tierInfo,
            style: AppTextStyles.titleBig1.copyWith(color: AppColors.black),
            textAlign: TextAlign.center,
          ),
          Row(
            spacing: 8,
            mainAxisAlignment: .center,
            children: [
              Text(_tierLabel, style: _tierColor, textAlign: TextAlign.center),
              Image.asset(_iconTier, height: 32),
            ],
          ),
        ],
      ),
    );
  }
}
