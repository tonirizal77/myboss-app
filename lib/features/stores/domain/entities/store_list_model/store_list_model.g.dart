// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreListModel _$StoreListModelFromJson(Map<String, dynamic> json) =>
    _StoreListModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => StoreList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$StoreListModelToJson(_StoreListModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'error': instance.error,
    };

_StoreList _$StoreListFromJson(Map<String, dynamic> json) => _StoreList(
  address: json['address'] as String?,
  city: json['city'] as String?,
  fStatus: json['f_status'] as String?,
  googleMapLink: json['google_map_link'] as String?,
  id: (json['id'] as num?)?.toInt(),
  image: json['image'] as String?,
  locationLat: json['location_lat'] as String?,
  locationLon: json['location_lon'] as String?,
  name: json['name'] as String?,
  phone: json['phone'] as String?,
  status: json['status'] as String?,
);

Map<String, dynamic> _$StoreListToJson(_StoreList instance) =>
    <String, dynamic>{
      'address': instance.address,
      'city': instance.city,
      'f_status': instance.fStatus,
      'google_map_link': instance.googleMapLink,
      'id': instance.id,
      'image': instance.image,
      'location_lat': instance.locationLat,
      'location_lon': instance.locationLon,
      'name': instance.name,
      'phone': instance.phone,
      'status': instance.status,
    };
