import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/core_feat/navigation/routers/route_navigations/route_navigation.dart'
    show RouteGlobal;
import 'package:myboss_app/features/features.dart';

/// MyBoss has no Welcome page: after Splash a user who is not signed in
/// always lands on the guest Main Page - whatever the store's guest-mode /
/// sign-in-required settings say.
void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        Directory.systemTemp.createTempSync('guest_entry_test').path,
      ),
    );
  });

  setUp(() {
    getIt.registerSingleton<LoadingHelper>(LoadingHelper());

    // Server says: guest mode off, sign-in required.
    final store = StoreBloc();
    // ignore: invalid_use_of_protected_member, invalid_use_of_visible_for_testing_member
    store.emit(
      const StoreState(
        respon: Respons.success,
        store: StoreModel(
          signinRequired: 1,
          mobileSetting: MobileSetting(isGuestMode: false),
        ),
      ),
    );
    getIt.registerSingleton<StoreBloc>(store);
  });

  tearDown(() async {
    await getIt<StoreBloc>().close();
    await getIt.reset();
  });

  /// Splash-like root route + the main page; returns the root's context.
  Future<BuildContext> pumpApp(
    WidgetTester tester,
    ResponsiveCubit responsive,
  ) async {
    late BuildContext rootContext;
    final router = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, _) {
            rootContext = context;
            return const Text('splash');
          },
        ),
        GoRoute(
          path: '/${RouteNames.mainPage}',
          name: RouteNames.mainPage,
          builder: (_, _) => const Text('main'),
        ),
      ],
    );

    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider.value(value: responsive),
          BlocProvider(create: (_) => BottomNavCubit()),
        ],
        child: MaterialApp.router(routerConfig: router),
      ),
    );

    return rootContext;
  }

  testWidgets('client token ready -> guest Main Page', (tester) async {
    final responsive = ResponsiveCubit();
    addTearDown(responsive.close);
    final context = await pumpApp(tester, responsive);

    await AuthFlowsListen.getTokenClient(
      context,
      const AuthState(status: Status.success),
    );
    await tester.pumpAndSettle();

    expect(find.text('main'), findsOneWidget);
    expect(responsive.state.hasLogin, isTrue);
  });

  testWidgets('authenticated client, no user login -> guest Main Page', (
    tester,
  ) async {
    final responsive = ResponsiveCubit();
    addTearDown(responsive.close);
    final context = await pumpApp(tester, responsive);

    await AuthFlowsListen.checkAuthListen(
      context,
      const AuthState(
        status: Status.success,
        authStatus: AuthStatus.authenticated,
      ),
    );
    await tester.pumpAndSettle();

    expect(find.text('main'), findsOneWidget);
  });

  test('Account reloads user data only when the user just signed in', () {
    const guest = UserState();
    const signedIn = UserState(statusLogin: Status.success);
    const failed = UserState(statusLogin: Status.failed);

    expect(UserFlows.justSignedIn(guest, signedIn), isTrue);
    expect(UserFlows.justSignedIn(failed, signedIn), isTrue);
    // Already signed in (e.g. other UserState changes) - no reload.
    expect(UserFlows.justSignedIn(signedIn, signedIn), isFalse);
    expect(UserFlows.justSignedIn(signedIn, guest), isFalse);
    expect(UserFlows.justSignedIn(guest, failed), isFalse);
  });

  test('no Welcome route is left', () {
    final paths = RouteGlobal.routes
        .whereType<GoRoute>()
        .map((r) => r.path)
        .toList();
    expect(paths, isNot(contains('/welcome')));
  });
}
