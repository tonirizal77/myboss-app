part of '../verify_bloc.dart';

extension _EventResetHandler on VerifyBloc {
  FutureOr<void> _onEventReset(_EventReset event, Emitter<VerifyState> emit) {
    /// Reset on State
    ///
    emit(VerifyState());
  }
}
