part of '../datas.dart';

/// 3. [Repository] Implements - promo
class PromoRepoImpl implements PromoRepo {
  final PromoRemote _remoteData;

  const PromoRepoImpl({required PromoRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<PromoContent> getPromo(PromoParams params) async {
    final domain = params.storeDomain;

    /// Guest and signed in: both requests start before either is awaited, so
    /// they run in parallel. Rewards are branch content, public like the
    /// vouchers; a signed-in user's token is sent by DioHttp3 (`headerToken`).
    final (rewards, vouchers) = await (
      _remoteData.getRewards(domain),
      _remoteData.getVouchers(domain),
    ).wait;

    /// Both failed -> page error; one failed -> keep the other one.
    if (rewards.isLeft() && vouchers.isLeft()) {
      return vouchers.map((_) => const PromoContent()); // the voucher Left
    }

    return Right(
      PromoContent(
        rewards: rewards.fold(
          (_) => const [],
          (r) => [for (final p in r.data) p.toReward()],
        ),
        vouchers: vouchers.fold(
          (_) => const [],
          (v) => [for (final p in v.data) p.toVoucher()],
        ),
        failed: {
          if (rewards.isLeft()) PromoSection.points,
          if (vouchers.isLeft()) PromoSection.vouchers,
        },
      ),
    );
  }
}
