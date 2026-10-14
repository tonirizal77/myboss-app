part of '../domains.dart';

/// Promo tab content: point rewards + vouchers.
abstract class PromoRepo {
  const PromoRepo();

  ResultFuture<PromoContent> getPromo();
}
