part of '../user_bloc.dart';

extension _UserDeleteAccountHandler on UserBloc {
  void _userDeleteAccount(
    UserDeleteAccount event,
    Emitter<UserState> emit,
  ) async {
    emit(state.copyWith(isLoading: true, event: event.runtimeType));

    final res = await getIt<UserDeleteAccountUc>().call();

    await res.fold(
      (l) {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: l.error.message,
            statusDeleteAccount: Status.failed,
            event: event.runtimeType,
          ),
        );
      },
      (r) async {
        /// Account is gone - guarantee a clean local session, unlike
        /// logout which leaves this to the stale-token re-check cycle.
        await getIt<SharedPreferencesHelper>().removeAccesToken(
          withPhone: true,
        );

        /// Fresh guest client token right away (same as logout), so guest
        /// mode has a valid Authorization header after the account is gone.
        final _clientToken = await getIt<GetClientTokenUc>().call();

        await _clientToken.fold(
          (_) async {},
          (token) => getIt<SharedPreferencesHelper>().setAccessToken(
            accessToken: token.accessToken,
            refreshToken: token.refreshToken,
            expiredAt: token.expiredAt,
          ),
        );

        /// Drop persisted profile - avoid showing the deleted account's
        /// name/avatar once back in guest mode.
        getIt<ProfileBloc>().add(const ProfileEvent.reset());

        /// Drop persisted vouchers/stamps history - avoid showing the
        /// deleted account's data once back in guest mode.
        getIt<AccountBloc>().add(const AccountEvent.reset());
        await DeleteAccountLocalState.clearPending();

        emit(
          state.copyWith(
            isLoading: false,
            statusDeleteAccount: Status.success,
            event: event.runtimeType,
          ),
        );
      },
    );
  }
}
