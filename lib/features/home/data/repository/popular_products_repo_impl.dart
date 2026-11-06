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
          ),
      ]),
    );
  }
}
