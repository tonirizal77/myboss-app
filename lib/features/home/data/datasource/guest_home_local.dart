part of '../datas.dart';

/// 2.a [Data source] for guest Home content.
abstract class GuestHomeSource {
  ResultFuture<GuestHome> getGuestHome();
}

/// 2.b Static content from the Figma design.
///
/// TODO(backend): replace with a remote source once the MyBoss API exposes
/// brands, catalog preview and point rewards (see docs/prd/PRD-003).
class GuestHomeStatic implements GuestHomeSource {
  const GuestHomeStatic();

  static const _products = 'assets/images/products';

  @override
  ResultFuture<GuestHome> getGuestHome() async {
    return const Right(
      GuestHome(
        productCount: 100,
        categoryCount: 25,
        brands: [
          BrandLogo(name: 'Oraimo', image: Assets.brandOraimo),
          BrandLogo(name: 'Brand 2', image: Assets.brand02),
          BrandLogo(name: 'Oppo', image: Assets.brandOppo),
          BrandLogo(name: 'Ugreen', image: Assets.brandUgreen),
          BrandLogo(name: 'Vivan', image: Assets.brandVivan),
          BrandLogo(name: 'Realme', image: Assets.brandRealme),
        ],
        catalog: [
          CatalogPreview(
            name: 'SpaceBuds 2',
            category: 'Power',
            image: '$_products/product_01.png',
          ),
          CatalogPreview(
            name: 'SpaceBuds 2',
            category: 'Audio',
            image: '$_products/product_02.png',
          ),
          CatalogPreview(
            name: 'SpaceBuds 2',
            category: 'Wearable',
            image: '$_products/product_03.png',
          ),
          CatalogPreview(
            name: 'SpaceBuds 2',
            category: 'Audio',
            image: '$_products/product_04.png',
          ),
          CatalogPreview(
            name: 'SpaceBuds 2',
            category: 'Power',
            image: '$_products/product_05.png',
          ),
        ],
        rewards: [
          RewardPreview(
            name: 'SpaceBuds 2',
            points: 100,
            image: '$_products/product_02.png',
          ),
          RewardPreview(
            name: 'SpaceBuds 2',
            points: 100,
            image: '$_products/product_06.png',
          ),
          RewardPreview(
            name: 'SpaceBuds 2',
            points: 100,
            image: '$_products/product_07.png',
          ),
          RewardPreview(
            name: 'SpaceBuds 2',
            points: 100,
            image: '$_products/product_08.png',
          ),
        ],
      ),
    );
  }
}
