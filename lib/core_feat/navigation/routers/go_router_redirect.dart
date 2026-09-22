part of 'routers.dart';

/// Redirect Function.
abstract class GoRouterRedirect {
  static FutureOr<String?> redirect(
    BuildContext context,
    GoRouterState state,
  ) async {
    /// Current Location.
    final _location = state.uri.toString();

    // final _authState = context.read<AuthBloc>().state;
    final _authUser = context.read<UserBloc>().state;

    PrintHelper.printError("_redirect location cek: $_location");
    // PrintHelper.inspectx(_authState);
    // PrintHelper.inspectx(_authUser);

    /// First Started App
    if (_authUser.event == UserCheckAuth &&
        _authUser.statusCheckAuth == Status.success) {
      ///
      // PrintHelper.inspectx(_authUser);

      // if (_authUser.statusLogin == Status.success) {
      //   return _location;
      // }
    }

    /// Default flow.
    return null;
  }
}
