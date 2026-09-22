// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginModel _$LoginModelFromJson(Map<String, dynamic> json) => _LoginModel(
  accessToken: json['access_token'] as String?,
  refreshToken: json['refresh_token'] as String?,
  expiredAt: const DateTimeStringOrNullSerializer().fromJson(
    json['expired_at'] as String?,
  ),
  customer: json['customer'] == null
      ? null
      : CustomerModel.fromJson(json['customer'] as Map<String, dynamic>),
);

Map<String, dynamic> _$LoginModelToJson(_LoginModel instance) =>
    <String, dynamic>{
      'access_token': instance.accessToken,
      'refresh_token': instance.refreshToken,
      'expired_at': const DateTimeStringOrNullSerializer().toJson(
        instance.expiredAt,
      ),
      'customer': instance.customer,
    };
