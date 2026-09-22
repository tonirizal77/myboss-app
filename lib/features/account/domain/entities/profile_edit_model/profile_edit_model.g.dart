// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_edit_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProfileEditModel _$ProfileEditModelFromJson(Map<String, dynamic> json) =>
    _ProfileEditModel(
      avatar: json['avatar'] == null
          ? const AvatarsModel()
          : AvatarsModel.fromJson(json['avatar'] as Map<String, dynamic>),
      name: json['name'] as String? ?? "",
    );

Map<String, dynamic> _$ProfileEditModelToJson(_ProfileEditModel instance) =>
    <String, dynamic>{'avatar': instance.avatar, 'name': instance.name};
