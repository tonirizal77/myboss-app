part of 'widgets.dart';

class CardTopingsTitle extends StatelessWidget {
  const CardTopingsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.primaryContainer(context),
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      alignment: Alignment.topLeft,
      child: Text(
        LocaleKeys.menu_toppings_title.tr(),
        style: AppTextStyles.subtitleBig1.copyWith(
          color: AppTheme.onPrimaryContainer(context),
        ),
      ),
    );
  }
}
