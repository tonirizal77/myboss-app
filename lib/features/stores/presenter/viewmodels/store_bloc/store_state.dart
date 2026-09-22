part of 'store_bloc.dart';

@freezed
abstract class StoreState with _$StoreState {
  const factory StoreState({
    Type? event,
    @Default(Respons.initial) Respons respon,
    @Default('') String errorMessage,

    /// Data Models
    /// Sisipkan data model disini
    @Default(StoreModel()) StoreModel store,
  }) = _StoreState;
}
