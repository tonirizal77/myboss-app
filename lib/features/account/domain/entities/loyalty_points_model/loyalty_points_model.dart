import 'package:freezed_annotation/freezed_annotation.dart';

part 'loyalty_points_model.freezed.dart';
part 'loyalty_points_model.g.dart';

/// `data` of `GET /profile/loyalty-points` (PRD-011): balance, the points
/// that expire first and the points history.
@freezed
abstract class LoyaltyPointsModel with _$LoyaltyPointsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoyaltyPointsModel({
    /// Not sent by staging (2026-11-11); the app shows `balance_points` of
    /// `/profile/info` instead.
    int? totalBalancePoint,
    ExpiringPointsModel? expiringPoints,

    /// History, earned and redeemed (staging sends `all_point`; the older
    /// `active_point` is still read as a fallback).
    @JsonKey(readValue: _readHistory)
    @Default([])
    List<ActivePointModel> allPoint,
  }) = _LoyaltyPointsModel;

  factory LoyaltyPointsModel.fromJson(Map<String, dynamic> json) =>
      _$LoyaltyPointsModelFromJson(json);
}

@freezed
abstract class ExpiringPointsModel with _$ExpiringPointsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ExpiringPointsModel({
    @Default(0) int balancePoints,

    /// `yyyy-MM-dd`
    String? expireDate,

    /// Server text, e.g. "Kadaluarsa dalam 3 hari".
    String? expireDateSubtext,
  }) = _ExpiringPointsModel;

  factory ExpiringPointsModel.fromJson(Map<String, dynamic> json) =>
      _$ExpiringPointsModelFromJson(json);
}

/// One history row. [salesOrderId] / [orderTotal] are null for points that
/// did not come from an order (e.g. bonus).
@freezed
abstract class ActivePointModel with _$ActivePointModel {
  const ActivePointModel._();

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ActivePointModel({
    @Default(0) int id,

    /// `Active` (earned), `Deducted` (redeemed) or `Expired`.
    String? status,

    /// Server label, e.g. "Point Earned" / "Point Redeemed".
    String? detail,
    int? salesOrderId,

    /// `yyyy-MM-dd HH:mm:ss`
    String? date,

    /// Always positive; [status] says whether it was earned or deducted
    /// (older payloads: `earned_points`).
    @JsonKey(readValue: _readPoints) @Default(0) int displayedPoint,
    int? orderTotal,
    String? forderTotal,
  }) = _ActivePointModel;

  factory ActivePointModel.fromJson(Map<String, dynamic> json) =>
      _$ActivePointModelFromJson(json);

  bool get isDeducted => status?.toLowerCase() == 'deducted';

  bool get isExpired => status?.toLowerCase() == 'expired';

  /// Signed amount: negative when deducted (redeemed) or expired.
  int get signedPoints =>
      isDeducted || isExpired ? -displayedPoint.abs() : displayedPoint.abs();
}

Object? _readHistory(Map<dynamic, dynamic> json, String key) =>
    json['all_point'] ?? json['active_point'];

Object? _readPoints(Map<dynamic, dynamic> json, String key) =>
    json['displayed_point'] ?? json['earned_points'];
