import 'package:freezed_annotation/freezed_annotation.dart';

part 'promo_model.freezed.dart';
part 'promo_model.g.dart';

/// Response of `GET /promotion/loyalty-points/list` (rewards to redeem).
@freezed
abstract class PromoPointsModel with _$PromoPointsModel {
  @JsonSerializable(explicitToJson: true)
  const factory PromoPointsModel({@Default([]) List<PromoPoint> data}) =
      _PromoPointsModel;

  factory PromoPointsModel.fromJson(Map<String, Object?> json) =>
      _$PromoPointsModelFromJson(json);
}

@freezed
abstract class PromoPoint with _$PromoPoint {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PromoPoint({
    @Default(0) int id,

    /// Catalog product of the reward: its details come from
    /// `/catalog/show/{product_id}`. Null on older payloads.
    int? productId,
    @Default('') String name,
    String? photo,
    @Default(0) int redeemedPoints,
  }) = _PromoPoint;

  factory PromoPoint.fromJson(Map<String, Object?> json) =>
      _$PromoPointFromJson(json);
}

/// Response of `GET /promotion/discount-vouchers/list`.
@freezed
abstract class PromoVouchersModel with _$PromoVouchersModel {
  @JsonSerializable(explicitToJson: true)
  const factory PromoVouchersModel({@Default([]) List<PromoVoucher> data}) =
      _PromoVouchersModel;

  factory PromoVouchersModel.fromJson(Map<String, Object?> json) =>
      _$PromoVouchersModelFromJson(json);
}

@freezed
abstract class PromoVoucher with _$PromoVoucher {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory PromoVoucher({
    @Default(0) int id,

    /// Voucher code to copy, e.g. `MBVIP100`.
    String? code,
    @Default('') String title,
    @Default('') String discountLabel,

    /// `yyyy-MM-dd`; null = no expiry.
    String? expiryDate,

    /// Terms, already numbered by the server ("1. Discount 10%").
    @Default([]) List<String?> tnc,

    /// For a signed-in member: whether they already used it, and when.
    @Default(false) bool isUsed,
    String? usedDate,
  }) = _PromoVoucher;

  factory PromoVoucher.fromJson(Map<String, Object?> json) =>
      _$PromoVoucherFromJson(json);
}
