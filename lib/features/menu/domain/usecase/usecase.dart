part of '../domains.dart';

class GetProductCatalogUc extends Usecase<ProductCatalog> {
  final ProductRepo _repository;

  GetProductCatalogUc(this._repository);

  @override
  ResultFuture<ProductCatalog> call() => _repository.getCatalog();
}
