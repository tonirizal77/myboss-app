// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loyalty_points_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoyaltyPointsModel _$LoyaltyPointsModelFromJson(Map<String, dynamic> json) =>
    _LoyaltyPointsModel(
      totalBalancePoint: (_readBalance(json, 'total_balance_point') as num?)
          ?.toInt(),
      expiringPoints: json['expiring_points'] == null
          ? null
          : ExpiringPointsModel.fromJson(
              json['expiring_points'] as Map<String, dynamic>,
            ),
      allPoint:
          (_readHistory(json, 'all_point') as List<dynamic>?)
              ?.map((e) => ActivePointModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$LoyaltyPointsModelToJson(_LoyaltyPointsModel instance) =>
    <String, dynamic>{
      'total_balance_point': instance.totalBalancePoint,
      'expiring_points': instance.expiringPoints,
      'all_point': instance.allPoint,
    };

_ExpiringPointsModel _$ExpiringPointsModelFromJson(Map<String, dynamic> json) =>
    _ExpiringPointsModel(
      balancePoints: (json['balance_points'] as num?)?.toInt() ?? 0,
      expireDate: json['expire_date'] as String?,
      expireDateSubtext: json['expire_date_subtext'] as String?,
    );

Map<String, dynamic> _$ExpiringPointsModelToJson(
  _ExpiringPointsModel instance,
) => <String, dynamic>{
  'balance_points': instance.balancePoints,
  'expire_date': instance.expireDate,
  'expire_date_subtext': instance.expireDateSubtext,
};

_ActivePointModel _$ActivePointModelFromJson(Map<String, dynamic> json) =>
    _ActivePointModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      status: json['status'] as String?,
      detail: json['detail'] as String?,
      salesOrderId: (json['sales_order_id'] as num?)?.toInt(),
      date: json['date'] as String?,
      displayedPoint:
          (_readPoints(json, 'displayed_point') as num?)?.toInt() ?? 0,
      orderTotal: (json['order_total'] as num?)?.toInt(),
      forderTotal: json['forder_total'] as String?,
    );

Map<String, dynamic> _$ActivePointModelToJson(_ActivePointModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'status': instance.status,
      'detail': instance.detail,
      'sales_order_id': instance.salesOrderId,
      'date': instance.date,
      'displayed_point': instance.displayedPoint,
      'order_total': instance.orderTotal,
      'forder_total': instance.forderTotal,
    };
