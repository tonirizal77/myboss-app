import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/account/account_ft.dart';

export 'data/datas.dart';
export 'domain/domains.dart';
export 'presenter/presenters.dart';

/// Manage Features
/// for [Injector] and [Provider]
class AccountFt {
  const AccountFt();

  /// Setup Injector
  static Future<void> injectors() async {
    /// 1. Setup Bloc
    ///
    getIt.registerLazySingleton(() => ProfileBloc());
    getIt.registerLazySingleton(() => AccountBloc());

    /// 2. Setup Cubit

    /// 3. Setup Repository
    ///
    getIt.registerLazySingleton<ProfileRepo>(
      () => ProfileRepoImpl(remoteData: getIt()),
    );
    getIt.registerLazySingleton<AccountRepo>(
      () => AccountRepoImpl(remoteData: getIt()),
    );

    /// 4. Setup Datasource
    ///
    getIt.registerLazySingleton<ProfileRemote>(() => ProfileRemoteImpl());
    getIt.registerLazySingleton<AccountRemote>(() => AccountRemoteImpl());

    /// 5. Setup Usecase
    /// - Profile
    getIt.registerLazySingleton(() => GetAvatarsUc(getIt()));
    getIt.registerLazySingleton(() => GetProfileUc(getIt()));
    getIt.registerLazySingleton(() => UpdateProfileUc(getIt()));
    getIt.registerLazySingleton(() => GenerateCodeUc(getIt()));

    /// - Account
    getIt.registerLazySingleton(() => GetAboutUsUc(getIt()));
    getIt.registerLazySingleton(() => GetFaqUc(getIt()));
    getIt.registerLazySingleton(() => GetTncUc(getIt()));
    getIt.registerLazySingleton(() => GetVouchersUc(getIt()));

    /// 6. Setup Control / Flow
    ///  - 1. [xxx]Flow (mode static) -> UsecaseFunc

    /// 7. Setup Provider
    ///
    BlocProviderInjectors.add([
      BlocProvider<ProfileBloc>(create: (_) => getIt<ProfileBloc>()),
      BlocProvider<AccountBloc>(create: (_) => getIt<AccountBloc>()),
    ]);
  }
}
