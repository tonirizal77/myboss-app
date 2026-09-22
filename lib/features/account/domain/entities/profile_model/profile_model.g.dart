// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileModel _$ProfileModelFromJson(Map<String, dynamic> json) =>
    _ProfileModel(
      acceptNewsletter: (json['accept_newsletter'] as num?)?.toInt() ?? 0,
      address: json['address'] as String? ?? "",
      avatar: json['avatar'] as String? ?? "",
      avatarId: (json['avatar_id'] as num?)?.toInt() ?? 0,
      cityId: (json['city_id'] as num?)?.toInt() ?? 0,
      code: json['code'] as String? ?? "",
      company: json['company'] as String? ?? "",
      countryId: json['country_id'] as String? ?? "",
      createdTime: json['created_time'] as String? ?? "",
      creditLimit: json['credit_limit'] as String? ?? "",
      customerTypeId: json['customer_type_id'] == null
          ? null
          : CustomerTypeId.fromJson(
              json['customer_type_id'] as Map<String, dynamic>,
            ),
      email: json['email'] as String? ?? "",
      favatar: json['favatar'] as String? ?? "",
      id: (json['id'] as num?)?.toInt() ?? 0,
      isEmailVerified: (json['is_email_verified'] as num?)?.toInt() ?? 0,
      isFrozen: (json['is_frozen'] as num?)?.toInt() ?? 0,
      isVerified: (json['is_verified'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      notes: json['notes'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      photo: json['photo'] as String? ?? "",
      photomd: json['photomd'] as String? ?? "",
      photosm: json['photosm'] as String? ?? "",
      postalCode: json['postal_code'] as String? ?? "",
      status: json['status'] as String? ?? "",
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      subdistrictId: (json['subdistrict_id'] as num?)?.toInt() ?? 0,
      level: (json['level'] as num?)?.toInt() ?? 1,
      levelName: json['level_name'] as String? ?? "Cool",
      maxStamp: (json['max_stamp'] as num?)?.toInt() ?? 0,
      filledStamp: (json['filled_stamp'] as num?)?.toInt() ?? 0,
      maxTotalStamp: (json['max_total_stamp'] as num?)?.toInt() ?? 0,
      stampFreeCount: (json['stamp_free_count'] as num?)?.toInt() ?? 0,
      availableVoucherCount:
          (json['available_voucher_count'] as num?)?.toInt() ?? 0,
      cumulativePrev: (json['cumulative_prev'] as num?)?.toInt() ?? 0,
      currentCycle: (json['current_cycle'] as num?)?.toInt() ?? 0,
      totalPoint: (json['total_point'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ProfileModelToJson(_ProfileModel instance) =>
    <String, dynamic>{
      'accept_newsletter': instance.acceptNewsletter,
      'address': instance.address,
      'avatar': instance.avatar,
      'avatar_id': instance.avatarId,
      'city_id': instance.cityId,
      'code': instance.code,
      'company': instance.company,
      'country_id': instance.countryId,
      'created_time': instance.createdTime,
      'credit_limit': instance.creditLimit,
      'customer_type_id': instance.customerTypeId,
      'email': instance.email,
      'favatar': instance.favatar,
      'id': instance.id,
      'is_email_verified': instance.isEmailVerified,
      'is_frozen': instance.isFrozen,
      'is_verified': instance.isVerified,
      'name': instance.name,
      'notes': instance.notes,
      'phone': instance.phone,
      'photo': instance.photo,
      'photomd': instance.photomd,
      'photosm': instance.photosm,
      'postal_code': instance.postalCode,
      'status': instance.status,
      'store_id': instance.storeId,
      'subdistrict_id': instance.subdistrictId,
      'level': instance.level,
      'level_name': instance.levelName,
      'max_stamp': instance.maxStamp,
      'filled_stamp': instance.filledStamp,
      'max_total_stamp': instance.maxTotalStamp,
      'stamp_free_count': instance.stampFreeCount,
      'available_voucher_count': instance.availableVoucherCount,
      'cumulative_prev': instance.cumulativePrev,
      'current_cycle': instance.currentCycle,
      'total_point': instance.totalPoint,
    };

_CustomerTypeId _$CustomerTypeIdFromJson(Map<String, dynamic> json) =>
    _CustomerTypeId(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? 'guest',
    );

Map<String, dynamic> _$CustomerTypeIdToJson(_CustomerTypeId instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};
