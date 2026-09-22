part of 'widgets.dart';

class CardListCategory extends StatefulWidget {
  const CardListCategory({super.key});

  @override
  State<CardListCategory> createState() => _CardListCategoryState();
}

class _CardListCategoryState extends State<CardListCategory> {
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
          // alignment: Alignment.bottomRight,
          height: 194,
          child: Column(
            crossAxisAlignment: .start,
            mainAxisAlignment: .spaceBetween,
            children: [
              /// Title
              const CardCategoryTitle(),

              /// List Category Toping
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
