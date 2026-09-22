part of 'store_list_bloc.dart';

@freezed
abstract class StoresListState with _$StoresListState {
  const factory StoresListState({
    @Default(StoreListModel()) StoreListModel stores,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadMore,
    @Default("") String error,
  }) = _StoresListState;
}
