part of 'widgets.dart';

class CardBottomMenu extends StatelessWidget {
  const CardBottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: AppTheme.primaryContainer(context),
      padding: EdgeInsets.fromLTRB(24, 16, 24, 64),
      child: Text(
        LocaleKeys.menu_info.tr(),
        style: AppTextStyles.titleBig1.copyWith(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
