part of '../auth_bloc.dart';

/// Extension on [AuthBloc] to handle client token retrieval.
extension _EventGetClientToken on AuthBloc {
  /// Handles fetching the system-level token.
  /// Used for non-user operations like initial data load checks.
  void _onEventGetClientToken(
    GetClientToken event,
    Emitter<AuthState> emit,
  ) async {
    // Notify UI that system token fetch is in progress
    emit(
      AuthState(
        status: Status.loading,
        authStatus: AuthStatus.unknown,
        event: event.runtimeType,
      ),
    );

    final result = await getIt<GetClientTokenUc>().call();

    await result.fold(
      (l) async => emit(
        state.copyWith(
          status: Status.failed,
          authStatus: AuthStatus.unauthenticated,
          errorMessage: l.error.message,
        ),
      ),
      (r) async {
        /// Clear Access Token
        await getIt<SharedPreferencesHelper>().removeAccesToken(
          withPhone: true,
        );

        /// Reload
        await getIt<SharedPreferencesHelper>().prefInstance.reload();

        // save token to localStorage
        await getIt<SharedPreferencesHelper>().setAccessToken(
          accessToken: r.accessToken,
          refreshToken: r.refreshToken,
          expiredAt: r.expiredAt,
        );

        /// Emit success only after the token is persisted - listeners
        /// (e.g. navigation to MainPage) react to this synchronously and
        /// immediately fire API calls that read the token from storage.
        emit(
          state.copyWith(
            status: Status.success,
            authStatus: AuthStatus.authenticated,
            dataToken: r,
          ),
        );
      },
    );
  }
}
