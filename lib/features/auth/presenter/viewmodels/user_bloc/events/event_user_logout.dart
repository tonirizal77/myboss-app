part of '../user_bloc.dart';

extension _EventUserLogout on UserBloc {
  void _userLogout(UserLogout event, Emitter<UserState> emit) async {
    emit(state.copyWith(isLoading: true, event: event.runtimeType));

    final res = await getIt<UserLogoutUc>().call();

    await res.fold(
      (l) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: l.error.message,
            statusLogout: Status.failed,
          ),
        );
      },
      (r) async {
        /// 1. Remove Access Token - a stale token surviving logout lets a
        /// later auth re-check silently restore the old session and
        /// redirect away from the login/OTP flow (see event_user_check_auth.dart).
        await getIt<SharedPreferencesHelper>().removeAccesToken(
          withPhone: true,
        );

        /// 1b. Immediately acquire a fresh guest client token so requests
        /// made from the login form (e.g. requesting an OTP) have a valid
        /// Authorization header right away. Called directly on the usecase
        /// (not via AuthEvent.clientToken) - that event's success listener
        /// unconditionally redirects to MainPage, which could yank the user
        /// away mid-login if it resolved after they'd already started
        /// typing their phone number.
        final _clientToken = await getIt<GetClientTokenUc>().call();

        await _clientToken.fold(
          (_) async {},
          (token) => getIt<SharedPreferencesHelper>().setAccessToken(
            accessToken: token.accessToken,
            refreshToken: token.refreshToken,
            expiredAt: token.expiredAt,
          ),
        );

        /// 2. Drop persisted profile - avoid showing the previous
        /// user's name/avatar once back in guest mode.
        getIt<ProfileBloc>().add(const ProfileEvent.reset());

        /// Drop persisted vouchers/stamps history - avoid showing the
        /// previous user's data once back in guest mode.
        getIt<AccountBloc>().add(const AccountEvent.reset());

        // 3. Emit Signed Out / Reset User State and then cek status auth
        //
        // Keep `event: UserLogout` - a bare `UserState(...)` resets it to
        // the default, which breaks the `listenWhen` on the logout
        // BlocListener (auth_ft.dart) and skips the redirect to welcome page.
        emit(
          UserState(
            isLoading: false,
            statusLogout: Status.success,
            event: event.runtimeType,
          ),
        );
      },
    );
  }
}
