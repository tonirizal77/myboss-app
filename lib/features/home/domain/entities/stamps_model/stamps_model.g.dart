// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamps_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StampsModel _$StampsModelFromJson(Map<String, dynamic> json) => _StampsModel(
  level: (json['level'] as num?)?.toInt() ?? 0,
  levelName: json['level_name'] as String? ?? "",
  maxStamp: (json['max_stamp'] as num?)?.toInt() ?? 0,
  filledStamp: (json['filled_stamp'] as num?)?.toInt() ?? 0,
  maxTotalStamp: (json['max_total_stamp'] as num?)?.toInt() ?? 0,
  stampFreeCount: (json['stamp_free_count'] as num?)?.toInt() ?? 0,
  cumulativePrev: (json['cumulative_prev'] as num?)?.toInt() ?? 0,
  cycle: (json['cycle'] as num?)?.toInt() ?? 0,
  totalPoint: (json['total_point'] as num?)?.toInt() ?? 0,
  stampsNeeded: (json['stamps_needed'] as num?)?.toInt() ?? 0,
);

Map<String, dynamic> _$StampsModelToJson(_StampsModel instance) =>
    <String, dynamic>{
      'level': instance.level,
      'level_name': instance.levelName,
      'max_stamp': instance.maxStamp,
      'filled_stamp': instance.filledStamp,
      'max_total_stamp': instance.maxTotalStamp,
      'stamp_free_count': instance.stampFreeCount,
      'cumulative_prev': instance.cumulativePrev,
      'cycle': instance.cycle,
      'total_point': instance.totalPoint,
      'stamps_needed': instance.stampsNeeded,
    };
