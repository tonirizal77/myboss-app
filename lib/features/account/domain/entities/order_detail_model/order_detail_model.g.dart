// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OrderDetailModel _$OrderDetailModelFromJson(Map<String, dynamic> json) =>
    _OrderDetailModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      orderNo: json['order_no'] as String?,
      orderDate: json['order_date'] as String?,
      storeName: json['store_name'] as String?,
      totalQty: json['total_qty'] as num? ?? 0,
      items:
          (json['items'] as List<dynamic>?)
              ?.map((e) => OrderItemModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      amount: json['amount'] == null
          ? null
          : OrderAmountModel.fromJson(json['amount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$OrderDetailModelToJson(_OrderDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'order_no': instance.orderNo,
      'order_date': instance.orderDate,
      'store_name': instance.storeName,
      'total_qty': instance.totalQty,
      'items': instance.items,
      'amount': instance.amount,
    };

_OrderItemModel _$OrderItemModelFromJson(Map<String, dynamic> json) =>
    _OrderItemModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      itemId: (json['item_id'] as num?)?.toInt(),
      name: json['name'] as String? ?? '',
      variantName: json['variant_name'] as String?,
      qty: json['qty'] as num? ?? 0,
      amount: json['amount'] as num? ?? 0,
      famount: json['famount'] as String?,
    );

Map<String, dynamic> _$OrderItemModelToJson(_OrderItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'item_id': instance.itemId,
      'name': instance.name,
      'variant_name': instance.variantName,
      'qty': instance.qty,
      'amount': instance.amount,
      'famount': instance.famount,
    };

_OrderAmountModel _$OrderAmountModelFromJson(Map<String, dynamic> json) =>
    _OrderAmountModel(
      orderAmount: json['order_amount'] as num? ?? 0,
      discountAmount: json['discount_amount'] as num? ?? 0,
      redeemedAmount: json['redeemed_amount'] as num? ?? 0,
      serviceChargeAmount: json['service_charge_amount'] as num? ?? 0,
      taxAmount: json['tax_amount'] as num? ?? 0,
      shippingCost: json['shipping_cost'] as num? ?? 0,
      roundedAmount: json['rounded_amount'] as num? ?? 0,
      totalAmount: json['total_amount'] as num? ?? 0,
    );

Map<String, dynamic> _$OrderAmountModelToJson(_OrderAmountModel instance) =>
    <String, dynamic>{
      'order_amount': instance.orderAmount,
      'discount_amount': instance.discountAmount,
      'redeemed_amount': instance.redeemedAmount,
      'service_charge_amount': instance.serviceChargeAmount,
      'tax_amount': instance.taxAmount,
      'shipping_cost': instance.shippingCost,
      'rounded_amount': instance.roundedAmount,
      'total_amount': instance.totalAmount,
    };
