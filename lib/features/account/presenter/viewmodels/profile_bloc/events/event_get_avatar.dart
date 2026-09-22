/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventGetAvatarHandler on ProfileBloc {
  void _onEventGetAvatar(
    _EventGetAvatar event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        event: event.runtimeType,
        respon: Respons.loading,
        statusFecthAvatars: Status.loading,
        action: EditProfileAction.fetchAvatar,
      ),
    );

    final result = await getIt<GetAvatarsUc>().call();

    result.fold(
      (_l) {
        emit(
          state.copyWith(
            errorMessage: _l.error.message,
            respon: Respons.failure,
            statusFecthAvatars: Status.failed,
          ),
        );
      },
      (_r) {
        emit(
          state.copyWith(
            errorMessage: "",
            respon: Respons.success,
            statusFecthAvatars: Status.success,
            avatarList: _r,
          ),
        );
      },
    );
  }
}

/// End
