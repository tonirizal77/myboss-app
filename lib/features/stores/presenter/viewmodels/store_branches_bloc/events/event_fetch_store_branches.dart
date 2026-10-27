part of '../store_branches_bloc.dart';

/// Extension on [StoreBranchesBloc] to fetch the branch list.
extension _FetchStoreBranchesHandler on StoreBranchesBloc {
  /// Event Handler for Fetch Store Branches
  void _onFetch(_FetchBranches event, Emitter<StoreBranchesState> emit) async {
    emit(state.copyWith(isLoading: true, error: ''));

    final result = await getIt<GetStoreBranchesUc>().call(event.location);

    result.fold(
      (l) {
        emit(state.copyWith(isLoading: false, error: l.error.message));
      },
      (r) {
        emit(state.copyWith(isLoading: false, branches: r));
      },
    );
  }
}
