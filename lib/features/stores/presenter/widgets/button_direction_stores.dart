part of 'widgets.dart';

class ButtonDirectionStores extends StatelessWidget {
  final VoidCallback onTap;

  const ButtonDirectionStores({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: CardCustom(
        color: AppTheme.surface(context),
        margin: EdgeInsets.only(bottom: 8, right: 8),
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Row(
          spacing: 4,
          mainAxisSize: .min,
          children: [
            Text(
              LocaleKeys.stores_direction.tr(),
              style: AppTextStyles.button.copyWith(
                color: AppTheme.onSurface(context),
              ),
            ),
            Icon(SolarIconsOutline.squareArrowRightUp),
          ],
        ),
      ),
    );
  }
}
