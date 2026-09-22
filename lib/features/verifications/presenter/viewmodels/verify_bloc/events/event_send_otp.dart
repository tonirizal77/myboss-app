/// !for event handler: moved to folder events
/// berikan nama file sesuai eventnya
part of '../verify_bloc.dart';

extension _EventSendOtpHandler on VerifyBloc {
  void _onEventSendOtp(_EventSendOtp event, Emitter<VerifyState> emit) async {
    emit(
      state.copyWith(
        statusSendOtp: Status.loading,
        action: ActionVerify.sendOtp,
      ),
    );

    final result = await getIt<SendOtpCodeUc>().call(event.param);

    await result.fold(
      (_l) {
        emit(
          state.copyWith(
            statusSendOtp: Status.failed,
            errorMessage: _l.error.message,
          ),
        );
      },
      (_r) async {
        final _fromPage = state.verifyData.fromPage;
        final _phone = state.verifyData.phone;

        /// Switch FromPage

        switch (_fromPage) {
          case .login:
            // Update State User
            await UserFlows.successVerify(phone: _phone, result: _r);
            break;
          case .register:
            // Update State User
            await UserFlows.successVerify(phone: _phone, result: _r);
            break;

          default:
          // !nothing event
          /// Update Phone or Email
          /// Goto Page Form Update Phone or Email
        }

        emit(
          state.copyWith(
            statusSendOtp: Status.success,
            errorMessage: "",
            result: _r,
          ),
        );
      },
    );
  }
}
