part of '../widgets.dart';

/// Row of trusted brand logos with a caption.
class GuestBrands extends StatelessWidget {
  const GuestBrands({
    super.key,
    required this.brands,
    required this.categories,
  });

  final List<BrandLogo> brands;
  final int categories;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: MyBossColors.surfaceContainerLowest,
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          SizedBox(
            height: 48,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: brands.length,
              separatorBuilder: (_, _) => const SizedBox(width: 16),
              itemBuilder: (_, i) => ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: ColorFiltered(
                  // Figma blends the logos with `luminosity` - grayscale.
                  colorFilter: const ColorFilter.matrix(<double>[
                    0.2126, 0.7152, 0.0722, 0, 0, //
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0.2126, 0.7152, 0.0722, 0, 0,
                    0, 0, 0, 1, 0,
                  ]),
                  child: Image.asset(
                    brands[i].image,
                    width: 48,
                    height: 48,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              LocaleKeys.guest_home_brands_caption.tr(args: ['$categories']),
              textAlign: TextAlign.center,
              style: MyBossTextStyles.caption.copyWith(
                color: MyBossColors.onSurfaceVariant.withValues(alpha: 0.74),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
