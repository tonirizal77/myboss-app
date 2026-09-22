part of 'widgets.dart';

class CardHeaderAnimasi extends StatelessWidget {
  const CardHeaderAnimasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 24, left: 24),
      height: 194,
      decoration: BoxDecoration(color: AppTheme.surface(context)),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 12,
        children: [
          Text(
            LocaleKeys.menu_title.tr(),
            style: AppTextStyles.titleBig1.copyWith(
              color: AppTheme.onSurface(context),
              fontSize: 28,
            ),
          ),
          BlocBuilder<MenuBloc, MenuState>(
            builder: (context, state) {
              final _listToping = state.menuToping.data.toList();

              int _total = 0;
              _listToping.map((el) {
                _total = _total + el.products.length;
              }).toList();

              return Text(
                LocaleKeys.menu_sub_title.tr(args: ['${_total}']),
                style: AppTextStyles.titleBig2.copyWith(
                  color: AppTheme.onSurface(context),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
