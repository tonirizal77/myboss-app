part of '../domains.dart';

/// 1. Repo [Interface] - guest Home content
abstract class GuestHomeRepo {
  const GuestHomeRepo();

  ResultFuture<GuestHome> getGuestHome();
}

/// 1. Repo [Interface] - popular products of a branch (Home, signed in).
abstract class PopularProductsRepo {
  const PopularProductsRepo();

  /// [storeDomain] = `url_id` of the selected branch.
  ResultFuture<List<CatalogPreview>> getPopular(String storeDomain);
}
