part of 'widgets.dart';

class CardListToping extends StatefulWidget {
  // final DataToping data;

  const CardListToping({
    super.key,
    // required this.data
  });

  @override
  State<CardListToping> createState() => _CardListTopingState();
}

class _CardListTopingState extends State<CardListToping> {
  ProductsModel _selected = const ProductsModel();

  @override
  void initState() {
    super.initState();

    PrintHelper.printError("__initstate Card List Toping");
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MenuBloc, MenuState>(
      builder: (context, state) {
        final List<DataToping> _listData = state.menuToping.data.toList();

        return Container(
          color: AppTheme.primaryContainer(context),
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 16,
            runSpacing: 16,
            children: List.generate(
              _listData.length,
              (i) => _cardListToping(context, _listData[i]),
            ),
          ),
        );
      },
    );
  }

  Container _cardListToping(BuildContext context, DataToping data) {
    final _listProducts = data.products.toList();

    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppTheme.surface(context),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 8, 0, 8),
            height: 28,
            alignment: .center,
            child: Text(data.name.capitalize(), style: AppTextStyles.title),
          ),

          // Text("${_listProducts.length}"),

          /// Looping Product Items
          Container(
            // color: Colors.amber,
            alignment: _listProducts.length > 1
                ? Alignment.topCenter
                : Alignment.topLeft,
            child: Wrap(
              runAlignment: WrapAlignment.spaceBetween,
              children: List.generate(_listProducts.length, (i) {
                final _item = _listProducts[i];

                return CardProduct(
                  data: _item,
                  isSelected: _selected == _item,
                  onTap: () {
                    PrintHelper.printJson(_item);
                    setState(() => _selected = _item);
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
