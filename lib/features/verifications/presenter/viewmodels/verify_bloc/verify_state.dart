/// !for file: verify_state.dart file
part of 'verify_bloc.dart';

enum ActionVerify { starting, initial, getOtp, getNewOtp, sendOtp }

@freezed
abstract class VerifyState with _$VerifyState {
  const factory VerifyState({
    @Default(ActionVerify.starting) ActionVerify action,
    @Default(Status.initial) Status statusGetOtp,
    @Default(Status.initial) Status statusSendOtp,
    @Default('') String errorMessage,

    /// Data Models
    @Default(VerifyModel()) VerifyModel verifyData,

    /// Success Confirm
    @Default({}) DataMap result,
  }) = _VerifyState;
}
