/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventUpdateDataVerifyHandler on ProfileBloc {
  void _onEventUpdateDataVerify(
    _EventUpdateDataVerify event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        event: event.runtimeType,
        action: event.action,
        phone: event.phone ?? state.phone,
        email: event.email ?? state.email,
      ),
    );
  }
}
