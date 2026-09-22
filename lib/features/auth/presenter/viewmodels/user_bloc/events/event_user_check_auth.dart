part of '../user_bloc.dart';

extension _UserCheckAuthHandler on UserBloc {
  void _userCheckAuth(UserCheckAuth event, Emitter<UserState> emit) async {
    // 1. Get data login from shared preferences
    final _dataLoginMap = await getIt<SharedPreferencesHelper>().getDataLogin();

    final String? _phone = _dataLoginMap['phone'];
    final String? _accessToken = _dataLoginMap['access_token'];
    final String? _refreshToken = _dataLoginMap['refresh_token'];
    final DateTime? _expiredAt = DateTime.tryParse(
      _dataLoginMap['expired_at'] ?? '',
    );

    PrintHelper.printError(
      "__Event check auth user: phone: $_phone, token-access:$_accessToken",
    );

    // 2. Check user is signed in before
    if (_phone != null && _accessToken != null) {
      // final bool isGuest = _phone == '-';

      if (event.forceLogout) {
        // Reset initial state to trigger listeners
        emit(UserState(event: event.runtimeType));
      } else {
        /// cek expire token
        final isExired = await getIt<SharedPreferencesHelper>().checkExpToken();

        if (isExired) {
          /// - Renew Client Token Access
          /// to trigger listeners
          /// todo: call event UserRefreshToken(),
          // emit(UserState(event: event.runtimeType));

          emit(
            state.copyWith(
              event: event.runtimeType,
              statusCheckAuth: Status.success,
              statusLogin: Status.failed,
            ),
          );
        } else {
          /// Get Token Local
          final _tokenModel = TokenModel(
            accessToken: _accessToken,
            refreshToken: _dataLoginMap['refresh_token'],
            expiredAt: _expiredAt,
          );

          /// Update state (Token & Login) User to trigger listeners
          emit(
            state.copyWith(
              dataToken: _tokenModel,
              dataLogin: LoginModel(
                accessToken: _accessToken,
                refreshToken: _dataLoginMap['refresh_token'],
                expiredAt: _expiredAt,
                // customer:
              ),
              // isGuest: isGuest,
              statusCheckAuth: Status.success,
              statusLogin: Status.success,
              event: event.runtimeType,
            ),
          );
        }
      }
    } else {
      if (_accessToken != null && _phone == null) {
        if (AppSetting.isRecheckAuth.value) {
          /// todo: makesure access token still valid

          // Reset initial state to trigger listeners
          emit(UserState(event: event.runtimeType));
        } else {
          final _tokenModel = TokenModel(
            accessToken: _accessToken,
            refreshToken: _refreshToken,
            expiredAt: _expiredAt,
          );

          emit(
            state.copyWith(
              statusCheckAuth: Status.success,
              statusLogin: Status.initial,
              dataToken: _tokenModel,
              event: event.runtimeType,
            ),
          );
        }
      } else {
        // Reset initial state to trigger listeners
        emit(UserState(event: event.runtimeType));
      }
    }
  }
}
