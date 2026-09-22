part of 'stamps_cubit.dart';

enum ActionStamps { initialize, getList, getNotif }

@freezed
abstract class StampsState with _$StampsState {
  const factory StampsState({
    @Default(StampsModel()) StampsModel stamps,
    @Default(StampsOptionModel()) StampsOptionModel stampsOptions,
    @Default(StampsNotifModel()) StampsNotifModel stampsNotif,
    @Default(ActionStamps.getList) ActionStamps action,

    /// Status
    @Default("") String errorMessage,
    @Default(Status.initial) Status status,
  }) = _StampsState;

  factory StampsState.fromJson(Map<String, dynamic> json) =>
      _$StampsStateFromJson(json);
}
