// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'menu_toping_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MenuTopingModel _$MenuTopingModelFromJson(Map<String, dynamic> json) =>
    _MenuTopingModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => DataToping.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const Meta()
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$MenuTopingModelToJson(_MenuTopingModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
      'error': instance.error,
    };

_DataToping _$DataTopingFromJson(Map<String, dynamic> json) => _DataToping(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? "",
  storeid: (json['storeid'] as num?)?.toInt() ?? 0,
  status: json['status'] as String? ?? "",
  products:
      (json['products'] as List<dynamic>?)
          ?.map((e) => ProductsModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$DataTopingToJson(_DataToping instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'storeid': instance.storeid,
      'status': instance.status,
      'products': instance.products,
    };
