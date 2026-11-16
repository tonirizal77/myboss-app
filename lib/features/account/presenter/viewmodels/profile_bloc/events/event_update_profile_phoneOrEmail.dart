/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventUpdateProfilePhoneOrEmailHandler on ProfileBloc {
  void _onEventUpdateProfilePhoneOrEmail(
    _EventUpdateProfilePhoneOrEmail event,
    Emitter<ProfileState> emit,
  ) async {
    // The verify response is not guaranteed to be a full profile: only take
    // phone/email from it and keep the rest. `AccountFlows.onChangedProfile`
    // refreshes the whole profile from `/profile/info` right after.
    final _data = event.param['data'];
    final _current = state.profile;
    var _profile = _current;

    if (_data is Map<String, dynamic>) {
      final _r = ProfileModel.fromJson(_data);
      _profile = _current.copyWith(
        phone: _r.phone.isNotEmpty ? _r.phone : _current.phone,
        email: _r.email.isNotEmpty ? _r.email : _current.email,
      );
    }

    emit(state.copyWith(event: event.runtimeType, profile: _profile));
  }
}
