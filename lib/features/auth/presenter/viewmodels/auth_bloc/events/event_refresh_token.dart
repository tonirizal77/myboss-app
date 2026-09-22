part of '../auth_bloc.dart';

extension _EventRefreshToken on AuthBloc {
  void _onEventRefreshToken(RefreshToken event, Emitter<AuthState> emit) async {
    PrintHelper.printWarning("__Event Auth: ${event.runtimeType}");

    emit(state.copyWith(status: Status.loading, event: event.runtimeType));

    final result = await getIt<GetRefreshTokenUc>().call();

    await result.fold(
      (l) {
        emit(
          state.copyWith(
            status: Status.failed,
            errorMessage: l.error.message.isEmpty
                ? "Refresh Token Gagal!"
                : l.error.message,
            authStatus: AuthStatus.unauthenticated,
          ),
        );
      },
      (r) async {
        PrintHelper.printData("__berhasil refresh token: $r");

        emit(
          state.copyWith(
            status: Status.success,
            errorMessage: "",
            dataToken: r,
            authStatus: AuthStatus.authenticated,
          ),
        );

        /// remove old Access Token
        // await getIt<SharedPreferencesHelper>().removeAccesToken();

        // update token to localStorage
        await getIt<SharedPreferencesHelper>().setAccessToken(
          accessToken: r.accessToken,
          refreshToken: r.refreshToken,
          expiredAt: r.expiredAt,
        );

        /// Reload
        await getIt<SharedPreferencesHelper>().prefInstance.reload();
      },
    );
  }
}
