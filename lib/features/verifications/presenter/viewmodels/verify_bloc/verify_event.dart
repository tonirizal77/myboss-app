/// !for file: verify_event.dart file
part of 'verify_bloc.dart';

@freezed
abstract class VerifyEvent with _$VerifyEvent {
  const factory VerifyEvent.initial(VerifyModel data) = _EventInitial;
  const factory VerifyEvent.getOtp(ParamOtp param) = _EventGetOtp;
  const factory VerifyEvent.getNewOtp(ParamOtp param) = _EventGetNewOtp;
  const factory VerifyEvent.sendOtp(ParamOtp param) = _EventSendOtp;
  const factory VerifyEvent.reset() = _EventReset;
}
