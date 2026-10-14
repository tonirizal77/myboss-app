part of '../datas.dart';

/// 3. [Repository] Implements - promo
class PromoRepoImpl implements PromoRepo {
  final PromoSource _source;

  const PromoRepoImpl({required PromoSource source}) : _source = source;

  @override
  ResultFuture<PromoContent> getPromo() => _source.getPromo();
}
