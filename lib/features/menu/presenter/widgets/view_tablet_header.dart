part of 'widgets.dart';

class ViewTabletHeader extends StatelessWidget {
  const ViewTabletHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.primaryContainer(context),
      child: Column(
        mainAxisSize: .min,
        crossAxisAlignment: .start,
        children: [_headerContent(context), _bottomContent()],
      ),
    );
  }

  Expanded _bottomContent() {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(color: Colors.green, child: const CardListToping()),
      ),
    );
  }

  Stack _headerContent(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisSize: .min,
          children: [
            Flex(
              direction: Axis.horizontal,
              crossAxisAlignment: .end,
              children: [
                /// Category Topings
                Expanded(child: const CardListCategory()),

                /// Header Animasi
                Expanded(child: const CardHeaderAnimasi()),
              ],
            ),

            /// Header Title Toping
            Container(
              color: AppTheme.primaryContainer(context),
              child: Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  const CardTopingsTitle(),
                  Padding(
                    padding: const EdgeInsets.only(right: 32.0),
                    child: Text(
                      LocaleKeys.menu_info.tr(),
                      style: AppTextStyles.title.copyWith(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        const CardAnimMaskot(heightBox: 250),
      ],
    );
  }

  ResponsiveGridOrWrap<DataToping> _listDataToping(
    BuildContext context,
    List<DataToping> _listData,
  ) {
    return ResponsiveGridOrWrap(
      bgColor: AppTheme.primaryContainer(context),
      tipe: TipeView.gridview,
      maxHeight: 400 - 16,
      tablet: 2,
      desktop: 2,
      runSpacing: 16,
      spacing: 16,
      padding: EdgeInsets.zero,
      listData: _listData,
      child: (w) => CardListProduct(data: w),
    );
  }
}
