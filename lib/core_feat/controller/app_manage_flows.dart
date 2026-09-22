// ignore_for_file: unused_local_variable

part of 'controllers.dart';

/// 0. GoRouter Redirect
///   - Initialize Auth dan User
///   - GoRouter Listener
///   1. Listener Check Authenticate
///     - Autenticated at splah page, AuthInitial at GoRouter Redirect
///   2. Listener Check User Login
///     - UserInitial at splah page
/// 1. Splash Page
/// 2. Check Authenticate
/// 3. Check Status User (SignedIn / SignedOut)
///
abstract class AppManageFlow {
  /// routers
  static GoRouter get getRouters => GoRouterSingleton.shared.routers;

  /// Is Check Internet
  static bool get isCheckInternet => true;

  /// Is Authenticated Client
  static bool get isAuthenticated => true;

  /// 1. Step saat di Splash Page
  /// Initilizing State User and Authenticate
  ///
  /// - Cek Status User
  ///
  static Future<void> redirectToAnotherPage(BuildContext context) async {
    /// Wait 3 seconds, then show the splash screen - 1
    await Future.delayed(const Duration(seconds: 3));

    context.goNamed(RouteNames.login);
  }

  /// Navigation of Popmenu at Header for UI Tablet Mode
  ///
  static void drodpDownMenu(BuildContext context, MenuUser menu) {
    /// 0. Edit Profile
    if (menu.index == 0) {
      AccountFlows.goToEditProfile(context);
    }

    /// 1. Logout
    if (menu.index == 1) {
      AccountFlows.goToLogout(context);
    }
  }

  /// Listener Connectivity
  static void checkConnection(
    BuildContext context,
    ConnectivityInternetState state,
  ) {
    final _location = GoRouterSingleton.shared.getCurrentLocation();

    /// Check AuthState && ConnectivityInternetState
    final authState = getIt<AuthBloc>().state;

    // getIt<GeneralHelper>().showSnackbar(
    //   context: context,
    //   message: state.message,
    //   isDismissible: false,
    //   backgroundColor: state.isConnected ? AppColors.primary : Colors.red,
    //   duration: const Duration(seconds: 4),
    // );

    if (state.isConnected && _location == '/${RouteNames.noInternet}') {
      /// If state is [unauthenticated] then recheck the authentication.
      if (authState.authStatus == AuthStatus.unauthenticated) {
        // getIt<UserBloc>().add(const UserResetStarted());
        // getIt<AuthBloc>().add(const CekAutenticate());
      }

      /// Pop to the latest page.
      GoRouterSingleton.shared.popFromNoInternet(context: context);
    }
    /// If state is NOT connected and Dialog Popup is Show
    else if (!state.isConnected && ModalRoute.of(context)?.isCurrent != true) {
      /// handle for special Dialog Popup must be close it,
      /// then push the page to No Internet
      context
        ..pop()
        ..pushNamed(RouteNames.noInternet);
    }
    /// If state is NOT connected, push the page to No Internet
    else if (!state.isConnected) {
      context.pushNamed(RouteNames.noInternet);
    }
  }
}
