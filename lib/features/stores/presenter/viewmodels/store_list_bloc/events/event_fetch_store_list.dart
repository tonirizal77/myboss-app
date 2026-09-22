part of '../store_list_bloc.dart';

/// Extension on [StoresListBloc] to handle OTP requests.
extension _FetchStoreListHandler on StoresListBloc {
  /// Event Handler for Fetch List Store
  void _onFetch(_FetchStores event, Emitter<StoresListState> emit) async {
    emit(state.copyWith(isLoading: true));

    final result = await getIt<GetStoreListUc>().call();

    result.fold(
      (l) {
        emit(state.copyWith(isLoading: false, error: l.error.message));
      },
      (r) {
        emit(state.copyWith(isLoading: false, stores: r));
      },
    );
  }
}
