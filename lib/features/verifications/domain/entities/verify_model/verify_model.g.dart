// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyModel _$VerifyModelFromJson(Map<String, dynamic> json) => _VerifyModel(
  fromPage:
      $enumDecodeNullable(_$FromPageEnumMap, json['from_page']) ??
      FromPage.initial,
  phone: json['phone'] as String? ?? "",
  newPhone: json['new_phone'] as String? ?? "",
  email: json['email'] as String? ?? "",
  newEmail: json['new_email'] as String? ?? "",
  otp: json['otp'] as String? ?? "",
  newOtp: json['new_otp'] as String? ?? "",
  register: json['register'] == null
      ? const RegistrationModel()
      : RegistrationModel.fromJson(json['register'] as Map<String, dynamic>),
);

Map<String, dynamic> _$VerifyModelToJson(_VerifyModel instance) =>
    <String, dynamic>{
      'from_page': _$FromPageEnumMap[instance.fromPage]!,
      'phone': instance.phone,
      'new_phone': instance.newPhone,
      'email': instance.email,
      'new_email': instance.newEmail,
      'otp': instance.otp,
      'new_otp': instance.newOtp,
      'register': instance.register,
    };

const _$FromPageEnumMap = {
  FromPage.initial: 'initial',
  FromPage.login: 'login',
  FromPage.register: 'register',
  FromPage.changeProfile: 'changeProfile',
  FromPage.changeNumber: 'changeNumber',
  FromPage.changeEmail: 'changeEmail',
  FromPage.changeNewNumber: 'changeNewNumber',
  FromPage.changeNewEmail: 'changeNewEmail',
};
