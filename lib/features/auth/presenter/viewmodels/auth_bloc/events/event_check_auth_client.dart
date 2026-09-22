part of '../auth_bloc.dart';

/// Extension on [AuthBloc] to handle client token retrieval.
extension _EventCheckAuth on AuthBloc {
  void _onEventCheckAuth(CheckAuth event, Emitter<AuthState> emit) async {
    emit(state.copyWith(status: Status.loading, event: event.runtimeType));

    // 1. Get data login from shared preferences
    final _dataLoginMap = await getIt<SharedPreferencesHelper>().getDataLogin();

    final String? _phone = _dataLoginMap['phone'];
    final String? _accessToken = _dataLoginMap['access_token'];
    final String? _refreshToken = _dataLoginMap['refresh_token'];
    final DateTime? _expiredAt = DateTime.tryParse(
      _dataLoginMap['expired_at'] ?? '',
    );

    PrintHelper.printError(
      "__Event check auth client: phone: $_phone, token-access:$_accessToken",
    );

    // 2. Check user is signed in before
    if (_phone != null && _accessToken != null) {
      /// Setting if isGuest active
      // final bool isGuest = _phone == '-';

      if (event.forceLogout) {
        /// Re-Get Client Token
        /// - Reset initial state to trigger listeners
        emit(
          AuthState(authStatus: AuthStatus.unknown, event: event.runtimeType),
        );
      } else {
        /// cek expire token
        final isExired = await getIt<SharedPreferencesHelper>().checkExpToken();

        if (isExired) {
          /// - Renew Get Client Token Access
          /// to trigger listeners
          emit(
            state.copyWith(
              status: Status.initial,
              authStatus: AuthStatus.refreshToken,
            ),
          );
        } else {
          /// Get Token Local
          /// Update state (Token & Login) User to trigger listeners
          emit(
            state.copyWith(
              dataToken: TokenModel(
                accessToken: _accessToken,
                refreshToken: _refreshToken,
                expiredAt: _expiredAt,
              ),
              status: Status.success,
              statusLogin: Status.success,
              authStatus: AuthStatus.authenticated,
            ),
          );
        }
      }
    } else {
      if (_accessToken != null && _phone == null) {
        final _tokenModel = TokenModel(
          accessToken: _accessToken,
          refreshToken: _refreshToken,
          expiredAt: _expiredAt,
        );

        emit(
          state.copyWith(
            status: Status.success,
            authStatus: AuthStatus.authenticated,
            statusLogin: Status.initial,
            dataToken: _tokenModel,
          ),
        );
        // }
      } else {
        /// Re-Get Client Token
        /// - Reset initial state to trigger listeners
        emit(
          AuthState(
            status: Status.initial,
            authStatus: AuthStatus.unknown,
            event: event.runtimeType,
          ),
        );
      }
    }
  }
}
