part of 'flows.dart';

class UserFlows {
  UserFlows._();

  /// === HANDLERS === ///

  /// 1. Goto Login Page
  static void goToLoginPage(BuildContext context) {
    PrintHelper.printData("__flow goto login page...");

    /// 1. Update Menu Drawer for User not login
    context.read<ResponsiveCubit>().swithMenuDrawer(false);

    /// 2. Main Page First
    MainPageFlow.goToMainPage(context, isFirst: true);
  }

  /// - Register to Login Page
  static void gotoBackLogin(BuildContext context) {
    PrintHelper.printData("__flow goto login page...");
    context.goNamed(RouteNames.login);
  }

  /// - Process to Register
  static void goToRegisterPage(BuildContext context) {
    PrintHelper.printData("__flow goto register page...");
    context.pushNamed(RouteNames.register);
  }

  /// - Success Login / Register
  /// - Update State UserBloc
  static Future<void> successVerify({
    required String phone,
    required DataMap result,
  }) async {
    getIt<UserBloc>().add(
      UserEvent.userSuccessVerify(phone: phone, result: result),
    );
  }

  /// - Handle Get Access User Token
  static Future<void> cekAutenticate(
    BuildContext context, {
    bool forceLogout = false,
  }) async {
    context.read<UserBloc>().add(
      UserEvent.userCheckAuth(forceLogout: forceLogout),
    );
  }

  /// - After Success Login / Register OTP Confirm
  /// - Min. Get Data Profile
  /// - and others, get from each pages
  /// - Redirect to Main Page
  static Future<void> goToMainPage(BuildContext context) async {
    PrintHelper.printData("__flow goto main page user has login...");

    /// 1. Update Menu Drawer for User has login
    context.read<ResponsiveCubit>().swithMenuDrawer(true);

    /// 2 - Get Data Profile
    await AccountFlows.getProfile(context);

    /// 3. Main Page
    /// - Store data (Contact Us / Follow Us) is fetched by MainPage itself,
    ///   regardless of login state - see MainPage.initState.
    MainPageFlow.goToMainPage(context);
  }

  /// - Logout User
  static void logoutUser(BuildContext context) {
    context.read<UserBloc>().add(UserEvent.userLogout());

    /// - Update Menu Drawer for User has logout
    context.read<ResponsiveCubit>().swithMenuDrawer(false);
  }

  /// - Delete Account
  static void deleteAccount(BuildContext context) {
    context.read<UserBloc>().add(UserEvent.userDeleteAccount());

    /// - Update Menu Drawer for User has logout
    context.read<ResponsiveCubit>().swithMenuDrawer(false);
  }

  /// - Check status login
  static bool isLoggedIn(BuildContext context) =>
      context.read<UserBloc>().state.statusLogin == Status.success;
}
