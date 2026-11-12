part of '../datas.dart';

/// 2.b Points from `GET /profile/loyalty-points` (PRD-011/012): balance
/// (`total_balance_point`, older payloads `balance_points`), the points that
/// expire first (`expiring_points`, may be null) and the history
/// (`all_point`: `Active` earned, `Deducted` redeemed, `Expired`), paged by
/// `meta` (`page` / `total_page`, 15 per page). Without a balance in the
/// payload the Points page falls back to `/profile/info`.
///
/// [PointsCubit.load] asks for the summary and then the first history page:
/// both are answered by one request. Later pages are fetched on their own.
class PointsRemote implements PointsSource {
  PointsRemote();

  /// Rows per history page (the server default).
  static const perPage = 15;

  /// First page, shared by [getSummary] and the [getHistory] that follows it.
  ResultFuture<LoyaltyPointsPage>? _pending;

  /// History loaded so far (every page), for [getDetail].
  List<PointEntry> _history = const [];

  ResultFuture<LoyaltyPointsPage> _fetch({int page = 1}) async {
    final result = await DioGet.call(
      url: ConfigServer.branchUrl(Endpoints.profileLoyaltyPoints),
      queryParameters: {'page': page, 'per_page': perPage},
    );

    return result.fold((l) => Left(l), (r) {
      try {
        return Right(parse(r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  /// Whole response: `data` + `meta` (missing `meta` = a single page).
  @visibleForTesting
  static LoyaltyPointsPage parse(DataMap json) => (
    data: LoyaltyPointsModel.fromJson(json['data'] as DataMap),
    meta: json['meta'] is DataMap
        ? Meta.fromJson(json['meta'] as DataMap)
        : const Meta(),
  );

  @override
  ResultFuture<PointsSummary> getSummary() async {
    final result = await (_pending = _fetch());

    return result.map((r) => toSummary(r.data));
  }

  @override
  ResultFuture<PointHistoryPage> getHistory({int page = 1}) async {
    final ResultFuture<LoyaltyPointsPage> request;
    if (page == 1 && _pending != null) {
      request = _pending!;
    } else {
      request = _fetch(page: page);
    }
    if (page == 1) _pending = null;

    final result = await request;

    return result.map((r) {
      final history = toPage(r);
      _history = page == 1 ? history.items : [..._history, ...history.items];
      return history;
    });
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

  /// One history page with its paging from `meta`. `total_page` 0 (no
  /// history at all) counts as a single, empty page.
  @visibleForTesting
  static PointHistoryPage toPage(LoyaltyPointsPage r) => PointHistoryPage(
    items: toHistory(r.data),
    page: r.meta.page < 1 ? 1 : r.meta.page,
    totalPage: r.meta.totalPage < 1 ? 1 : r.meta.totalPage,
    total: r.meta.total,
  );
}

/// `GET /profile/loyalty-points` response: `data` and its paging `meta`.
typedef LoyaltyPointsPage = ({LoyaltyPointsModel data, Meta meta});
