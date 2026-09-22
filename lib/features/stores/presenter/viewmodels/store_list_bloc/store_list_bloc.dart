import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/stores/stores_ft.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'store_list_bloc.freezed.dart';
part 'store_list_event.dart';
part 'store_list_state.dart';

/// Events
part 'events/event_fetch_store_list.dart';
part 'events/event_counter.dart';

class StoresListBloc extends HydratedBloc<StoresListEvent, StoresListState> {
  StoresListBloc() : super(const StoresListState()) {
    on<_FetchStores>(_onFetch);
  }

  @override
  StoresListState? fromJson(Map<String, dynamic> json) {
    return StoresListState(stores: StoreListModel.fromJson(json['stores']));
  }

  @override
  Map<String, dynamic>? toJson(StoresListState state) {
    return {'stores': state.stores.toJson()};
  }
}
