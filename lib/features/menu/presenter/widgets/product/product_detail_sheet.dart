part of '../widgets.dart';

/// Product details (Figma `product details`), as a sheet on phones and a
/// dialog on wider windows: photo gallery with a "New"
/// badge and page counter, name, description, specifications and related
/// products. Opening a related product swaps the content in place.
class ProductDetailSheet {
  ProductDetailSheet._();

  static Future<void> show(BuildContext context, Product product) {
    final catalog = context.read<ProductCubit>().state.catalog;

    // Sheet on phones, dialog on tablet / desktop.
    return MyBossBottomSheet.adaptive<void>(
      context,
      builder: (_) => _ProductDetailBody(product: product, catalog: catalog),
    );
  }
}

class _ProductDetailBody extends StatefulWidget {
  const _ProductDetailBody({required this.product, required this.catalog});

  final Product product;
  final ProductCatalog catalog;

  @override
  State<_ProductDetailBody> createState() => _ProductDetailBodyState();
}

class _ProductDetailBodyState extends State<_ProductDetailBody> {
  final _scroll = ScrollController();
  late Product _product = widget.product;

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  void _open(Product product) {
    setState(() => _product = product);
    _scroll.jumpTo(0);
  }

  @override
  Widget build(BuildContext context) {
    final related = [
      for (final id in _product.relatedIds) ?widget.catalog.byId(id),
    ];

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.85,
      child: ListView(
        controller: _scroll,
        padding: EdgeInsets.zero,
        children: [
          _Gallery(key: ValueKey(_product.id), product: _product),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _product.name,
                  style: MyBossTextStyles.titleBig2.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
                if (_product.description.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  _heading(LocaleKeys.product_description.tr()),
                  const SizedBox(height: 8),
                  Text(
                    _product.description,
                    style: MyBossTextStyles.bodyBig2.copyWith(
                      color: MyBossColors.onSurfaceVariant,
                    ),
                  ),
                ],
                if (_product.specs.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  _heading(LocaleKeys.product_specifications.tr()),
                  const SizedBox(height: 12),
                  _SpecTable(specs: _product.specs),
                ],
                if (related.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  _heading(LocaleKeys.product_related.tr()),
                  const SizedBox(height: 12),
                  SizedBox(
                    height: 156,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: related.length,
                      separatorBuilder: (_, _) => const SizedBox(width: 12),
                      itemBuilder: (_, i) => ProductTile(
                        product: related[i],
                        width: 100,
                        onTap: () => _open(related[i]),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _heading(String text) => Text(
    text,
    style: MyBossTextStyles.subtitleBig2.copyWith(
      color: MyBossColors.onSurface,
    ),
  );
}

class _Gallery extends StatefulWidget {
  const _Gallery({super.key, required this.product});

  final Product product;

  @override
  State<_Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<_Gallery> {
  int _page = 0;

  bool _inDialog(BuildContext context) =>
      MediaQuery.sizeOf(context).width >= 600;

  @override
  Widget build(BuildContext context) {
    final images = widget.product.images;

    return SizedBox(
      height: 320,
      child: Stack(
        children: [
          PageView.builder(
            itemCount: images.length,
            onPageChanged: (i) => setState(() => _page = i),
            itemBuilder: (_, i) => Padding(
              padding: const EdgeInsets.all(16),
              child: ProductImage(images[i]),
            ),
          ),
          if (widget.product.isNew)
            Positioned(
              top: 12,
              left: 12,
              child: MyBossStatusChip(
                label: LocaleKeys.product_new_badge.tr(),
                kind: MyBossChipKind.success,
              ),
            ),
          if (images.length > 1)
            Positioned(
              // Dialogs put the close button in the top-right corner.
              top: _inDialog(context) ? null : 12,
              bottom: _inDialog(context) ? 12 : null,
              right: 12,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: MyBossColors.surfaceContainer.withValues(alpha: 0.8),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text(
                  '${_page + 1}/${images.length}',
                  style: MyBossTextStyles.body.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}

class _SpecTable extends StatelessWidget {
  const _SpecTable({required this.specs});

  final List<ProductSpec> specs;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: MyBossColors.surfaceContainer,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          for (var i = 0; i < specs.length; i++)
            Container(
              padding: const EdgeInsets.symmetric(vertical: 14),
              decoration: BoxDecoration(
                border: i == specs.length - 1
                    ? null
                    : Border(
                        bottom: BorderSide(
                          color: MyBossColors.outline,
                          width: 0.5,
                        ),
                      ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      specs[i].label,
                      style: MyBossTextStyles.bodyBig2.copyWith(
                        color: MyBossColors.onSurface,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      specs[i].value,
                      textAlign: TextAlign.right,
                      style: MyBossTextStyles.body.copyWith(
                        color: MyBossColors.onSurface,
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
