/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../menu_bloc.dart';

extension _EventListMenuYogurtHandler on MenuBloc {
  void _onEventListMenuYogurt(
    _EventListMenuYogurt event,
    Emitter<MenuState> emit,
  ) async {
    emit(state.copyWith(event: event.runtimeType, respon: Respons.loading));

    final result = await getIt<ListMenuYogurtUc>().call(event.param);

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
            menuYogurt: _r,
          ),
        );
      },
    );
  }
}
