part of 'stamps_notif_cubit.dart';

enum ActionNotif { initialize, getNotif }

@freezed
abstract class StampsNotifState with _$StampsNotifState {
  const factory StampsNotifState({
    @Default(StampsNotifModel()) StampsNotifModel stampsNotif,
    @Default(ActionNotif.initialize) ActionNotif action,
    @Default(Status.initial) Status status,
  }) = _StampsNotifState;

  factory StampsNotifState.fromJson(Map<String, dynamic> json) =>
      _$StampsNotifStateFromJson(json);
}
