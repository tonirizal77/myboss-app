part of '../domains.dart';

/// Promo content of a branch for a guest or a signed-in user.
class GetPromoUc extends UsecaseParams<PromoContent, PromoParams> {
  final PromoRepo _repository;

  GetPromoUc(this._repository);

  @override
  ResultFuture<PromoContent> call(PromoParams params) =>
      _repository.getPromo(params);
}
