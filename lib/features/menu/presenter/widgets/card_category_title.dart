part of 'widgets.dart';

class CardCategoryTitle extends StatelessWidget {
  const CardCategoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Text(
        LocaleKeys.menu_yogurt_title.tr(),
        style: AppTextStyles.title.copyWith(color: AppTheme.primary(context)),
      ),
    );
  }
}
