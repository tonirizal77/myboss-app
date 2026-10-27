import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/stores/stores_ft.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'store_branches_bloc.freezed.dart';
part 'store_branches_event.dart';
part 'store_branches_state.dart';

/// Events
part 'events/event_fetch_store_branches.dart';

/// List of the store branches (`GET /store/branches`).
class StoreBranchesBloc
    extends HydratedBloc<StoreBranchesEvent, StoreBranchesState> {
  StoreBranchesBloc() : super(const StoreBranchesState()) {
    on<_FetchBranches>(_onFetch);
  }

  @override
  StoreBranchesState? fromJson(Map<String, dynamic> json) {
    return StoreBranchesState(
      branches: StoreBranchesModel.fromJson(json['branches']),
    );
  }

  @override
  Map<String, dynamic>? toJson(StoreBranchesState state) {
    return {'branches': state.branches.toJson()};
  }
}
