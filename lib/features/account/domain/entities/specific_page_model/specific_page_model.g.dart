// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'specific_page_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SpecificPageModel _$SpecificPageModelFromJson(Map<String, dynamic> json) =>
    _SpecificPageModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? '',
      sitenavLinkTypeId: json['sitenav_link_type_id'] as String? ?? '',
      description: json['description'] as String? ?? '',
      metaDescription: json['meta_description'] as String? ?? '',
      metaKeywords: json['meta_keywords'] as String? ?? '',
      otherlinks:
          (json['otherlinks'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [''],
      photos: json['photos'] as List<dynamic>? ?? const [],
    );

Map<String, dynamic> _$SpecificPageModelToJson(_SpecificPageModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'title': instance.title,
      'sitenav_link_type_id': instance.sitenavLinkTypeId,
      'description': instance.description,
      'meta_description': instance.metaDescription,
      'meta_keywords': instance.metaKeywords,
      'otherlinks': instance.otherlinks,
      'photos': instance.photos,
    };
