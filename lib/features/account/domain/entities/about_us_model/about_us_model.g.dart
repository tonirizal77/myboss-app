// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'about_us_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AboutUsModel _$AboutUsModelFromJson(Map<String, dynamic> json) =>
    _AboutUsModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      sitenavLinkTypeId: json['sitenav_link_type_id'] as String? ?? "",
      title: json['title'] as String? ?? "",
      description: json['description'] as String? ?? "",
      otherlinks: json['otherlinks'],
      photos:
          (json['photos'] as List<dynamic>?)
              ?.map((e) => Photos.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AboutUsModelToJson(_AboutUsModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'store_id': instance.storeId,
      'sitenav_link_type_id': instance.sitenavLinkTypeId,
      'title': instance.title,
      'description': instance.description,
      'otherlinks': instance.otherlinks,
      'photos': instance.photos,
    };

_Photos _$PhotosFromJson(Map<String, dynamic> json) => _Photos(
  width: (json['width'] as num?)?.toInt() ?? 0,
  height: (json['height'] as num?)?.toInt() ?? 0,
  viewOrder: (json['view_order'] as num?)?.toInt() ?? 0,
  title: json['title'] as String? ?? "",
  status: json['status'] as String? ?? "",
  filename: json['filename'] as String? ?? "",
);

Map<String, dynamic> _$PhotosToJson(_Photos instance) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'view_order': instance.viewOrder,
  'title': instance.title,
  'status': instance.status,
  'filename': instance.filename,
};
