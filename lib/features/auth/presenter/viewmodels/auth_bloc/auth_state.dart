part of 'auth_bloc.dart';

/// [AuthEvent] defines the base class for all authentication-related events
/// - Include verifications
///
@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState({
    @Default(Status.initial) Status status, // initial & success
    @Default(Status.initial) Status statusLogin,
    @Default(AuthStatus.unknown) AuthStatus authStatus,
    @Default(TokenModel()) TokenModel? dataToken,
    Type? event,
    @Default("") String errorMessage,
    @Default(false) bool forceLogout,
  }) = _AuthState;
}
