// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'voucher_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VoucherListModel _$VoucherListModelFromJson(Map<String, dynamic> json) =>
    _VoucherListModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => VoucherModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt(),
      error: (json['error'] as num?)?.toInt(),
    );

Map<String, dynamic> _$VoucherListModelToJson(_VoucherListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
      'error': instance.error,
    };

_VoucherModel _$VoucherModelFromJson(
  Map<String, dynamic> json,
) => _VoucherModel(
  activeDate: json['active_date'] as String? ?? "",
  code: json['code'] as String? ?? "",
  dailyResetUsage: (json['daily_reset_usage'] as num?)?.toInt() ?? 0,
  discountAmount: (json['discount_amount'] as num?)?.toInt() ?? 0,
  discountRate: (json['discount_rate'] as num?)?.toDouble() ?? 0.0,
  expiryDate: json['expiry_date'] as String? ?? "",
  hasBeenUsedByCustomer: json['has_been_used_by_customer'] as String? ?? "",
  id: (json['id'] as num?)?.toInt() ?? 0,
  isUseable: json['is_useable'] as String? ?? "",
  maxDiscountAmount: (json['max_discount_amount'] as num?)?.toInt() ?? 0,
  minOrderAmount: (json['min_order_amount'] as num?)?.toInt() ?? 0,
  noExpiry: (json['no_expiry'] as num?)?.toInt() ?? 0,
  noUsageLimit: (json['no_usage_limit'] as num?)?.toInt() ?? 0,
  oncePerCustomer: (json['once_per_customer'] as num?)?.toInt() ?? 0,
  promoValidAnyDay: (json['promo_valid_any_day'] as num?)?.toInt() ?? 0,
  promoValidDays: (json['promo_valid_days'] as num?)?.toInt() ?? 0,
  status: json['status'] as String? ?? "",
  storeId: (json['store_id'] as num?)?.toInt() ?? 0,
  storeName: json['store_name'] as String? ?? "",
  title: json['title'] as String? ?? "",
  usageLimit: (json['usage_limit'] as num?)?.toInt() ?? 0,
  validCustomerTypeMembership:
      (json['valid_customer_type_membership'] as num?)?.toInt() ?? 0,
  validForAllCustomers: (json['valid_for_all_customers'] as num?)?.toInt() ?? 0,
  validForAllProductBrands:
      (json['valid_for_all_product_brands'] as num?)?.toInt() ?? 0,
  validForAllProductCombos:
      (json['valid_for_all_product_combos'] as num?)?.toInt() ?? 0,
  validForAllProducts: (json['valid_for_all_products'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$VoucherModelToJson(_VoucherModel instance) =>
    <String, dynamic>{
      'active_date': instance.activeDate,
      'code': instance.code,
      'daily_reset_usage': instance.dailyResetUsage,
      'discount_amount': instance.discountAmount,
      'discount_rate': instance.discountRate,
      'expiry_date': instance.expiryDate,
      'has_been_used_by_customer': instance.hasBeenUsedByCustomer,
      'id': instance.id,
      'is_useable': instance.isUseable,
      'max_discount_amount': instance.maxDiscountAmount,
      'min_order_amount': instance.minOrderAmount,
      'no_expiry': instance.noExpiry,
      'no_usage_limit': instance.noUsageLimit,
      'once_per_customer': instance.oncePerCustomer,
      'promo_valid_any_day': instance.promoValidAnyDay,
      'promo_valid_days': instance.promoValidDays,
      'status': instance.status,
      'store_id': instance.storeId,
      'store_name': instance.storeName,
      'title': instance.title,
      'usage_limit': instance.usageLimit,
      'valid_customer_type_membership': instance.validCustomerTypeMembership,
      'valid_for_all_customers': instance.validForAllCustomers,
      'valid_for_all_product_brands': instance.validForAllProductBrands,
      'valid_for_all_product_combos': instance.validForAllProductCombos,
      'valid_for_all_products': instance.validForAllProducts,
    };
