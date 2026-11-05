part of '../widgets.dart';

/// Category tabs on top of the Product page (Figma `toolbar > category`):
/// All, then the product groups of the store.
class ProductCategoryBar extends StatelessWidget {
  const ProductCategoryBar({super.key});

  /// Page header version, pinned while the catalog scrolls.
  /// Figma: header and body share one dark gray; sections sit on black
  /// cards.
  static Color get background => MyBossColors.surfaceContainerLow;

  static PreferredSizeWidget appBar(BuildContext context) =>
      MyBossIconTabBar.appBar(
        context,
        const ProductCategoryBar(),
        color: background,
      );

  /// Built-in icon when the server has none (or it does not load), picked
  /// from the English name; [category] null = All.
  static IconData iconFor(ProductCategory? category) {
    if (category == null) return Icons.grid_view_rounded;

    final name = category.nameEn.toLowerCase();
    bool has(List<String> words) => words.any(name.contains);

    if (has(['wear', 'watch'])) return Icons.watch_outlined;
    if (has(['audio', 'sound', 'speaker'])) return Icons.headphones_outlined;
    if (has(['power', 'charg', 'cable'])) return Icons.bolt_outlined;
    if (has(['hair', 'care', 'beauty'])) return Icons.content_cut_outlined;
    if (has(['home', 'appliance'])) return Icons.home_outlined;
    if (has(['gam'])) return Icons.sports_esports_outlined;
    return Icons.category_outlined;
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      buildWhen: (a, b) =>
          a.categoryId != b.categoryId || a.categories != b.categories,
      builder: (context, state) {
        final lang = context.locale.languageCode;
        final items = <ProductCategory?>[null, ...state.categories];

        return MyBossIconTabBar(
          tabs: [
            for (final c in items)
              MyBossIconTab(
                label: c?.name(lang) ?? LocaleKeys.product_all.tr(),
                icon: (color) => _CategoryIcon(category: c, color: color),
              ),
          ],
          selected: items.indexWhere((c) => (c?.id ?? '') == state.categoryId),
          onChanged: (i) =>
              context.read<ProductCubit>().selectCategory(items[i]?.id ?? ''),
        );
      },
    );
  }
}

/// Server icon (`photo_md`) when there is one, else the built-in icon. The
/// picture is not recolored: it is not known to be monochrome.
class _CategoryIcon extends StatelessWidget {
  const _CategoryIcon({required this.category, required this.color});

  final ProductCategory? category;
  final Color color;

  static const double _size = 32;

  @override
  Widget build(BuildContext context) {
    final fallback = Icon(
      ProductCategoryBar.iconFor(category),
      size: _size,
      color: color,
    );
    final url = category?.iconUrl ?? '';
    if (url.isEmpty) return fallback;

    return Image.network(
      url,
      width: _size,
      height: _size,
      fit: BoxFit.contain,
      errorBuilder: (_, _, _) => fallback,
    );
  }
}
