// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tnc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TncModel _$TncModelFromJson(Map<String, dynamic> json) => _TncModel(
  data:
      (json['data'] as List<dynamic>?)
          ?.map((e) => TncItemModel.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
);

Map<String, dynamic> _$TncModelToJson(_TncModel instance) => <String, dynamic>{
  'data': instance.data.map((e) => e.toJson()).toList(),
};

_TncItemModel _$TncItemModelFromJson(Map<String, dynamic> json) =>
    _TncItemModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      sitenavLinkTypeId: json['sitenav_link_type_id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      published: json['published'] as bool? ?? true,
      status: json['status'] as String? ?? "A",
    );

Map<String, dynamic> _$TncItemModelToJson(_TncItemModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'sitenav_link_type_id': instance.sitenavLinkTypeId,
      'title': instance.title,
      'description': instance.description,
      'published': instance.published,
      'status': instance.status,
    };
