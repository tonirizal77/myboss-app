part of '../widgets.dart';

/// Product grid: picture + name (max 2 lines). 3 columns on phones, 5 on
/// tablets, 6 on desktop; the row height follows the column width so the
/// picture stays square.
class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key, required this.products});

  final List<Product> products;

  static const double _gap = 12;
  static const double _nameHeight = 48;

  static int columns(BuildContext context) => Responsive.isDesktop(context)
      ? 6
      : Responsive.isTablet(context)
      ? 5
      : 3;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final cols = columns(context);
        final cell = (constraints.maxWidth - _gap * (cols - 1)) / cols;

        return ResponsiveGridOrWrap<Product>(
          tipe: TipeView.gridview,
          column: cols.toDouble(),
          maxHeight: cell + _nameHeight,
          spacing: _gap,
          runSpacing: 8,
          padding: EdgeInsets.zero,
          paddingBody: EdgeInsets.zero,
          top: 0,
          // The page scrolls; the grid must not grab the drag.
          physics: const NeverScrollableScrollPhysics(),
          isSeperator: false,
          listData: products,
          child: (p) => ProductTile(product: p),
        );
      },
    );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({super.key, required this.product, this.width, this.onTap});

  final Product product;

  /// Defaults to opening the product details.
  final VoidCallback? onTap;

  /// Fixed width (horizontal lists); null = fill the grid cell.
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(8),
      onTap: onTap ?? () => ProductDetailSheet.show(context, product),
      child: SizedBox(
        width: width,
        child: Column(
          children: [
            AspectRatio(aspectRatio: 1, child: ProductImage(product.cover)),
            const SizedBox(height: 4),
            Text(
              product.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: MyBossTextStyles.body.copyWith(
                color: MyBossColors.onSurface,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// "All" view section: category title, a preview of full rows (3x3 on
/// phones, 2 rows on wider screens), See more.
class ProductSection extends StatelessWidget {
  const ProductSection({
    super.key,
    required this.category,
    required this.products,
  });

  final ProductCategory category;
  final List<Product> products;

  static int preview(BuildContext context) {
    final cols = ProductGrid.columns(context);
    return cols * (cols == 3 ? 3 : 2);
  }

  @override
  Widget build(BuildContext context) {
    final preview = ProductSection.preview(context);

    return Padding(
      padding: const EdgeInsets.only(bottom: 48),
      child: Column(
        children: [
          Text(
            category.name,
            style: MyBossTextStyles.title.copyWith(
              color: MyBossColors.onSurface,
            ),
          ),
          const SizedBox(height: 24),
          ProductGrid(products: products.take(preview).toList()),
          if (products.length > preview) ...[
            const SizedBox(height: 16),
            MyBossButton(
              label: LocaleKeys.product_see_more.tr(),
              role: MyBossButtonRole.secondary,
              trailing: Icon(
                Icons.arrow_forward,
                size: 20,
                color: MyBossColors.onSurface,
              ),
              onPressed: () =>
                  context.read<ProductCubit>().selectCategory(category.id),
            ),
          ],
        ],
      ),
    );
  }
}

/// Figma `not found`.
class ProductEmpty extends StatelessWidget {
  const ProductEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 48),
      decoration: BoxDecoration(
        color: MyBossColors.surfaceContainer,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Text('📦', style: TextStyle(fontSize: 96)),
          const SizedBox(height: 24),
          Text(
            LocaleKeys.product_not_found.tr(),
            textAlign: TextAlign.center,
            style: MyBossTextStyles.title.copyWith(
              color: MyBossColors.onSurfaceVariant,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
