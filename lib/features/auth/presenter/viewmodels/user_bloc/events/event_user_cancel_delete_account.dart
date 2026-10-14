part of '../user_bloc.dart';

extension _UserCancelDeleteAccountHandler on UserBloc {
  void _userCancelDeleteAccount(
    UserCancelDeleteAccount event,
    Emitter<UserState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        statusCancelDeleteAccount: Status.loading,
        event: event.runtimeType,
      ),
    );

    final res = await getIt<UserCancelDeleteAccountUc>().call();

    await res.fold(
      (l) async {
        emit(
          state.copyWith(
            isLoading: false,
            errorMessage: l.error.message,
            statusCancelDeleteAccount: Status.failed,
            event: event.runtimeType,
          ),
        );
      },
      (r) async {
        await DeleteAccountLocalState.clearPending();

        emit(
          state.copyWith(
            isLoading: false,
            statusCancelDeleteAccount: Status.success,
            event: event.runtimeType,
          ),
        );
      },
    );
  }
}
