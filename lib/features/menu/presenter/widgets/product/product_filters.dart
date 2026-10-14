part of '../widgets.dart';

/// Search pill (Figma `Search`).
class ProductSearchField extends StatelessWidget {
  const ProductSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide(color: MyBossColors.outline),
    );

    return SizedBox(
      height: 48,
      child: TextField(
        onChanged: context.read<ProductCubit>().search,
        textInputAction: TextInputAction.search,
        style: MyBossTextStyles.bodyBig2.copyWith(
          color: MyBossColors.onSurface,
        ),
        decoration: InputDecoration(
          filled: true,
          fillColor: MyBossColors.surface,
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          hintText: LocaleKeys.product_search.tr(),
          hintStyle: MyBossTextStyles.bodyBig2.copyWith(
            color: MyBossColors.onSurfaceVariant,
          ),
          prefixIcon: Icon(Icons.search, color: MyBossColors.onSurfaceVariant),
          border: border,
          enabledBorder: border,
          focusedBorder: border.copyWith(
            borderSide: BorderSide(color: MyBossColors.primary),
          ),
        ),
      ),
    );
  }
}

/// Brand filter pills: All, Oraimo, Anker, ...
class ProductBrandChips extends StatelessWidget {
  const ProductBrandChips({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCubit, ProductState>(
      buildWhen: (a, b) =>
          a.brand != b.brand || a.catalog.brands != b.catalog.brands,
      builder: (context, state) {
        final brands = ['', ...state.catalog.brands];

        return SizedBox(
          height: 40,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: brands.length,
            separatorBuilder: (_, _) => const SizedBox(width: 8),
            itemBuilder: (context, i) {
              final brand = brands[i];

              return _BrandChip(
                label: brand.isEmpty ? LocaleKeys.product_all.tr() : brand,
                selected: brand == state.brand,
                onTap: () => context.read<ProductCubit>().selectBrand(brand),
              );
            },
          ),
        );
      },
    );
  }
}

class _BrandChip extends StatelessWidget {
  const _BrandChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final primary = MyBossColors.primary;

    return Material(
      color: selected
          ? Color.alphaBlend(
              primary.withValues(alpha: 0.35),
              MyBossColors.surface,
            )
          : MyBossColors.surfaceContainer,
      shape: StadiumBorder(
        side: BorderSide(color: selected ? primary : Colors.transparent),
      ),
      child: InkWell(
        customBorder: const StadiumBorder(),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Text(
              label,
              style: MyBossTextStyles.bodyBig2.copyWith(
                color: selected
                    ? Color.lerp(primary, Colors.white, 0.45)
                    : MyBossColors.onSurface,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
