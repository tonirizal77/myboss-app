/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventGenCodeHandler on ProfileBloc {
  void _onEventGenCode(_EventGenCode event, Emitter<ProfileState> emit) async {
    emit(state.copyWith(event: event.runtimeType, respon: Respons.loading));

    final result = await getIt<GenerateCodeUc>().call();

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
            genCode: _r,
          ),
        );
      },
    );
  }
}
