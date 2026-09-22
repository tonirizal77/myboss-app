import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

export 'data/datas.dart';
export 'domain/domains.dart';
export 'presenter/presenters.dart';

/// Manage Features
/// for [Injector] and [Provider]
class VerificationsFt {
  const VerificationsFt();

  /// Setup Injector
  static Future<void> injectors() async {
    /// 1. Setup Bloc
    getIt.registerLazySingleton(() => VerifyBloc());

    /// 2. Setup Cubit
    // getIt.registerLazySingleton(() => xxx());

    /// 3. Setup Repository
    ///
    getIt.registerLazySingleton<VerifyRepo>(
      () => VerifyRepoImpl(remoteData: getIt()),
    );

    /// 4. Setup Datasource
    ///
    getIt.registerLazySingleton<VerifyRemote>(() => VerifyRemoteImpl());

    /// 5. Setup Usecase
    ///
    getIt.registerLazySingleton(() => GetOtpCodeUc(getIt()));
    getIt.registerLazySingleton(() => SendOtpCodeUc(getIt()));

    /// 6. Setup Control / Flow
    ///  - 1. [xxx]Flow (mode static) -> UsecaseFunc

    /// 7. Setup Provider
    ///
    BlocProviderInjectors.add([
      BlocProvider<VerifyBloc>(create: (_) => getIt<VerifyBloc>()),
    ]);
  }
}
