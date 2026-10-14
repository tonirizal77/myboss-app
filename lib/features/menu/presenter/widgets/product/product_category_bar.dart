part of '../widgets.dart';

/// Category tabs on top of the Product page (Figma `toolbar > category`):
/// All, Wearable, Audio, Power, ... The selected tab gets a brand outline
/// and a brand-colored icon.
class ProductCategoryBar extends StatelessWidget {
  const ProductCategoryBar({super.key});

  static const double height = 112;

  /// Page header version, pinned while the catalog scrolls.
  static PreferredSizeWidget appBar(BuildContext context) {
    final top = MediaQuery.paddingOf(context).top;

    return PreferredSize(
      preferredSize: Size.fromHeight(height + top),
      child: ColoredBox(
        color: MyBossColors.surfaceContainer,
        child: const SafeArea(bottom: false, child: ProductCategoryBar()),
      ),
    );
  }

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

        return SizedBox(
          height: height,
          child: Center(
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              itemCount: items.length,
              separatorBuilder: (_, _) => const SizedBox(width: 4),
              itemBuilder: (context, i) => _CategoryTab(
                category: items[i],
                selected: items[i].id == state.categoryId,
                onTap: () =>
                    context.read<ProductCubit>().selectCategory(items[i].id),
              ),
            ),
          ),
        );
      },
    );
  }
}

class _CategoryTab extends StatelessWidget {
  const _CategoryTab({
    required this.category,
    required this.selected,
    required this.onTap,
  });

  final ProductCategory category;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final color = selected ? MyBossColors.primary : MyBossColors.onSurface;

    return InkWell(
      borderRadius: BorderRadius.circular(4),
      onTap: onTap,
      child: Container(
        width: 88,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.all(
            color: selected
                ? MyBossColors.primary.withValues(alpha: 0.7)
                : Colors.transparent,
            width: 1.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              ProductCategoryBar.iconFor(category.id),
              size: 32,
              color: color,
            ),
            const SizedBox(height: 8),
            // Long names wrap to two lines ("Personal / Care").
            Text(
              category.name,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: MyBossTextStyles.body.copyWith(
                color: MyBossColors.onSurface,
                height: 1.2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
