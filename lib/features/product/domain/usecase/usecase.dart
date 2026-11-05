part of '../domains.dart';

/// 4. [Usecase] Implements

class GetProductCategoriesUc
    extends UsecaseParams<List<ProductCategory>, CatalogQuery> {
  final ProductRepo _repository;

  GetProductCategoriesUc(this._repository);

  @override
  ResultFuture<List<ProductCategory>> call(CatalogQuery params) =>
      _repository.getCategories(params);
}

class GetProductBrandsUc
    extends UsecaseParams<List<ProductBrand>, CatalogQuery> {
  final ProductRepo _repository;

  GetProductBrandsUc(this._repository);

  @override
  ResultFuture<List<ProductBrand>> call(CatalogQuery params) =>
      _repository.getBrands(params);
}

class GetProductGroupsUc
    extends UsecaseParams<List<ProductGroup>, CatalogQuery> {
  final ProductRepo _repository;

  GetProductGroupsUc(this._repository);

  @override
  ResultFuture<List<ProductGroup>> call(CatalogQuery params) =>
      _repository.getGroups(params);
}

class GetProductsUc extends UsecaseParams<ProductList, CatalogQuery> {
  final ProductRepo _repository;

  GetProductsUc(this._repository);

  @override
  ResultFuture<ProductList> call(CatalogQuery params) =>
      _repository.getProducts(params);
}

class GetProductDetailUc
    extends UsecaseParams<Product, ({Product card, String storeDomain})> {
  final ProductRepo _repository;

  GetProductDetailUc(this._repository);

  @override
  ResultFuture<Product> call(({Product card, String storeDomain}) params) =>
      _repository.getDetail(params.card, params.storeDomain);
}
