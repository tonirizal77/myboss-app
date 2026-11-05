// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promo_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PromoPointsModel _$PromoPointsModelFromJson(Map<String, dynamic> json) =>
    _PromoPointsModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => PromoPoint.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PromoPointsModelToJson(_PromoPointsModel instance) =>
    <String, dynamic>{'data': instance.data.map((e) => e.toJson()).toList()};

_PromoPoint _$PromoPointFromJson(Map<String, dynamic> json) => _PromoPoint(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  photo: json['photo'] as String?,
  redeemedPoints: (json['redeemed_points'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$PromoPointToJson(_PromoPoint instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo': instance.photo,
      'redeemed_points': instance.redeemedPoints,
    };

_PromoVouchersModel _$PromoVouchersModelFromJson(Map<String, dynamic> json) =>
    _PromoVouchersModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => PromoVoucher.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PromoVouchersModelToJson(_PromoVouchersModel instance) =>
    <String, dynamic>{'data': instance.data.map((e) => e.toJson()).toList()};

_PromoVoucher _$PromoVoucherFromJson(Map<String, dynamic> json) =>
    _PromoVoucher(
      id: (json['id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      discountLabel: json['discount_label'] as String? ?? '',
      expiryDate: json['expiry_date'] as String?,
    );

Map<String, dynamic> _$PromoVoucherToJson(_PromoVoucher instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'discount_label': instance.discountLabel,
      'expiry_date': instance.expiryDate,
    };
