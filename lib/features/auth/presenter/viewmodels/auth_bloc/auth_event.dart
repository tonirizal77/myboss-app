part of 'auth_bloc.dart';

@freezed
abstract class AuthEvent with _$AuthEvent {
  /// Event to retrieve a non-user specific client token.
  const factory AuthEvent.clientToken() = GetClientToken;

  /// Event to refresh the current user session.
  const factory AuthEvent.checkAuth({@Default(false) bool forceLogout}) =
      CheckAuth;

  /// Refresh Token
  const factory AuthEvent.refreshToken() = RefreshToken;
}
