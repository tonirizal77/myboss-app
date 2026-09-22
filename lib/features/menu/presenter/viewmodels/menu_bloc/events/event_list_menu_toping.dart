/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../menu_bloc.dart';

extension _EventListMenuTopingHandler on MenuBloc {
  void _onEventListMenuToping(
    _EventListMenuToping event,
    Emitter<MenuState> emit,
  ) async {
    emit(state.copyWith(event: event.runtimeType, respon: Respons.loading));

    final result = await getIt<ListMenuTopingUc>().call(event.param);

    result.fold(
      (_l) {
        emit(
          state.copyWith(
            errorMessage: _l.error.message,
            respon: Respons.failure,
          ),
        );
      },
      (_r) {
        emit(
          state.copyWith(
            errorMessage: "",
            respon: Respons.success,
            menuToping: _r,
          ),
        );
      },
    );
  }
}

/// End
