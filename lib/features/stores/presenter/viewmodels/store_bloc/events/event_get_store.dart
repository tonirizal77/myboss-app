/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../store_bloc.dart';

extension _EventGetStoreHandler on StoreBloc {
  void _onEventGetStore(_EventGetStore event, Emitter<StoreState> emit) async {
    emit(state.copyWith(respon: Respons.loading, event: event.runtimeType));

    final result = await getIt<GetStoreUc>().call();

    result.fold(
      (l) {
        emit(
          state.copyWith(
            respon: Respons.failure,
            errorMessage: l.error.message,
          ),
        );
      },
      (r) {
        emit(state.copyWith(respon: Respons.success, store: r));
      },
    );
  }
}

/// End
