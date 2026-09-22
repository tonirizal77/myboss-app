part of '../widgets.dart';

class CardStampsItem extends StatelessWidget {
  final StampsHistory data;
  final VoidCallback onTap;

  const CardStampsItem({super.key, required this.data, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final _date = DateTime.parse(data.earnedDate).shortDate;
    final _isBonus =
        data.type == "UPGRADE_BONUS" || data.type.contains("BONUS");

    return CardCustom(
      onTap: onTap,
      color: AppTheme.surfaceContainerLow(context),
      padding: EdgeInsets.all(8),
      radius: 8,
      isBorder: !Responsive.isMobile(context),
      child: Column(
        mainAxisSize: .min,
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                _isBonus
                    ? LocaleKeys.stamps_bonus.tr()
                    : LocaleKeys.stamps_earned.tr(),
                style: AppTextStyles.subtitle,
              ),
              Text(
                '+ ${LocaleKeys.stamps_sub_title.tr()}',
                style: AppTextStyles.subtitle.copyWith(
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(_date, style: AppTextStyles.caption),
              Text('${data.balancePoints}', style: AppTextStyles.caption),
            ],
          ),
        ],
      ),
    );
  }
}
