// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_branches_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreBranchesModel _$StoreBranchesModelFromJson(Map<String, dynamic> json) =>
    _StoreBranchesModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => StoreBranch.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const StoreBranchesMeta()
          : StoreBranchesMeta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$StoreBranchesModelToJson(_StoreBranchesModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'status': instance.status,
      'error': instance.error,
    };

_StoreBranch _$StoreBranchFromJson(Map<String, dynamic> json) => _StoreBranch(
  id: (json['id'] as num?)?.toInt(),
  urlId: json['url_id'] as String?,
  name: json['name'] as String?,
  address: json['address'] as String?,
  logo: json['logo'] as String?,
  isStoreParent: (json['is_store_parent'] as num?)?.toInt(),
  appStatus: json['app_status'] == null
      ? null
      : AppStatus.fromJson(json['app_status'] as Map<String, dynamic>),
  locationLat: json['location_lat'] as String?,
  locationLon: json['location_lon'] as String?,
  cityName: json['city_name'] as String?,
  distance: (json['distance'] as num?)?.toDouble(),
  isOpen: json['is_open'] as bool? ?? false,
  todayHours: json['today_hours'] as String?,
);

Map<String, dynamic> _$StoreBranchToJson(_StoreBranch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url_id': instance.urlId,
      'name': instance.name,
      'address': instance.address,
      'logo': instance.logo,
      'is_store_parent': instance.isStoreParent,
      'app_status': instance.appStatus?.toJson(),
      'location_lat': instance.locationLat,
      'location_lon': instance.locationLon,
      'city_name': instance.cityName,
      'distance': instance.distance,
      'is_open': instance.isOpen,
      'today_hours': instance.todayHours,
    };

_StoreBranchesMeta _$StoreBranchesMetaFromJson(Map<String, dynamic> json) =>
    _StoreBranchesMeta(
      total: (json['total'] as num?)?.toInt() ?? 0,
      page: (json['page'] as num?)?.toInt() ?? 1,
      offset: (json['offset'] as num?)?.toInt() ?? 0,
      perPage: (json['per_page'] as num?)?.toInt() ?? 15,
      totalPage: (json['total_page'] as num?)?.toInt() ?? 1,
    );

Map<String, dynamic> _$StoreBranchesMetaToJson(_StoreBranchesMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'offset': instance.offset,
      'per_page': instance.perPage,
      'total_page': instance.totalPage,
    };
