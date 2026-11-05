part of '../widgets.dart';

/// Product details (Figma `product details`), as a sheet on phones and a
/// dialog on wider windows: photo gallery with the label badge ("New
/// Release", "Sale", ...) and page counter, name, description,
/// specifications and related products. Opens with the card data at once
/// and fills in from `GET /catalog/show/{id}`; opening a related product
/// swaps the content in place.
class ProductDetailSheet {
  ProductDetailSheet._();

  static Future<void> show(BuildContext context, Product product) {
    final storeDomain = context.read<ProductCubit>().state.storeDomain;

    // Sheet on phones, dialog on tablet / desktop.
    return MyBossBottomSheet.adaptive<void>(
      context,
      builder: (_) => BlocProvider(
        create: (_) =>
            ProductDetailCubit(product: product, storeDomain: storeDomain)
              ..open(),
        child: const _ProductDetailBody(),
      ),
    );
  }
}

class _ProductDetailBody extends StatefulWidget {
  const _ProductDetailBody();

  @override
  State<_ProductDetailBody> createState() => _ProductDetailBodyState();
}

class _ProductDetailBodyState extends State<_ProductDetailBody> {
  final _scroll = ScrollController();

  @override
  void dispose() {
    _scroll.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductDetailCubit, ProductDetailState>(
      listenWhen: (a, b) => a.product.id != b.product.id,
      listener: (_, _) {
        if (_scroll.hasClients) _scroll.jumpTo(0);
      },
      builder: (context, state) => _body(context, state),
    );
  }

  Widget _body(BuildContext context, ProductDetailState state) {
    final product = state.product;
    final related = product.related;

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.85,
      child: ListView(
        controller: _scroll,
        padding: EdgeInsets.zero,
        children: [
          _Gallery(key: ValueKey(product.id), product: product),
          Padding(
            padding: const EdgeInsets.fromLTRB(24, 24, 24, 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  product.name,
                  style: MyBossTextStyles.titleBig2.copyWith(
                    color: MyBossColors.onSurface,
                  ),
                ),
                if (state.status == Status.loading) ...[
                  const SizedBox(height: 24),
                  Center(
                    child: CircularProgressIndicator(
                      color: MyBossColors.primary,
                    ),
                  ),
                ],
                if (state.status == Status.failed) ...[
                  const SizedBox(height: 24),
                  Text(
                    LocaleKeys.product_load_failed.tr(),
                    style: MyBossTextStyles.bodyBig2.copyWith(
                      color: MyBossColors.onSurfaceVariant,
                    ),
                  ),
                  const SizedBox(height: 12),
                  MyBossButton(
                    key: const ValueKey('product_detail_retry'),
                    label: LocaleKeys.product_retry.tr(),
                    role: MyBossButtonRole.secondary,
                    onPressed: () => context.read<ProductDetailCubit>().open(),
                  ),
                ],
                if (product.description.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  _heading(LocaleKeys.product_description.tr()),
                  const SizedBox(height: 8),
                  Text(
                    product.description,
                    style: MyBossTextStyles.bodyBig2.copyWith(
                      color: MyBossColors.onSurfaceVariant,
                    ),
                  ),
                ],
                if (product.specs.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  _heading(LocaleKeys.product_specifications.tr()),
                  const SizedBox(height: 12),
                  _SpecTable(specs: product.specs),
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
                        onTap: () =>
                            context.read<ProductDetailCubit>().open(related[i]),
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

    // Square gallery as wide as the sheet (product photos are ~square),
    // capped so a wide dialog does not get a huge picture.
    return LayoutBuilder(
      builder: (context, constraints) => SizedBox(
        height: constraints.maxWidth.clamp(0, 480).toDouble(),
        child: Stack(
          children: [
            PageView.builder(
              // No photo at all: one page with the "no image" fallback.
              itemCount: images.isEmpty ? 1 : images.length,
              onPageChanged: (i) => setState(() => _page = i),
              itemBuilder: (_, i) => ColoredBox(
                color: MyBossColors.surface,
                child: ProductImage(
                  images.isEmpty ? '' : images[i],
                  fit: BoxFit.cover,
                ),
              ),
            ),
            if (widget.product.label.isNotEmpty)
              Positioned(
                top: 12,
                left: 12,
                child: MyBossStatusChip(
                  label: widget.product.label,
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
