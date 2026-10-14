part of '../domains.dart';

class GetPromoUc extends Usecase<PromoContent> {
  final PromoRepo _repository;

  GetPromoUc(this._repository);

  @override
  ResultFuture<PromoContent> call() => _repository.getPromo();
}
