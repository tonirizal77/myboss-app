// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reasons_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ReasonsModel _$ReasonsModelFromJson(Map<String, dynamic> json) =>
    _ReasonsModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => ReasonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$ReasonsModelToJson(_ReasonsModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status': instance.status,
      'error': instance.error,
    };

_ReasonModel _$ReasonModelFromJson(Map<String, dynamic> json) => _ReasonModel(
  reasonId: (json['reason_id'] as num?)?.toInt() ?? 0,
  label: json['label'] as String? ?? "",
);

Map<String, dynamic> _$ReasonModelToJson(_ReasonModel instance) =>
    <String, dynamic>{'reason_id': instance.reasonId, 'label': instance.label};
