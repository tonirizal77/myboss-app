import 'package:freezed_annotation/freezed_annotation.dart';

part 'loyalty_points_model.freezed.dart';
part 'loyalty_points_model.g.dart';

/// `data` of `GET /profile/loyalty-points` (PRD-011): balance, the points
/// that expire first and the earning history.
@freezed
abstract class LoyaltyPointsModel with _$LoyaltyPointsModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LoyaltyPointsModel({
    @Default(0) int totalBalancePoint,
    ExpiringPointsModel? expiringPoints,
    @Default([]) List<ActivePointModel> activePoint,
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
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory ActivePointModel({
    @Default(0) int id,
    int? salesOrderId,

    /// `yyyy-MM-dd HH:mm:ss`
    String? date,
    @Default(0) int earnedPoints,
    int? orderTotal,
    String? forderTotal,
  }) = _ActivePointModel;

  factory ActivePointModel.fromJson(Map<String, dynamic> json) =>
      _$ActivePointModelFromJson(json);
}
