// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tnc_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TncModel _$TncModelFromJson(Map<String, dynamic> json) => _TncModel(
  id: (json['id'] as num?)?.toInt() ?? 0,
  storeId: (json['store_id'] as num?)?.toInt() ?? 0,
  sitenavLinkTypeId: json['sitenav_link_type_id'] as String? ?? "",
  title: json['title'] as String? ?? "",
  description: json['description'] as String? ?? "",
);

Map<String, dynamic> _$TncModelToJson(_TncModel instance) => <String, dynamic>{
  'id': instance.id,
  'store_id': instance.storeId,
  'sitenav_link_type_id': instance.sitenavLinkTypeId,
  'title': instance.title,
  'description': instance.description,
};
