/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../verify_bloc.dart';

extension _EventGetOtpHandler on VerifyBloc {
  FutureOr<void> _onEventGetOtp(
    _EventGetOtp event,
    Emitter<VerifyState> emit,
  ) async {
    emit(
      state.copyWith(statusGetOtp: Status.loading, action: ActionVerify.getOtp),
    );

    final result = await getIt<GetOtpCodeUc>().call(event.param);

    result.fold(
      (_l) {
        emit(
          state.copyWith(
            statusGetOtp: Status.failed,
            errorMessage: _l.error.message,
          ),
        );
      },
      (_r) {
        emit(
          state.copyWith(
            statusGetOtp: Status.success,
            errorMessage: "",
            result: _r,
          ),
        );
      },
    );
  }
}
