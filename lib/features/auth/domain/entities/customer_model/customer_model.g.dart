// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Customer _$CustomerFromJson(Map<String, dynamic> json) => _Customer(
  acceptNewsletter: (json['accept_newsletter'] as num?)?.toInt() ?? 0,
  address: json['address'] as String?,
  cart: json['cart'],
  code: json['code'] as String?,
  company: json['company'] as String?,
  creditLimit: json['credit_limit'] as String?,
  customerType: json['customer_type'] == null
      ? null
      : CustomerType.fromJson(json['customer_type'] as Map<String, dynamic>),
  customerTypeId: (json['customer_type_id'] as num?)?.toInt() ?? 0,
  dob: json['dob'] as String?,
  email: json['email'] as String?,
  expiryDate: json['expiry_date'] as String?,
  id: (json['id'] as num?)?.toInt(),
  isEmailVerified: (json['is_email_verified'] as num?)?.toInt() ?? 0,
  isFrozen: (json['is_frozen'] as num?)?.toInt() ?? 0,
  isVerified: (json['is_verified'] as num?)?.toInt() ?? 0,
  location: json['location'] == null
      ? null
      : LocationCustomer.fromJson(json['location'] as Map<String, dynamic>),
  name: json['name'] as String?,
  notes: json['notes'] as String?,
  phone: json['phone'] as String?,
  status: json['status'] as String?,
  storeId: (json['store_id'] as num?)?.toInt(),
  subDistricId: (json['sub_distric_id'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$CustomerToJson(_Customer instance) => <String, dynamic>{
  'accept_newsletter': instance.acceptNewsletter,
  'address': instance.address,
  'cart': instance.cart,
  'code': instance.code,
  'company': instance.company,
  'credit_limit': instance.creditLimit,
  'customer_type': instance.customerType,
  'customer_type_id': instance.customerTypeId,
  'dob': instance.dob,
  'email': instance.email,
  'expiry_date': instance.expiryDate,
  'id': instance.id,
  'is_email_verified': instance.isEmailVerified,
  'is_frozen': instance.isFrozen,
  'is_verified': instance.isVerified,
  'location': instance.location,
  'name': instance.name,
  'notes': instance.notes,
  'phone': instance.phone,
  'status': instance.status,
  'store_id': instance.storeId,
  'sub_distric_id': instance.subDistricId,
};

_CustomerType _$CustomerTypeFromJson(Map<String, dynamic> json) =>
    _CustomerType(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? 'guest',
    );

Map<String, dynamic> _$CustomerTypeToJson(_CustomerType instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_LocationCustomer _$LocationCustomerFromJson(Map<String, dynamic> json) =>
    _LocationCustomer(
      city: json['city'] as String?,
      cityDistrict: json['city_district'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      country: json['country'] as String?,
      state: json['state'] as String?,
      stateId: (json['state_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$LocationCustomerToJson(_LocationCustomer instance) =>
    <String, dynamic>{
      'city': instance.city,
      'city_district': instance.cityDistrict,
      'city_id': instance.cityId,
      'country': instance.country,
      'state': instance.state,
      'state_id': instance.stateId,
    };
