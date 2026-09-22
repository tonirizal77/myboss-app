// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avatar_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AvatarListModel _$AvatarListModelFromJson(Map<String, dynamic> json) =>
    _AvatarListModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => AvatarsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt(),
      error: (json['error'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AvatarListModelToJson(_AvatarListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
      'status': instance.status,
      'error': instance.error,
    };

_AvatarsModel _$AvatarsModelFromJson(Map<String, dynamic> json) =>
    _AvatarsModel(
      fimg: json['fimg'] as String?,
      id: (json['id'] as num?)?.toInt(),
      img: json['img'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$AvatarsModelToJson(_AvatarsModel instance) =>
    <String, dynamic>{
      'fimg': instance.fimg,
      'id': instance.id,
      'img': instance.img,
      'name': instance.name,
    };
