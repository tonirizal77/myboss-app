part of 'flows.dart';

class AuthFlows {
  AuthFlows._();

  /// === HANDLERS === ///
  ///
  /// 1. First Get Client Token
  ///
  /// Used in [WelcomePage] to fetch a client token on app boot.
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

  /// 1. Process to Register
  static void goToWelcomePage(BuildContext context) {
    PrintHelper.printData("__flow goto welcome page...: ${context.locale}");
    context.goNamed(RouteNames.welcome);
  }

  /// - Refresh Token
  static Future<void> refreshToken(BuildContext context) async {
    context.read<AuthBloc>().add(const AuthEvent.refreshToken());
  }
}
