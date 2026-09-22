// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stamps_notif_cubit.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StampsNotifState _$StampsNotifStateFromJson(
  Map<String, dynamic> json,
) => _StampsNotifState(
  stampsNotif: json['stampsNotif'] == null
      ? const StampsNotifModel()
      : StampsNotifModel.fromJson(json['stampsNotif'] as Map<String, dynamic>),
  action:
      $enumDecodeNullable(_$ActionNotifEnumMap, json['action']) ??
      ActionNotif.initialize,
  status:
      $enumDecodeNullable(_$StatusEnumMap, json['status']) ?? Status.initial,
);

Map<String, dynamic> _$StampsNotifStateToJson(_StampsNotifState instance) =>
    <String, dynamic>{
      'stampsNotif': instance.stampsNotif,
      'action': _$ActionNotifEnumMap[instance.action]!,
      'status': _$StatusEnumMap[instance.status]!,
    };

const _$ActionNotifEnumMap = {
  ActionNotif.initialize: 'initialize',
  ActionNotif.getNotif: 'getNotif',
};

const _$StatusEnumMap = {
  Status.initial: 'initial',
  Status.loading: 'loading',
  Status.success: 'success',
  Status.failed: 'failed',
};
