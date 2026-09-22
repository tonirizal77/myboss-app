// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamps_option_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StampsOptionModel _$StampsOptionModelFromJson(Map<String, dynamic> json) =>
    _StampsOptionModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => StampsOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? const Meta()
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$StampsOptionModelToJson(_StampsOptionModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
      'error': instance.error,
    };

_StampsOption _$StampsOptionFromJson(Map<String, dynamic> json) =>
    _StampsOption(
      id: (json['id'] as num?)?.toInt() ?? 0,
      redeemedPoints: (json['redeemed_points'] as num?)?.toInt() ?? 0,
      status: json['status'] as String? ?? "",
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? "",
    );

Map<String, dynamic> _$StampsOptionToJson(_StampsOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'redeemed_points': instance.redeemedPoints,
      'status': instance.status,
      'store_id': instance.storeId,
      'type': instance.type,
    };
