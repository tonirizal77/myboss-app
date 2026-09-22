part of '../verify_bloc.dart';

extension _EventInitialHandler on VerifyBloc {
  FutureOr<void> _onEventInitial(
    _EventInitial event,
    Emitter<VerifyState> emit,
  ) async {
    /// Initial Data
    /// Verification on State
    ///
    emit(state.copyWith(verifyData: event.data, action: ActionVerify.initial));
  }
}
