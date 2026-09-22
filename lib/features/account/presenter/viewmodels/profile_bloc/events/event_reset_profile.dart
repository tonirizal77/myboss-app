/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventResetProfileHandler on ProfileBloc {
  /// Drop persisted (hydrated) profile back to guest state - otherwise
  /// the last logged-in user's name/avatar keeps showing after
  /// logout/delete account since HydratedBloc restores it from disk.
  void _onEventResetProfile(
    _EventResetProfile event,
    Emitter<ProfileState> emit,
  ) async {
    emit(const ProfileState());
    await clear();
  }
}

/// End
