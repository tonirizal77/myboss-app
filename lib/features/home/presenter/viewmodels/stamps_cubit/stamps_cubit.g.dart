// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamps_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StampsState _$StampsStateFromJson(Map<String, dynamic> json) => _StampsState(
  stamps: json['stamps'] == null
      ? const StampsModel()
      : StampsModel.fromJson(json['stamps'] as Map<String, dynamic>),
  stampsOptions: json['stampsOptions'] == null
      ? const StampsOptionModel()
      : StampsOptionModel.fromJson(
          json['stampsOptions'] as Map<String, dynamic>,
        ),
  stampsNotif: json['stampsNotif'] == null
      ? const StampsNotifModel()
      : StampsNotifModel.fromJson(json['stampsNotif'] as Map<String, dynamic>),
  action:
      $enumDecodeNullable(_$ActionStampsEnumMap, json['action']) ??
      ActionStamps.getList,
  errorMessage: json['errorMessage'] as String? ?? "",
  status:
      $enumDecodeNullable(_$StatusEnumMap, json['status']) ?? Status.initial,
);

Map<String, dynamic> _$StampsStateToJson(_StampsState instance) =>
    <String, dynamic>{
      'stamps': instance.stamps,
      'stampsOptions': instance.stampsOptions,
      'stampsNotif': instance.stampsNotif,
      'action': _$ActionStampsEnumMap[instance.action]!,
      'errorMessage': instance.errorMessage,
      'status': _$StatusEnumMap[instance.status]!,
    };

const _$ActionStampsEnumMap = {
  ActionStamps.initialize: 'initialize',
  ActionStamps.getList: 'getList',
  ActionStamps.getNotif: 'getNotif',
};

const _$StatusEnumMap = {
  Status.initial: 'initial',
  Status.loading: 'loading',
  Status.success: 'success',
  Status.failed: 'failed',
};
