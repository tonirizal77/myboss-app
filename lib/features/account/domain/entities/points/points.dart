import 'package:equatable/equatable.dart';

/// Points balance shown on Account and on top of the Points page.
class PointsSummary extends Equatable {
  const PointsSummary({
    this.balance = 0,
    this.expiringPoints = 0,
    this.expiresAt,
  });

  final int balance;

  /// Points that expire first, and when.
  final int expiringPoints;
  final DateTime? expiresAt;

  @override
  List<Object?> get props => [balance, expiringPoints, expiresAt];
}

/// One row of the points history.
class PointEntry extends Equatable {
  const PointEntry({
    required this.id,
    required this.title,
    required this.date,
    required this.points,
    required this.amount,
  });

  final int id;

  /// e.g. "Point Earned".
  final String title;
  final DateTime date;

  /// Positive = earned, negative = redeemed.
  final int points;

  /// Purchase amount (Rp) the points came from.
  final int amount;

  bool get isEarned => points >= 0;

  @override
  List<Object?> get props => [id, title, date, points, amount];
}

/// Receipt behind a [PointEntry] (Point Earned sheet).
class PointDetail extends Equatable {
  const PointDetail({
    required this.entry,
    this.lines = const [],
    this.itemCount = 0,
    this.subtotal = 0,
    this.discount = 0,
    this.redeemedPoints = 0,
    this.serviceFee = 0,
    this.tax = 0,
    this.shippingCost = 0,
    this.total = 0,
  });

  final PointEntry entry;
  final List<PointLine> lines;
  final int itemCount;
  final int subtotal;
  final int discount;
  final int redeemedPoints;
  final int serviceFee;
  final int tax;
  final int shippingCost;
  final int total;

  @override
  List<Object?> get props => [
    entry,
    lines,
    itemCount,
    subtotal,
    discount,
    redeemedPoints,
    serviceFee,
    tax,
    shippingCost,
    total,
  ];
}

class PointLine extends Equatable {
  const PointLine({
    required this.quantity,
    required this.name,
    required this.price,
  });

  final int quantity;
  final String name;
  final int price;

  @override
  List<Object?> get props => [quantity, name, price];
}
