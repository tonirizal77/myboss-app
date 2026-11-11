part of '../datas.dart';

/// 2.b Points from `GET /profile/loyalty-points` (PRD-011/012): balance
/// (`balance_points`), the points that expire first (`expiring_points`) and
/// the history (`all_point`: `Active` earned, `Deducted` redeemed,
/// `Expired`). Without a balance in the payload the Points page falls back
/// to `/profile/info`.
///
/// [PointsCubit.load] asks for the summary and then the history: both are
/// answered by one request.
class PointsRemote implements PointsSource {
  PointsRemote();

  /// Response shared by [getSummary] and the [getHistory] that follows it.
  ResultFuture<LoyaltyPointsModel>? _pending;

  /// Last history, for [getDetail].
  List<PointEntry> _history = const [];

  ResultFuture<LoyaltyPointsModel> _fetch() async {
    final result = await DioGet.call(
      url: ConfigServer.branchUrl(Endpoints.profileLoyaltyPoints),
    );

    return result.fold((l) => Left(l), (r) {
      try {
        return Right(LoyaltyPointsModel.fromJson(r['data'] as DataMap));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<PointsSummary> getSummary() async {
    final result = await (_pending = _fetch());

    return result.map(toSummary);
  }

  @override
  ResultFuture<List<PointEntry>> getHistory() async {
    final result = await (_pending ?? _fetch());
    _pending = null;

    return result.map((m) => _history = toHistory(m));
  }

  /// Receipt of the entry's order (`GET /profile/orders/find/{id}`).
  /// Entries without an order (bonus) show the entry and amount only,
  /// without a request.
  @override
  ResultFuture<PointDetail> getDetail(int id) async {
    final entry = _history.where((e) => e.id == id).firstOrNull;
    if (entry == null) {
      return Left(
        Failures(error: Error(message: "Point detail not available")),
      );
    }

    final orderId = entry.salesOrderId;
    if (orderId == null) {
      return Right(
        PointDetail(entry: entry, subtotal: entry.amount, total: entry.amount),
      );
    }

    final result = await DioGet.call(
      url: ConfigServer.branchUrl(
        Endpoints.profileOrdersPoints.replaceFirst(
          '{sales_order_id}',
          '$orderId',
        ),
      ),
    );

    return result.fold((l) => Left(l), (r) {
      try {
        return Right(
          toDetail(entry, OrderDetailModel.fromJson(r['data'] as DataMap)),
        );
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @visibleForTesting
  static PointDetail toDetail(PointEntry entry, OrderDetailModel m) {
    final a = m.amount ?? const OrderAmountModel();

    return PointDetail(
      entry: entry,
      lines: [
        for (final i in m.items)
          PointLine(
            quantity: i.qty.round(),
            name: [
              i.name,
              if (i.variantName case final v? when v.trim().isNotEmpty) v,
            ].join(' - '),
            price: i.amount.round(),
          ),
      ],
      itemCount: m.totalQty.round(),
      subtotal: a.orderAmount.round(),
      discount: a.discountAmount.round(),
      redeemedPoints: a.redeemedAmount.round(),
      serviceFee: a.serviceChargeAmount.round(),
      tax: a.taxAmount.round(),
      shippingCost: a.shippingCost.round(),
      total: a.totalAmount.round(),
    );
  }

  @visibleForTesting
  static PointsSummary toSummary(LoyaltyPointsModel m) {
    final expiring = m.expiringPoints;

    return PointsSummary(
      balance: m.totalBalancePoint ?? 0,
      hasBalance: m.totalBalancePoint != null,
      expiringPoints: expiring?.balancePoints ?? 0,
      expiresAt: DateTime.tryParse(expiring?.expireDate ?? ''),
    );
  }

  @visibleForTesting
  static List<PointEntry> toHistory(LoyaltyPointsModel m) => [
    for (final p in m.allPoint)
      if (DateTime.tryParse(p.date ?? '') case final date?)
        PointEntry(
          id: p.id,
          title: p.detail ?? (p.isDeducted ? 'Point Redeemed' : 'Point Earned'),
          date: date,
          points: p.signedPoints,
          amount: p.orderTotal ?? 0,
          salesOrderId: p.salesOrderId,
          isExpired: p.isExpired,
        ),
  ];
}
