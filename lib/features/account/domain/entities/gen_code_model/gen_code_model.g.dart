// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gen_code_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_GenCodeModel _$GenCodeModelFromJson(Map<String, dynamic> json) =>
    _GenCodeModel(
      id: (json['id'] as num?)?.toInt() ?? 0,
      codeExpiry: json['code_expiry'] as String? ?? "",
      code: json['code'] as String? ?? "",
    );

Map<String, dynamic> _$GenCodeModelToJson(_GenCodeModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'code_expiry': instance.codeExpiry,
      'code': instance.code,
    };
