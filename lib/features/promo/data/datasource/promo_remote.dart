part of '../datas.dart';

/// 2.a [Remote] Data - promo content of a branch (also for guests). Requests
/// go to the branch store domain ([ConfigServer.urlFor]).
abstract class PromoRemote {
  /// `GET /promotion/loyalty-points/list` - rewards to redeem with points.
  ResultFuture<PromoPointsModel> getRewards(String storeDomain);

  /// `GET /promotion/discount-vouchers/list`.
  ResultFuture<PromoVouchersModel> getVouchers(String storeDomain);
}

/// 2.b [Remote] Data Implementasi
class PromoRemoteImpl implements PromoRemote {
  const PromoRemoteImpl();

  /// Whole list at once (server default is 15).
  ///
  /// TODO(backend): 100 is an app-side guess, not a confirmed server limit -
  /// same open question as `ProductRemoteImpl._all`.
  static const _all = {'per_page': 100};

  @override
  ResultFuture<PromoPointsModel> getRewards(String storeDomain) =>
      _get(Endpoints.promoPointList, storeDomain, PromoPointsModel.fromJson);

  @override
  ResultFuture<PromoVouchersModel> getVouchers(String storeDomain) => _get(
    Endpoints.promoVoucherList,
    storeDomain,
    PromoVouchersModel.fromJson,
  );

  static ResultFuture<T> _get<T>(
    String endpoint,
    String storeDomain,
    T Function(DataMap json) parse,
  ) async {
    final result = await DioGet.call(
      url: ConfigServer.urlFor(endpoint, storeDomain: storeDomain),
      queryParameters: _all,
    );

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(parse(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
