part of 'flows.dart';

class UserFlowsListen {
  UserFlowsListen._();

  /// === LISTENERS === ///
  ///
  /// - Cek Auth User Login
  static FutureOr<void> cekAuthUserListen(
    BuildContext context,
    UserState state,
  ) async {
    PrintHelper.printError("__listener access token user: ${state}");

    if (state.statusCheckAuth == Status.initial) {
      /// Get Client Token
      await AuthFlows.getTokenClient(context);
    } else {
      /// Check Status Login
      if (state.statusLogin == Status.initial) {
        /// Not signed in -> guest Main Page (MyBoss has no Welcome page)
        AuthFlows.goToGuestMain(context);
      } else if (state.statusLogin == Status.failed) {
        /// Do Refresh Token
        await AuthFlows.refreshToken(context);
      } else {
        /// Goto Main Page
        await UserFlows.goToMainPage(context);
      }
    }
  }

  /// - Logout Listener
  static FutureOr<void> logoutListener(
    BuildContext context,
    UserState state,
  ) async {
    PrintHelper.printError("__listen user status logout: ${state}");
    if (state.isLoading) {
      await getIt<LoadingHelper>().turnOnLoading();
    } else {
      getIt<LoadingHelper>().turnOffLoading();

      if (state.statusLogout == Status.success) {
        /// No Welcome page: not signed in -> browse as guest.
        AuthFlows.goToGuestMain(context);

        await getIt<FlushbarHelper>().showToastNotif(
          context: context,
          message: "Logout success!",
        );
      } else {
        await getIt<FlushbarHelper>().showErrorFlushbar(
          context: context,
          message: state.errorMessage,
        );
      }
    }
  }

  /// - Delete Account Listener
  static FutureOr<void> deleteAccountListener(
    BuildContext context,
    UserState state,
  ) async {
    PrintHelper.printError("__listen user status delete account: ${state}");
    if (state.isLoading) {
      await getIt<LoadingHelper>().turnOnLoading();
    } else {
      getIt<LoadingHelper>().turnOffLoading();

      if (state.statusDeleteAccount == Status.success) {
        /// No Welcome page: not signed in -> browse as guest.
        AuthFlows.goToGuestMain(context);

        await getIt<FlushbarHelper>().showToastNotif(
          context: context,
          message: LocaleKeys.akun_delete_account_success.tr(),
        );
      } else {
        await getIt<FlushbarHelper>().showErrorFlushbar(
          context: context,
          message: state.errorMessage,
        );
      }
    }
  }
}
