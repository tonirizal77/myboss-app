part of 'route_navigation.dart';

final class RouteGlobal {
  RouteGlobal._();

  static final List<RouteBase> routes = [
    /// Initial screen.
    GoRoute(
      path: '/',
      name: RouteNames.splash,
      builder: (context, state) => const SplashPage(),
    ),

    /// Welcome screen.
    GoRoute(
      path: '/${RouteNames.welcome}',
      name: RouteNames.welcome,
      builder: (context, state) => const WelcomePage(),
    ),

    GoRoute(
      path: '/${RouteNames.login}',
      name: RouteNames.login,
      builder: (context, state) => const LoginPage(),
    ),

    GoRoute(
      path: '/${RouteNames.register}',
      name: RouteNames.register,
      builder: (context, state) {
        return const RegisterPage();
      },
    ),

    GoRoute(
      path: '/${RouteNames.verificationsPage}',
      name: RouteNames.verificationsPage,
      builder: (context, state) {
        return const VerificationsPage();
      },
    ),

    GoRoute(
      path: '/${RouteNames.confirmationsPage}',
      name: RouteNames.confirmationsPage,
      builder: (context, state) {
        return const ConfirmationsPage();
      },
    ),

    GoRoute(
      path: '/${RouteNames.mainPage}',
      name: RouteNames.mainPage,
      builder: (context, state) => const MainPage(),
    ),

    GoRoute(
      path: '/${RouteNames.mainPageFirst}',
      name: RouteNames.mainPageFirst,
      builder: (context, state) => const MainPageFirst(),
    ),

    /// No Internet Connection
    GoRoute(
      path: '/${RouteNames.noInternet}',
      name: RouteNames.noInternet,
      builder: (context, state) => const NoInternet(),
    ),
  ];
}
