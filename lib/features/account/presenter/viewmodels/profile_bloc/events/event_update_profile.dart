/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventUpdateProfiledHandler on ProfileBloc {
  void _onEventUpdateProfile(
    _EventUpdateProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        event: event.runtimeType,
        respon: Respons.loading,
        statusUpdateProfile: Status.loading,
        action: EditProfileAction.changeProfile,
      ),
    );

    final result = await getIt<UpdateProfileUc>().call(event.param);

    result.fold(
      (_l) {
        emit(
          state.copyWith(
            errorMessage: _l.error.message,
            respon: Respons.failure,
            statusUpdateProfile: Status.failed,
          ),
        );
      },
      (_r) {
        emit(
          state.copyWith(
            errorMessage: "",
            respon: Respons.success,
            profile: _r,
            statusUpdateProfile: Status.success,
          ),
        );
      },
    );
  }
}
