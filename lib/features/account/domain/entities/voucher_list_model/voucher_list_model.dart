import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

part 'voucher_list_model.freezed.dart';
part 'voucher_list_model.g.dart';

@freezed
abstract class VoucherListModel with _$VoucherListModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory VoucherListModel({
    List<VoucherModel>? data,
    Meta? meta,
    int? status,
    int? error,
  }) = _VoucherListModel;

  factory VoucherListModel.fromJson(Map<String, dynamic> json) =>
      _$VoucherListModelFromJson(json);
}

@freezed
abstract class VoucherModel with _$VoucherModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory VoucherModel({
    @Default("") String activeDate,
    @Default("") String code,
    @Default(0) int dailyResetUsage,
    @Default(0) int discountAmount,
    @Default(0.0) double discountRate,
    @Default("") String expiryDate,
    @Default("") String hasBeenUsedByCustomer,
    @Default(0) int id,
    @Default("") String isUseable,
    @Default(0) int maxDiscountAmount,
    @Default(0) int minOrderAmount,
    @Default(0) int noExpiry,
    @Default(0) int noUsageLimit,
    @Default(0) int oncePerCustomer,
    @Default(0) int promoValidAnyDay,
    @Default(0) int promoValidDays,
    @Default("") String status,
    @Default(0) int storeId,
    @Default("") String storeName,
    @Default("") String title,
    @Default(0) int usageLimit,
    @Default(0) int validCustomerTypeMembership,
    @Default(0) int validForAllCustomers,
    @Default(0) int validForAllProductBrands,
    @Default(0) int validForAllProductCombos,
    @Default(0) int validForAllProducts,
  }) = _VoucherModel;

  factory VoucherModel.fromJson(Map<String, dynamic> json) =>
      _$VoucherModelFromJson(json);
}
