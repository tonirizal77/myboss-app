// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamps_detail_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StampsDetailState _$StampsDetailStateFromJson(Map<String, dynamic> json) =>
    _StampsDetailState(
      stampsDetail: json['stampsDetail'] == null
          ? const StampsDetailModel()
          : StampsDetailModel.fromJson(
              json['stampsDetail'] as Map<String, dynamic>,
            ),
      errorMessage: json['errorMessage'] as String? ?? "",
      status:
          $enumDecodeNullable(_$StatusEnumMap, json['status']) ??
          Status.initial,
    );

Map<String, dynamic> _$StampsDetailStateToJson(_StampsDetailState instance) =>
    <String, dynamic>{
      'stampsDetail': instance.stampsDetail,
      'errorMessage': instance.errorMessage,
      'status': _$StatusEnumMap[instance.status]!,
    };

const _$StatusEnumMap = {
  Status.initial: 'initial',
  Status.loading: 'loading',
  Status.success: 'success',
  Status.failed: 'failed',
};
