import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_detail_model.freezed.dart';
part 'order_detail_model.g.dart';

/// `data` of `GET /profile/orders/find/{sales_order_id}`: the receipt behind
/// a points history row.
@freezed
abstract class OrderDetailModel with _$OrderDetailModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderDetailModel({
    @Default(0) int id,
    String? orderNo,

    /// `yyyy-MM-dd`
    String? orderDate,
    String? storeName,
    @Default(0) num totalQty,
    @Default([]) List<OrderItemModel> items,
    OrderAmountModel? amount,
  }) = _OrderDetailModel;

  factory OrderDetailModel.fromJson(Map<String, Object?> json) =>
      _$OrderDetailModelFromJson(json);
}

@freezed
abstract class OrderItemModel with _$OrderItemModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderItemModel({
    @Default(0) int id,
    int? itemId,
    @Default('') String name,
    String? variantName,
    @Default(0) num qty,

    /// Line total (qty x price).
    @Default(0) num amount,
    String? famount,
  }) = _OrderItemModel;

  factory OrderItemModel.fromJson(Map<String, Object?> json) =>
      _$OrderItemModelFromJson(json);
}

@freezed
abstract class OrderAmountModel with _$OrderAmountModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderAmountModel({
    @Default(0) num orderAmount,
    @Default(0) num discountAmount,

    /// Rupiah value of the points used on this order.
    @Default(0) num redeemedAmount,
    @Default(0) num serviceChargeAmount,
    @Default(0) num taxAmount,
    @Default(0) num shippingCost,
    @Default(0) num roundedAmount,
    @Default(0) num totalAmount,
  }) = _OrderAmountModel;

  factory OrderAmountModel.fromJson(Map<String, Object?> json) =>
      _$OrderAmountModelFromJson(json);
}
