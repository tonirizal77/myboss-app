// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RegistrationModel _$RegistrationModelFromJson(Map<String, dynamic> json) =>
    _RegistrationModel(
      email: json['email'] as String? ?? "",
      name: json['name'] as String? ?? "",
      phone: json['phone'] as String? ?? "",
      avatarId: (json['avatar_id'] as num?)?.toInt() ?? 0,
      otpCode: json['otp_code'] as String? ?? "",
    );

Map<String, dynamic> _$RegistrationModelToJson(_RegistrationModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'name': instance.name,
      'phone': instance.phone,
      'avatar_id': instance.avatarId,
      'otp_code': instance.otpCode,
    };
