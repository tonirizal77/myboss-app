part of '../datas.dart';

/// 2.b Points from `GET /profile/loyalty-points` (PRD-011): balance
/// (`total_balance_point`), the points that expire first (`expiring_points`)
/// and the history (`active_point`).
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
    final result = await DioGet.call(url: Endpoints.profileLoyaltyPoints);

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

  /// No receipt endpoint yet (TODO(backend)): the entry and its order total.
  @override
  ResultFuture<PointDetail> getDetail(int id) async {
    final entry = _history.where((e) => e.id == id).firstOrNull;
    if (entry == null) {
      return Left(
        Failures(error: Error(message: "Point detail not available")),
      );
    }

    return Right(
      PointDetail(entry: entry, subtotal: entry.amount, total: entry.amount),
    );
  }

  @visibleForTesting
  static PointsSummary toSummary(LoyaltyPointsModel m) {
    final expiring = m.expiringPoints;

    return PointsSummary(
      balance: m.totalBalancePoint,
      expiringPoints: expiring?.balancePoints ?? 0,
      expiresAt: DateTime.tryParse(expiring?.expireDate ?? ''),
    );
  }

  @visibleForTesting
  static List<PointEntry> toHistory(LoyaltyPointsModel m) => [
    for (final p in m.activePoint)
      if (DateTime.tryParse(p.date ?? '') case final date?)
        PointEntry(
          id: p.id,
          title: 'Point Earned',
          date: date,
          points: p.earnedPoints,
          amount: p.orderTotal ?? 0,
        ),
  ];
}
