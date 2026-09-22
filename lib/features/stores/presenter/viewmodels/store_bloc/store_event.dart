part of 'store_bloc.dart';

@freezed
abstract class StoreEvent with _$StoreEvent {
  const factory StoreEvent.initial() = _Initial;
  const factory StoreEvent.getStore() = _EventGetStore;
  const factory StoreEvent.getAboutUs() = _EventAboutUs;
}
