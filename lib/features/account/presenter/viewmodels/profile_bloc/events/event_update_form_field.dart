/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../profile_bloc.dart';

extension _EventUpdateFormFieldHandler on ProfileBloc {
  void _onEventUpdateFormField(
    _EventUpdateFormField event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(event: event.runtimeType, profileEdit: event.data));
  }
}
