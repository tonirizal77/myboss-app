part of '../datas.dart';

/// 3. [Repository] Implements - popular products from `GET /catalog/lists`
/// filtered by `is_popular = 1` on the selected branch.
class PopularProductsRepoImpl implements PopularProductsRepo {
  final ProductRemote _remote;

  const PopularProductsRepoImpl({required ProductRemote remote})
    : _remote = remote;

  /// Cards in the Home carousel.
  static const int limit = 8;

  @override
  ResultFuture<List<CatalogPreview>> getPopular(String storeDomain) async {
    final result = await _remote.getProducts(
      CatalogQuery(storeDomain: storeDomain, popular: true, perPage: limit),
    );

    return result.fold(
      (failure) => Left(failure),
      (list) => Right([
        for (final p in list.data)
          CatalogPreview(
            name: p.name,
            category: p.productGroupName ?? '',
            image: p.photoMd ?? '',
            productId: p.id > 0 ? '${p.id}' : '',
          ),
      ]),
    );
  }

  /// Both requests run in parallel. One failing keeps the other total (0 =
  /// unknown, its copy is hidden); both failing is a failure.
  @override
  ResultFuture<CatalogStats> getStats(String storeDomain) async {
    final (products, groups) = await (
      // Only `meta.total` is needed: one row is enough.
      _remote.getProducts(CatalogQuery(storeDomain: storeDomain, perPage: 1)),
      _remote.getGroups(CatalogQuery(storeDomain: storeDomain)),
    ).wait;

    if (products.isLeft() && groups.isLeft()) {
      return products.map((_) => const CatalogStats());
    }

    return Right(
      CatalogStats(
        products: products.fold(
          (_) => 0,
          (r) => r.meta.total > 0 ? r.meta.total : r.data.length,
        ),
        categories: groups.fold(
          (_) => 0,
          (r) => r.meta.total > 0 ? r.meta.total : r.data.length,
        ),
      ),
    );
  }
}
