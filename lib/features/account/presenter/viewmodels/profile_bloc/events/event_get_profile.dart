/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventGetProfileHandler on ProfileBloc {
  void _onEventGetProfile(
    _EventGetProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        event: event.runtimeType,
        respon: Respons.loading,
        statusFecthProfile: Status.loading,
      ),
    );

    final result = await getIt<GetProfileUc>().call();

    result.fold(
      (_l) {
        emit(
          state.copyWith(
            errorMessage: _l.error.message,
            respon: Respons.failure,
            statusFecthProfile: Status.failed,
          ),
        );
      },
      (_r) {
        emit(
          state.copyWith(
            errorMessage: "",
            respon: Respons.success,
            profile: _r,
            statusFecthProfile: Status.success,
          ),
        );
      },
    );
  }
}

/// End
