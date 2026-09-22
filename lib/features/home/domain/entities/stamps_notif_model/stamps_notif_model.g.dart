// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamps_notif_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StampsNotifModel _$StampsNotifModelFromJson(Map<String, dynamic> json) =>
    _StampsNotifModel(
      notifType: json['notif_type'] as String? ?? "sales",
      notifRemark: json['notif_remark'] as String? ?? "HAYO",
      data: json['data'] == null
          ? const DataNotif()
          : DataNotif.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StampsNotifModelToJson(_StampsNotifModel instance) =>
    <String, dynamic>{
      'notif_type': instance.notifType,
      'notif_remark': instance.notifRemark,
      'data': instance.data,
    };

_DataNotif _$DataNotifFromJson(Map<String, dynamic> json) => _DataNotif(
  customerId: (json['customer_id'] as num?)?.toInt(),
  storeId: (json['store_id'] as num?)?.toInt(),
  salesOrderId: (json['sales_order_id'] as num?)?.toInt(),
  salesOrderNo: json['sales_order_no'] as String?,
  salesReturnId: json['sales_return_id'],
  salesReturnNo: json['sales_return_no'],
);

Map<String, dynamic> _$DataNotifToJson(_DataNotif instance) =>
    <String, dynamic>{
      'customer_id': instance.customerId,
      'store_id': instance.storeId,
      'sales_order_id': instance.salesOrderId,
      'sales_order_no': instance.salesOrderNo,
      'sales_return_id': instance.salesReturnId,
      'sales_return_no': instance.salesReturnNo,
    };
