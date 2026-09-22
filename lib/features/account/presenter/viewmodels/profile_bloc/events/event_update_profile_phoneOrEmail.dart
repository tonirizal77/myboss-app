/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventUpdateProfilePhoneOrEmailHandler on ProfileBloc {
  void _onEventUpdateProfilePhoneOrEmail(
    _EventUpdateProfilePhoneOrEmail event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        event: event.runtimeType,
        profile: ProfileModel.fromJson(event.param['data']),
      ),
    );
  }
}
