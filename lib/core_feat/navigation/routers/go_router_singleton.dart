part of 'routers.dart';

class GoRouterSingleton {
  GoRouterSingleton._internal();
  static final GoRouterSingleton shared = GoRouterSingleton._internal();
  factory GoRouterSingleton() => shared;

  /// Routers
  GoRouter get routers => _routers;

  /// Go Router
  final GoRouter _routers = GoRouter(
    navigatorKey: NavigatorKey.rootNavigatorKey,
    routes: <RouteBase>[
      ShellRoute(
        navigatorKey: NavigatorKey.mainRootShellNavigatorKey,
        builder: (context, state, child) {
          return GoRouterListener(child: ResponsiveRouters(child: child));
        },
        routes: ListRouteNavigation.listRoutes,
      ),
    ],

    /// Extra codec for complex data types.
    // extraCodec: const RouteCodec(),

    /// Redirect function.
    redirect: GoRouterRedirect.redirect,

    /// Initial location.
    initialLocation: '/',

    /// Debug log diagnostics.
    debugLogDiagnostics: true,

    /// Router neglect.
    routerNeglect: true, // disable for browser button history (back and next)
  );

  /// Get current location
  String getCurrentLocation() {
    /// Navigator Key Context
    final navKeyContext = NavigatorKey.mainRootShellNavigatorKey.currentContext;

    /// Get current location
    if (navKeyContext != null) {
      final currentRouter = GoRouter.maybeOf(navKeyContext) ?? routers;

      final RouteMatch lastMatch =
          currentRouter.routerDelegate.currentConfiguration.last;

      final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
          ? lastMatch.matches
          : currentRouter.routerDelegate.currentConfiguration;

      return matchList.uri.toString();
    } else {
      return routers.routerDelegate.currentConfiguration.uri.toString();
    }
  }

  /// Navigate back to main root page
  ///
  /// !! CAUTION : USE THIS FUNCTION CAREFULLY, IT'S RECURSIVE.
  void popToRoot({required BuildContext context}) {
    while (context.canPop()) {
      context.pop();
    }
  }

  /// Pop until a specific location is reached.
  ///
  /// This will keep popping the stack as long as [context.canPop()] is true
  /// and the current location does not match [targetLocation].
  void popUntil({
    required BuildContext context,
    required String targetLocation,
  }) {
    while (context.canPop() && getCurrentLocation() != "/$targetLocation") {
      context.pop();
    }
  }

  /// Navigate back from No Internet Page
  void popFromNoInternet({required BuildContext context}) {
    bool _canPop = shared.getCurrentLocation().contains(RouteNames.noInternet);

    PrintHelper.printError("__pop no internet: ${shared.getCurrentLocation()}");

    while (context.canPop() && _canPop) {
      context.pop();
    }
  }
}
