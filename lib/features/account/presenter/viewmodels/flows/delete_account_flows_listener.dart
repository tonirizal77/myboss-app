part of 'flows.dart';

/// Mendengarkan [VerifyBloc] untuk step OTP "delete account"
/// ([FromPage.deleteAccount]) - beda dengan [VerifyFlowsListener], ini tidak
/// pindah ke halaman OTP generik karena form reason+OTP-nya sudah ada di
/// satu halaman saja ([DeleteAccountVerifyPage]).
class DeleteAccountFlowsListener {
  const DeleteAccountFlowsListener._();

  /// Listener untuk verifikasi OTP - kalau sukses, lanjut submit request
  /// penghapusan akun yang sebenarnya (lihat [AccountFlows.submitDeleteAccountRequest]).
  static FutureOr<void> sendOtpCodeListen(
    BuildContext context,
    VerifyState state,
  ) async {
    if (state.statusSendOtp == Status.loading) {
      getIt<LoadingHelper>().turnOnLoading();
      return;
    }

    if (state.statusSendOtp == Status.failed) {
      getIt<LoadingHelper>().turnOffLoading();
      await getIt<FlushbarHelper>().showErrorFlushbar(
        context: context,
        message: state.errorMessage,
      );
      return;
    }

    await AccountFlows.submitDeleteAccountRequest(context);
  }
}
