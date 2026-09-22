// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_yogurt_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuYogurtModel _$MenuYogurtModelFromJson(Map<String, dynamic> json) =>
    _MenuYogurtModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => ProductsModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const Meta()
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$MenuYogurtModelToJson(_MenuYogurtModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
      'error': instance.error,
    };
