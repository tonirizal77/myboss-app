part of 'store_list_bloc.dart';

@freezed
class StoresListEvent with _$StoresListEvent {
  // const factory StoresListEvent.started() = _Started;

  const factory StoresListEvent.fetchStores() = _FetchStores;

  // const factory StoresListEvent.selectStore(int storeId) = _SelectStore;

  // const factory StoresListEvent.increment() = _Increment;
  // const factory StoresListEvent.decrement() = _Decrement;
}
