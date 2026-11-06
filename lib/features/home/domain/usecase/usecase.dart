part of '../domains.dart';

class GetGuestHomeUc extends Usecase<GuestHome> {
  final GuestHomeRepo _repository;

  GetGuestHomeUc(this._repository);

  @override
  ResultFuture<GuestHome> call() async {
    return await _repository.getGuestHome();
  }
}

/// Params: `url_id` of the selected branch.
class GetPopularProductsUc extends UsecaseParams<List<CatalogPreview>, String> {
  final PopularProductsRepo _repository;

  GetPopularProductsUc(this._repository);

  @override
  ResultFuture<List<CatalogPreview>> call(String storeDomain) =>
      _repository.getPopular(storeDomain);
}
