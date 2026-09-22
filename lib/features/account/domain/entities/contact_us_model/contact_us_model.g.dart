// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ContactUsModel _$ContactUsModelFromJson(Map<String, dynamic> json) =>
    _ContactUsModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      title: json['title'] as String? ?? "",
      links: json['links'] as String? ?? "",
    );

Map<String, dynamic> _$ContactUsModelToJson(_ContactUsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'title': instance.title,
      'links': instance.links,
    };
