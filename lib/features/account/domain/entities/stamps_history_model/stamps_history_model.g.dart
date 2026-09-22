// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamps_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StampsHistoryModel _$StampsHistoryModelFromJson(Map<String, dynamic> json) =>
    _StampsHistoryModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StampsHistory.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? const Meta()
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$StampsHistoryModelToJson(_StampsHistoryModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
      'error': instance.error,
    };

_StampsHistory _$StampsHistoryFromJson(Map<String, dynamic> json) =>
    _StampsHistory(
      balancePoints: (json['balance_points'] as num?)?.toInt() ?? 0,
      cancelledPoints: (json['cancelled_points'] as num?)?.toInt() ?? 0,
      earnedDate: json['earned_date'] as String? ?? "",
      earnedPoints: json['earned_points'] as String? ?? "",
      expiryDate: json['expiry_date'] as String? ?? "",
      redeemedPoints: (json['redeemed_points'] as num?)?.toInt() ?? 0,
      salesOrderId: (json['sales_order_id'] as num?)?.toInt() ?? 0,
      salesReturnId: (json['sales_return_id'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? "",
      type: json['type'] as String? ?? "",
    );

Map<String, dynamic> _$StampsHistoryToJson(_StampsHistory instance) =>
    <String, dynamic>{
      'balance_points': instance.balancePoints,
      'cancelled_points': instance.cancelledPoints,
      'earned_date': instance.earnedDate,
      'earned_points': instance.earnedPoints,
      'expiry_date': instance.expiryDate,
      'redeemed_points': instance.redeemedPoints,
      'sales_order_id': instance.salesOrderId,
      'sales_return_id': instance.salesReturnId,
      'status': instance.status,
      'type': instance.type,
    };
