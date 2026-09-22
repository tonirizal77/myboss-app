/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventInitialFormFieldHandler on ProfileBloc {
  void _onEventInitialFormField(
    _EventInitialFormField event,
    Emitter<ProfileState> emit,
  ) async {
    emit(
      state.copyWith(
        event: event.runtimeType,
        profileEdit: event.data,
        action: EditProfileAction.initializeFormData,
      ),
    );
  }
}
