part of '../domains.dart';

/// Promo tab content of a branch: point rewards (signed in) + vouchers.
abstract class PromoRepo {
  const PromoRepo();

  /// Guest: vouchers only. Signed in: rewards + vouchers in parallel.
  /// [Left] only when every requested section failed.
  ResultFuture<PromoContent> getPromo(PromoParams params);
}
