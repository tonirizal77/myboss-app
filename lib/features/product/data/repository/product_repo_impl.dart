part of '../datas.dart';

/// 3. [Repository] Implements - product catalog, mapped to the UI entities.
class ProductRepoImpl implements ProductRepo {
  final ProductRemote _remoteData;

  const ProductRepoImpl({required ProductRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<List<ProductCategory>> getCategories(CatalogQuery query) async {
    final _result = await _remoteData.getGroups(query);

    return _result.fold(
      (_l) => Left(_l),
      (_r) => Right([for (final g in _r.data) g.toCategory()]),
    );
  }

  @override
  ResultFuture<List<ProductBrand>> getBrands(CatalogQuery query) async {
    final _result = await _remoteData.getBrands(query);

    return _result.fold(
      (_l) => Left(_l),
      (_r) => Right([for (final b in _r.data) b.toBrand()]),
    );
  }

  @override
  ResultFuture<List<ProductGroup>> getGroups(CatalogQuery query) async {
    final _result = await _remoteData.getGroupProducts(query);

    return _result.fold(
      (_l) => Left(_l),
      (_r) => Right([
        for (final g in _r.data)
          if (g.products.isNotEmpty) g.toGroup(),
      ]),
    );
  }

  @override
  ResultFuture<ProductList> getProducts(CatalogQuery query) async {
    final _result = await _remoteData.getProducts(query);

    return _result.fold(
      (_l) => Left(_l),
      (_r) => Right(
        ProductList(
          items: [for (final p in _r.data) p.toProduct()],
          page: _r.meta.page,
          totalPage: _r.meta.totalPage,
        ),
      ),
    );
  }

  @override
  ResultFuture<Product> getDetail(Product card, String storeDomain) async {
    final _result = await _remoteData.getDetail(card.id, storeDomain);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r.toProduct(card)));
  }
}
