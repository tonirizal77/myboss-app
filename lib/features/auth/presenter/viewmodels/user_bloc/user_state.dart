part of 'user_bloc.dart';

@freezed
abstract class UserState with _$UserState {
  const factory UserState({
    @Default(false) bool isLoading,
    @Default(Respons.initial) Respons respon,
    @Default("") String errorMessage,
    @Default(const Failures()) Failures error,
    @Default(false) bool isGuest,
    @Default(const TokenModel()) TokenModel dataToken,
    @Default({}) Map<String, dynamic> errorOtp,
    @Default({}) Map<String, dynamic> successOtp,
    @Default(UserCheckAuth) Type event,
    @Default("") String phoneOtp,
    @Default(ActionConfirm.login) ActionConfirm actionConfirmOtp,
    @Default(FromPage.login) FromPage fromPage,
    @Default(FromPage.login) FromPage verificationTo,
    @Default(const LoginModel()) LoginModel dataLogin,
    @Default(const RegistrationModel()) RegistrationModel register,

    /// Status
    ///
    @Default(Status.initial) Status statusCheckAuth,
    @Default(Status.initial) Status statusLogin,
    @Default(Status.initial) Status statusLogout,
    @Default(Status.initial) Status statusDeleteAccount,
    @Default(Status.initial) Status statusRegister,
    @Default(Status.initial) Status statusSendOtp,
    @Default(Status.initial) Status statusGetOtp,
    @Default(Status.initial) Status statusConfirmOtp,
    @Default(Status.initial) Status statusRefreshToken,
  }) = _UserState;
}
