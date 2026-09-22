part of 'widgets.dart';

/// List Category Toping
class CardListCategoryMobile extends StatefulWidget {
  const CardListCategoryMobile({super.key});

  @override
  State<CardListCategoryMobile> createState() => _CardListCategoryMobileState();
}

class _CardListCategoryMobileState extends State<CardListCategoryMobile> {
  ProductsModel _selected = const ProductsModel();

  @override
  void initState() {
    super.initState();

    MenuFlows.getListYogurt(context, param: {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        final List<ProductsModel> _listData = state.menuYogurt.data.toList();

        return Container(
          color: AppTheme.surfaceContainerLow(context),
          alignment: Alignment.bottomRight,
          child: Column(
            crossAxisAlignment: .start,
            children: [
              /// Title
              const CardCategoryTitle(),

              SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(_listData.length, (i) {
                    final _data = _listData[i];

                    return CardCategory(
                      data: _listData[i],
                      isSelected: _selected == _data,
                      onTap: () {
                        PrintHelper.printJson(_data);

                        setState(() => _selected = _data);
                      },
                    );
                  }),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
