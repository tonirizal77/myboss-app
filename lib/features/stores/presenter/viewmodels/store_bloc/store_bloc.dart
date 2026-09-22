import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

// ignore: unused_import
import '../flows/flows.dart';

part 'store_event.dart';
part 'store_state.dart';
part 'store_bloc.freezed.dart';

/// Handlers Event
part 'events/event_get_store.dart';

class StoreBloc extends HydratedBloc<StoreEvent, StoreState> {
  StoreBloc() : super(const StoreState()) {
    on<_EventGetStore>(_onEventGetStore);
  }

  @override
  StoreState? fromJson(Map<String, dynamic> json) {
    return state.copyWith(store: StoreModel.fromJson(json['store']));
  }

  @override
  Map<String, dynamic>? toJson(StoreState state) {
    return {'store': state.store.toJson()};
  }
}
