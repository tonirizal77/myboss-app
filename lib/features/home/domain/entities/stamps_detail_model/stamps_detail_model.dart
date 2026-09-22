import 'package:freezed_annotation/freezed_annotation.dart';

part 'stamps_detail_model.freezed.dart';
part 'stamps_detail_model.g.dart';

@freezed
abstract class StampsDetailModel with _$StampsDetailModel {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StampsDetailModel({
    String? fdiscountAmount,
    String? forderAmount,
    String? fredeemedAmount,
    String? fserviceChargeAmount,
    String? fshippingCost,
    String? ftaxAmount,
    String? ftotalAmount,
    String? ftotalCostAmount,
    @Default(0) int id,
    List<OrderDetail>? orderDetail,
    @Default(0) int redeemedPoints,
  }) = _StampsDetailModel;

  factory StampsDetailModel.fromJson(Map<String, dynamic> json) =>
      _$StampsDetailModelFromJson(json);
}

@freezed
abstract class OrderDetail with _$OrderDetail {
  /// Convert camel case variable into snake case variable
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory OrderDetail({
    @Default(0) int amount,
    String? famount,
    String? fprice,
    @Default(0) int id,
    String? name,
    @Default(0) int price,
    @Default(0) int qty,
  }) = _OrderDetail;

  factory OrderDetail.fromJson(Map<String, dynamic> json) =>
      _$OrderDetailFromJson(json);
}
