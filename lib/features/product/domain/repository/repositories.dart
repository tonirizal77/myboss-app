part of '../domains.dart';

/// 1.a Repo [Interface] - MyBoss product catalog
abstract class ProductRepo {
  const ProductRepo();

  ResultFuture<List<ProductCategory>> getCategories(CatalogQuery query);

  ResultFuture<List<ProductBrand>> getBrands(CatalogQuery query);

  /// "All" view; categories without products are left out.
  ResultFuture<List<ProductGroup>> getGroups(CatalogQuery query);

  ResultFuture<ProductList> getProducts(CatalogQuery query);

  /// Details of [card] (the product the sheet was opened with).
  ResultFuture<Product> getDetail(Product card, String storeDomain);
}
