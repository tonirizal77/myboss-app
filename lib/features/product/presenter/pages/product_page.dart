part of 'pages.dart';

/// Product tab (Figma `catalogs`): category tabs pinned on top, search,
/// brand chips, then either one section per category ("All") or the grid of
/// the selected category; "Product not found" when nothing matches.
///
/// The catalog belongs to the branch selected in the header: changing it
/// reloads the page.
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  final _scroll = ScrollController();

  /// Distance from the bottom that asks for the next grid page.
  static const double _loadMoreExtent = 400;

  @override
  void initState() {
    super.initState();
    _scroll.addListener(_onScroll);
    context.read<ProductCubit>().load(storeDomain: _storeDomain(context));
  }

  @override
  void dispose() {
    // ResponsivePage only disposes the controller it creates itself.
    _scroll.dispose();
    super.dispose();
  }

  static String _storeDomain(BuildContext context) =>
      context.read<StoreBranchCubit>().state.selected?.urlId ?? '';

  void _onScroll() {
    if (!_scroll.hasClients) return;
    if (_scroll.position.extentAfter < _loadMoreExtent) {
      context.read<ProductCubit>().loadMore();
    }
  }

  /// A page that does not fill the screen (wide windows) cannot be scrolled,
  /// so the next page is asked for right after it is laid out.
  void _fillScreen() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) _onScroll();
    });
  }

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
    return BlocListener<StoreBranchCubit, StoreBranchState>(
      listenWhen: (a, b) => a.selected?.urlId != b.selected?.urlId,
      listener: (context, _) =>
          context.read<ProductCubit>().changeBranch(_storeDomain(context)),
      child: ResponsivePage(
        colorPage: ProductCategoryBar.background,
        backgroundColor: ProductCategoryBar.background,
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

                  BlocListener<ProductCubit, ProductState>(
                    listenWhen: (a, b) => a.products != b.products,
                    listener: (_, state) {
                      if (state.hasMore) _fillScreen();
                    },
                    child: BlocConsumer<ProductCubit, ProductState>(
                      listenWhen: (a, b) => a.categoryId != b.categoryId,
                      listener: (_, _) => _toTop(),
                      builder: (context, state) => _content(context, state),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _content(BuildContext context, ProductState state) {
    final shown = state.isAll ? state.groups : state.products;
    final loading = state.status == Status.loading;

    if (shown.isEmpty || state.status == Status.failed) {
      if (loading || state.status == Status.initial) {
        return const SizedBox(height: 240, child: LoadingWidget());
      }
      if (state.status == Status.failed) {
        return ProductError(onRetry: () => context.read<ProductCubit>().load());
      }
    }

    if (state.isEmpty) return const ProductEmpty();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // New filter on screen while the previous result is still shown.
        if (loading) ...[
          LinearProgressIndicator(color: MyBossColors.primary, minHeight: 2),
          const SizedBox(height: 12),
        ],
        if (state.isAll)
          for (final group in state.groups) ProductSection(group: group)
        else ...[
          // Filtered: grid straight on the page (Figma), no card.
          ProductGrid(products: state.products),
          if (state.loadingMore)
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: Center(
                child: CircularProgressIndicator(color: MyBossColors.primary),
              ),
            ),
        ],
      ],
    );
  }
}
