// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamps_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StampsDetailModel _$StampsDetailModelFromJson(Map<String, dynamic> json) =>
    _StampsDetailModel(
      fdiscountAmount: json['fdiscount_amount'] as String?,
      forderAmount: json['forder_amount'] as String?,
      fredeemedAmount: json['fredeemed_amount'] as String?,
      fserviceChargeAmount: json['fservice_charge_amount'] as String?,
      fshippingCost: json['fshipping_cost'] as String?,
      ftaxAmount: json['ftax_amount'] as String?,
      ftotalAmount: json['ftotal_amount'] as String?,
      ftotalCostAmount: json['ftotal_cost_amount'] as String?,
      id: (json['id'] as num?)?.toInt() ?? 0,
      orderDetail: (json['order_detail'] as List<dynamic>?)
          ?.map((e) => OrderDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
      redeemedPoints: (json['redeemed_points'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$StampsDetailModelToJson(_StampsDetailModel instance) =>
    <String, dynamic>{
      'fdiscount_amount': instance.fdiscountAmount,
      'forder_amount': instance.forderAmount,
      'fredeemed_amount': instance.fredeemedAmount,
      'fservice_charge_amount': instance.fserviceChargeAmount,
      'fshipping_cost': instance.fshippingCost,
      'ftax_amount': instance.ftaxAmount,
      'ftotal_amount': instance.ftotalAmount,
      'ftotal_cost_amount': instance.ftotalCostAmount,
      'id': instance.id,
      'order_detail': instance.orderDetail,
      'redeemed_points': instance.redeemedPoints,
    };

_OrderDetail _$OrderDetailFromJson(Map<String, dynamic> json) => _OrderDetail(
  amount: (json['amount'] as num?)?.toInt() ?? 0,
  famount: json['famount'] as String?,
  fprice: json['fprice'] as String?,
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String?,
  price: (json['price'] as num?)?.toInt() ?? 0,
  qty: (json['qty'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$OrderDetailToJson(_OrderDetail instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'famount': instance.famount,
      'fprice': instance.fprice,
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'qty': instance.qty,
    };
