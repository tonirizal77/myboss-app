// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_catalog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuCatalogModel _$MenuCatalogModelFromJson(Map<String, dynamic> json) =>
    _MenuCatalogModel(
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

Map<String, dynamic> _$MenuCatalogModelToJson(_MenuCatalogModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
      'error': instance.error,
    };
