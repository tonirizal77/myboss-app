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
        // `PUT /profile/update` answers with a partial profile (no phone,
        // email, points, vouchers...). Only take the edited fields so the
        // Account page keeps the rest of the profile from `/profile/info`.
        final _current = state.profile;
        final _merged = _current.copyWith(
          name: _r.name.isNotEmpty ? _r.name : _current.name,
          avatarId: _r.avatarId != 0 ? _r.avatarId : _current.avatarId,
          avatar: _r.avatar.isNotEmpty ? _r.avatar : _current.avatar,
          favatar: _r.favatar.isNotEmpty ? _r.favatar : _current.favatar,
        );

        emit(
          state.copyWith(
            errorMessage: "",
            respon: Respons.success,
            profile: _merged,
            statusUpdateProfile: Status.success,
          ),
        );
      },
    );
  }
}
