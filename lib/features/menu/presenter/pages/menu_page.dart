part of 'pages.dart';

/// Product tab (Figma `catalogs`): category tabs pinned on top, search,
/// brand chips, then either one section per category ("All") or the grid of
/// the selected category; "Product not found" when nothing matches.
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final _scroll = ScrollController();

  @override
  void initState() {
    super.initState();
    context.read<ProductCubit>().load();
  }

  // No dispose: ResponsivePage (mybos-core) disposes the controller it is
  // given when useScrollView is on.

  /// A new category starts at the top (search + brand chips visible).
  void _toTop() {
    if (!_scroll.hasClients) return;
    _scroll.animateTo(
      0,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsivePage(
      colorPage: MyBossColors.surface,
      backgroundColor: MyBossColors.surface,
      useSafeArea: true,
      useScrollView: true,
      controller: _scroll,
      appBar: ProductCategoryBar.appBar(context),
      onRefresh: () => context.read<ProductCubit>().load(),
      body: Align(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 960),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 96),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const ProductSearchField(),
                const SizedBox(height: 16),
                const ProductBrandChips(),
                const SizedBox(height: 24),
                BlocConsumer<ProductCubit, ProductState>(
                  listenWhen: (a, b) => a.categoryId != b.categoryId,
                  listener: (_, _) => _toTop(),
                  builder: (context, state) => _content(state),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _content(ProductState state) {
    if (state.status == Status.loading && state.catalog.products.isEmpty) {
      return const SizedBox(height: 240, child: LoadingWidget());
    }

    if (state.isEmpty) return const ProductEmpty();

    if (state.isAll) {
      return Column(
        children: [
          for (final (category, products) in state.sections)
            ProductSection(category: category, products: products),
        ],
      );
    }

    return ProductGrid(products: state.products);
  }
}
