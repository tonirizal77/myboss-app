import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

export 'data/datas.dart';
export 'domain/domains.dart';
export 'presenter/presenters.dart';

/// Manage Features
/// for [Injector] and [Provider]
class AuthFt {
  const AuthFt();

  /// Setup Injector
  static Future<void> injectors() async {
    /// 1. Setup Bloc
    getIt.registerLazySingleton(() => AuthBloc());
    getIt.registerLazySingleton(() => UserBloc());

    /// 1.1 Bridge core's [SessionExpiredHandler] to this feature's UserBloc,
    /// so the generic dio_http layer never has to import UserBloc directly.
    getIt.registerLazySingleton<SessionExpiredHandler>(
      () => _UserBlocSessionExpiredHandler(),
    );

    /// 2. Setup Cubit

    /// 3. Setup Repository
    ///
    getIt.registerLazySingleton<AuthRepo>(
      () => AuthRepoImpl(remoteData: getIt()),
    );
    getIt.registerLazySingleton<UserRepo>(
      () => UserRepoImpl(remoteData: getIt()),
    );

    /// 4. Setup Datasource
    ///
    getIt.registerLazySingleton<AuthRemote>(() => AuthRemoteImpl());
    getIt.registerLazySingleton<UserRemote>(() => UserRemoteImpl());

    /// 5. Setup Usecase
    ///
    getIt.registerLazySingleton(() => GetClientTokenUc(getIt()));
    getIt.registerLazySingleton(() => GetRefreshTokenUc(getIt()));
    getIt.registerLazySingleton(() => UserLogoutUc(getIt()));
    getIt.registerLazySingleton(() => UserDeleteAccountUc(getIt()));

    /// 6. Setup Flow
    ///  - 1. [xxx]Flow (mode static) -> UsecaseFunc

    /// 7. Setup Provider
    ///
    BlocProviderInjectors.add([
      BlocProvider<AuthBloc>(create: (_) => getIt<AuthBloc>()),
      BlocProvider<UserBloc>(create: (_) => getIt<UserBloc>()),
    ]);

    /// 8. Setup Listener for Router
    /// - Tambahan
    BlocListenerInjectors.shared.setupListener = [
      /// Auth Bloc ///
      ///
      /// 0. Check Auth Client Listener
      BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) => current.event == CheckAuth,
        listener: AuthFlowsListen.checkAuthListen,
      ),

      /// 1. Get Client Token Listener
      BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) => current.event == GetClientToken,
        listener: AuthFlowsListen.getTokenClient,
      ),

      /// 2. Get Refresh Token Listener (user)
      BlocListener<AuthBloc, AuthState>(
        listenWhen: (previous, current) => current.event == RefreshToken,
        listener: AuthFlowsListen.refreshToken,
      ),

      /// User Bloc ///
      ///
      /// 1. Check Auth User Logined Listener (user)
      BlocListener<UserBloc, UserState>(
        listenWhen: (previous, current) => current.event == UserCheckAuth,
        listener: UserFlowsListen.cekAuthUserListen,
      ),

      /// 2. User Logout
      BlocListener<UserBloc, UserState>(
        listenWhen: (previous, current) => current.event == UserLogout,
        listener: UserFlowsListen.logoutListener,
      ),

      /// 3. User Delete Account
      BlocListener<UserBloc, UserState>(
        listenWhen: (previous, current) => current.event == UserDeleteAccount,
        listener: UserFlowsListen.deleteAccountListener,
      ),
    ];
  }
}

/// Concrete [SessionExpiredHandler] backed by [UserBloc], registered so the
/// core dio_http layer can trigger a forced logout without depending on
/// this feature directly.
class _UserBlocSessionExpiredHandler implements SessionExpiredHandler {
  @override
  void forceLogout({String? message}) {
    getIt<UserBloc>().add(UserEvent.userCheckAuth(forceLogout: true));
  }
}
