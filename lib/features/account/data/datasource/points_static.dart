part of '../datas.dart';

/// 2.a [Data source] of the points program.
abstract class PointsSource {
  ResultFuture<PointsSummary> getSummary();

  ResultFuture<List<PointEntry>> getHistory();

  ResultFuture<PointDetail> getDetail(int id);
}

/// 2.b Static content taken from the Figma design.
///
/// TODO(backend): replace with a remote source once the MyBoss API exposes
/// the points balance, history and receipts (see docs/prd/PRD-003).
class PointsStatic implements PointsSource {
  const PointsStatic();

  static const _title = 'Point Earned';

  static final _history = <PointEntry>[
    PointEntry(
      id: 1,
      title: _title,
      date: DateTime(2026, 3, 5),
      points: 2,
      amount: 30000,
    ),
    PointEntry(
      id: 2,
      title: _title,
      date: DateTime(2026, 3, 4),
      points: 1,
      amount: 15000,
    ),
    PointEntry(
      id: 3,
      title: _title,
      date: DateTime(2026, 3, 4),
      points: 1,
      amount: 15000,
    ),
    PointEntry(
      id: 4,
      title: _title,
      date: DateTime(2026, 2, 24),
      points: 3,
      amount: 45000,
    ),
    PointEntry(
      id: 5,
      title: _title,
      date: DateTime(2026, 2, 20),
      points: 2,
      amount: 30000,
    ),
    PointEntry(
      id: 6,
      title: _title,
      date: DateTime(2026, 2, 20),
      points: 4,
      amount: 60000,
    ),
    PointEntry(
      id: 7,
      title: _title,
      date: DateTime(2026, 2, 16),
      points: 1,
      amount: 15000,
    ),
  ];

  @override
  ResultFuture<PointsSummary> getSummary() async => Right(
    PointsSummary(
      balance: 6969,
      expiringPoints: 100,
      expiresAt: DateTime.now().add(const Duration(days: 9)),
    ),
  );

  @override
  ResultFuture<List<PointEntry>> getHistory() async => Right(_history);

  @override
  ResultFuture<PointDetail> getDetail(int id) async {
    final entry = _history.firstWhere(
      (e) => e.id == id,
      orElse: () => _history.first,
    );

    // The Figma receipt belongs to the first entry; the others get one line.
    final lines = entry.id == 1
        ? const [
            PointLine(quantity: 1, name: 'Signature Glow', price: 26000),
            PointLine(quantity: 1, name: 'Nata de Coco', price: 2000),
            PointLine(quantity: 1, name: 'Earl Grey Sauce', price: 2000),
          ]
        : [PointLine(quantity: 1, name: 'Purchase', price: entry.amount)];

    return Right(
      PointDetail(
        entry: entry,
        lines: lines,
        itemCount: entry.points,
        subtotal: entry.amount,
        total: entry.amount,
      ),
    );
  }
}
