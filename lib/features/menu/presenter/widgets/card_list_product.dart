part of 'widgets.dart';

class CardListProduct extends StatefulWidget {
  // final String title;
  final DataToping data;

  const CardListProduct({super.key, required this.data});

  @override
  State<CardListProduct> createState() => _CardListProductState();
}

class _CardListProductState extends State<CardListProduct> {
  ProductsModel _selected = const ProductsModel();

  List<ProductsModel> _listProducts = [
    ProductsModel(id: 1, name: 'Lychee Boba Pops', photoMd: Assets.icProduk1),
    ProductsModel(id: 2, name: 'Berry Boba Pops', photoMd: Assets.icProduk2),
    ProductsModel(id: 3, name: 'Matcha Sauce', photoMd: Assets.icProduk3),
    ProductsModel(id: 4, name: 'Nata de Coco', photoMd: Assets.icProduk4),
    ProductsModel(id: 5, name: 'Coconut Jelly', photoMd: Assets.icProduk5),
    ProductsModel(id: 6, name: 'Zesty Yuzu Sauce', photoMd: Assets.icProduk4),
    ProductsModel(id: 7, name: 'Coconut Paradise', photoMd: Assets.icProduk1),
    ProductsModel(id: 8, name: 'Wild Berry Sauce', photoMd: Assets.icProduk5),
    ProductsModel(id: 9, name: 'Earl Grey Sauce', photoMd: Assets.icProduk6),
    ProductsModel(id: 10, name: 'Matcha Sauce', photoMd: Assets.icProduk3),
    ProductsModel(id: 11, name: 'Coconut Paradise', photoMd: Assets.icProduk1),
    ProductsModel(id: 12, name: 'Nata de Coco', photoMd: Assets.icProduk4),
    ProductsModel(id: 13, name: 'Coconut Jelly', photoMd: Assets.icProduk5),
    ProductsModel(id: 14, name: 'Lychee Boba Pops', photoMd: Assets.icProduk1),
    ProductsModel(id: 21, name: 'Berry Boba Pops', photoMd: Assets.icProduk2),
    ProductsModel(id: 31, name: 'Matcha Sauce', photoMd: Assets.icProduk3),
    ProductsModel(id: 41, name: 'Nata de Coco', photoMd: Assets.icProduk4),
    ProductsModel(id: 51, name: 'Coconut Jelly', photoMd: Assets.icProduk5),
    ProductsModel(id: 61, name: 'Zesty Yuzu Sauce', photoMd: Assets.icProduk4),
    ProductsModel(id: 71, name: 'Coconut Paradise', photoMd: Assets.icProduk1),
    ProductsModel(id: 81, name: 'Wild Berry Sauce', photoMd: Assets.icProduk5),
    ProductsModel(id: 91, name: 'Earl Grey Sauce', photoMd: Assets.icProduk6),
    ProductsModel(id: 101, name: 'Matcha Sauce', photoMd: Assets.icProduk3),
    ProductsModel(id: 111, name: 'Coconut Paradise', photoMd: Assets.icProduk1),
    ProductsModel(id: 121, name: 'Nata de Coco', photoMd: Assets.icProduk4),
    ProductsModel(id: 131, name: 'Coconut Jelly', photoMd: Assets.icProduk5),
  ];

  @override
  void initState() {
    super.initState();

    _listProducts = widget.data.products.toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 24, right: 24),
      color: AppTheme.primaryContainer(context),
      child: Container(
        padding: EdgeInsets.fromLTRB(8, 16, 8, 0),
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: AppTheme.surface(context),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Column(
          mainAxisSize: .min,
          spacing: 8,
          children: [
            Container(
              height: 28,
              alignment: .center,
              child: Text(
                widget.data.name.capitalize(),
                style: AppTextStyles.title,
              ),
            ),

            Expanded(
              child: ResponsiveGridOrWrap(
                key: ValueKey("products-${widget.data.id}"),
                tipe: TipeView.gridview,
                maxHeight: 138,
                useScrollView: true,
                mobile: 3,
                tablet: 4,
                spacing: 0,
                runSpacing: 0,
                listData: _listProducts,
                child: (i) {
                  final _data = i;
                  return CardProduct(
                    data: _data,
                    isSelected: _selected == _data,
                    onTap: () {
                      PrintHelper.printJson(_data);

                      setState(() => _selected = _data);
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
