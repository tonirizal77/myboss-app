part of '../domains.dart';

/// MyBoss product catalog
abstract class ProductRepo {
  const ProductRepo();

  ResultFuture<ProductCatalog> getCatalog();
}
