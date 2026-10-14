part of '../widgets.dart';

/// Category tabs on top of the Product page (Figma `toolbar > category`):
/// All, Wearable, Audio, Power, ...
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

  static IconData iconFor(String categoryId) => switch (categoryId) {
    '' => Icons.grid_view_rounded,
    'wearable' => Icons.watch_outlined,
    'audio' => Icons.headphones_outlined,
    'power' => Icons.bolt_outlined,
    'personal_care' => Icons.content_cut_outlined,
    'home_appliance' => Icons.home_outlined,
    'gaming' => Icons.sports_esports_outlined,
    _ => Icons.category_outlined,
  };

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      buildWhen: (a, b) =>
          a.categoryId != b.categoryId ||
          a.catalog.categories != b.catalog.categories,
      builder: (context, state) {
        final items = [
          ProductCategory(id: '', name: LocaleKeys.product_all.tr()),
          ...state.catalog.categories,
        ];

        return MyBossIconTabBar(
          tabs: [
            for (final c in items)
              MyBossIconTab(
                label: c.name,
                icon: (color) => Icon(iconFor(c.id), size: 32, color: color),
              ),
          ],
          selected: items.indexWhere((c) => c.id == state.categoryId),
          onChanged: (i) =>
              context.read<ProductCubit>().selectCategory(items[i].id),
        );
      },
    );
  }
}
