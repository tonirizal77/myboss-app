part of '../datas.dart';

/// 3. [Repository] Implements - product catalog
class ProductRepoImpl implements ProductRepo {
  final ProductSource _source;

  const ProductRepoImpl({required ProductSource source}) : _source = source;

  @override
  ResultFuture<ProductCatalog> getCatalog() => _source.getCatalog();
}
