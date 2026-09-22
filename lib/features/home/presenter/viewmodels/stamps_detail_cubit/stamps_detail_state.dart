part of 'stamps_detail_cubit.dart';

@freezed
abstract class StampsDetailState with _$StampsDetailState {
  const factory StampsDetailState({
    @Default(StampsDetailModel()) StampsDetailModel stampsDetail,

    /// Status
    @Default("") String errorMessage,
    @Default(Status.initial) Status status,
  }) = _StampsDetailState;

  factory StampsDetailState.fromJson(Map<String, dynamic> json) =>
      _$StampsDetailStateFromJson(json);
}
