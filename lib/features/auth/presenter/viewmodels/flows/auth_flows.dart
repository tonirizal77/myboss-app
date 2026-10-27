part of 'flows.dart';

class AuthFlows {
  AuthFlows._();

  /// === HANDLERS === ///
  ///
  /// 0. Fetch a client token on app boot.
  static Future<void> checkAuthClient(
    BuildContext context, {
    bool forceLogout = false,
  }) async {
    context.read<AuthBloc>().add(AuthEvent.checkAuth(forceLogout: forceLogout));
  }

  /// 1. Fetch a client token on app boot.
  static Future<void> getTokenClient(BuildContext context) async {
    context.read<AuthBloc>().add(const AuthEvent.clientToken());
  }

  /// 2. Guest Main Page - MyBoss has no Welcome page: after Splash a user
  /// who is not signed in browses Home/Menu/Store as a guest.
  static void goToGuestMain(BuildContext context) {
    PrintHelper.printData("__flow goto guest main page");
    context.read<ResponsiveCubit>().swithMenuDrawer(true);
    MainPageFlow.goToMainPage(context);
  }

  /// - Refresh Token
  static Future<void> refreshToken(BuildContext context) async {
    context.read<AuthBloc>().add(const AuthEvent.refreshToken());
  }
}
