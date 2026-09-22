part of 'user_bloc.dart';

@freezed
abstract class UserEvent with _$UserEvent {
  const factory UserEvent.userCheckAuth({
    @Default(false) bool forceLogout,
    String? errorMessage,
  }) = UserCheckAuth;

  const factory UserEvent.userSuccessVerify({
    required String phone,
    required DataMap result,
  }) = _UserSuccessVerify;

  const factory UserEvent.userLogout() = UserLogout;

  const factory UserEvent.userDeleteAccount() = UserDeleteAccount;

  const factory UserEvent.userReset() = _UserReset;
}
