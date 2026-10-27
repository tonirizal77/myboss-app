part of 'flows.dart';

class AuthFlowsListen {
  AuthFlowsListen._();

  /// === LISTENERS === ///
  ///
  /// 1. Check Auth
  static FutureOr<void> checkAuthListen(
    BuildContext context,
    AuthState state,
  ) async {
    PrintHelper.printError("__listener check auth: ${state}");

    if (state.status == Status.loading) {
      await getIt<LoadingHelper>().turnOnLoading();
    } else {
      getIt<LoadingHelper>().turnOffLoading();

      if (state.status == Status.failed) {
        await getIt<FlushbarHelper>().showErrorFlushbar(
          context: context,
          message: state.errorMessage,
        );
      } else {
        if (state.authStatus == AuthStatus.unauthenticated ||
            state.authStatus == AuthStatus.unknown) {
          /// Re-Get Client Token
          PrintHelper.printError("-- initial auth, handleGetTokenClient");
          await AuthFlows.getTokenClient(context);
        } else if (state.authStatus == AuthStatus.refreshToken) {
          await AuthFlows.refreshToken(context);
        } else if (state.authStatus == AuthStatus.authenticated) {
          PrintHelper.printError("-- lanjut check user login / Main Page");

          /// Check Status Login
          if (state.statusLogin == Status.success) {
            /// Sync UserBloc with the persisted login state - all UI
            /// (CardAccountMember, tablet header, etc.) reactively depends
            /// on UserBloc.statusLogin, which otherwise never gets synced
            /// on a normal app restart (AuthBloc only tracks the
            /// system/client token, not the user's own login state).
            ///
            /// Navigation to the Main Page is done once, by
            /// [UserFlowsListen.cekAuthUserListen] when that check finishes -
            /// navigating here too sent the app to the Main Page twice.
            await UserFlows.cekAutenticate(context);
          } else {
            /// No Welcome page: not signed in -> browse as guest.
            AuthFlows.goToGuestMain(context);
          }
        } else {
          // todo: Bloc App
          PrintHelper.printError("-- lanjut Block App");
        }
      }
    }
  }

  /// 2. GetClientToken Used in [SplashPage] to handle system token retrieval status changes.
  static FutureOr<void> getTokenClient(
    BuildContext context,
    AuthState state,
  ) async {
    PrintHelper.printData("__listener get client token status: ${state}");

    if (state.status == Status.loading) {
      await getIt<LoadingHelper>().turnOnLoading();
    } else {
      getIt<LoadingHelper>().turnOffLoading();

      if (state.status == Status.success) {
        /// No Welcome page: not signed in -> browse as guest.
        AuthFlows.goToGuestMain(context);
      }

      if (state.status == Status.failed) {
        if (context.mounted) {
          await getIt<FlushbarHelper>()
              .showToastNotif(
                context: context,
                message:
                    "Server Error!, ${state.errorMessage} - retry again every 15s times",
                bgColor: AppColors.warning,
                mainButton: Buttons(
                  height: 40,
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  child: Text("Abaikan"),
                  onTap: () {
                    AppSetting.recheckAuth(false);
                  },
                ),
              )
              .whenComplete(() async {
                if (AppSetting.isRecheckAuth.value) {
                  /// Retry after 15 seconds
                  await Future.delayed(const Duration(seconds: 15), () async {
                    if (context.mounted) {
                      PrintHelper.printData(
                        "__retry get client token: ${state}",
                      );
                      await AuthFlows.getTokenClient(context);
                    }
                  });
                }
              });
        }
      }
    }
  }

  /// 3. Used in [SplashPage] to handle
  static FutureOr<void> refreshToken(
    BuildContext context,
    AuthState state,
  ) async {
    if (state.status == Status.failed) {
      // await getIt<FlushbarHelper>()
      //     .showErrorFlushbar(
      //       context: context,
      //       message: "${state.errorMessage} - Refresh Token.",
      //     )
      //     .whenComplete(() async {
      PrintHelper.printError("-- user get refresh gegal!");

      await AuthFlows.getTokenClient(context);
      //     });
    }

    if (state.status == Status.success) {
      PrintHelper.printWhite("-- user get refresh token berhasil!");

      await AuthFlows.checkAuthClient(context);
    }
  }
}
