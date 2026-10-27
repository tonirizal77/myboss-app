import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

import '../features.dart';

export 'data/datas.dart';
export 'domain/domains.dart';
export 'presenter/presenters.dart';

/// Manage Features
/// for [Injector] and [Provider]
class StoresFt {
  const StoresFt();

  /// Setup Injector
  static Future<void> injectors() async {
    /// 1. Setup Bloc
    getIt.registerLazySingleton(() => StoreBranchesBloc());
    getIt.registerLazySingleton(() => StoreBloc());

    /// 2. Setup Cubit
    getIt.registerLazySingleton(() => StoreBranchCubit());

    /// 3. Setup Repository
    ///
    getIt.registerLazySingleton<StoresRepo>(
      () => StoresRepoImpl(remoteData: getIt()),
    );

    /// 4. Setup Datasource
    ///
    getIt.registerLazySingleton<StoresRemote>(() => StoresRemoteImpl());

    /// 5. Setup Usecase
    ///
    getIt.registerLazySingleton(() => GetStoreBranchesUc(getIt()));
    getIt.registerLazySingleton(() => GetStoreUc(getIt()));

    /// 6. Setup Control / Flow
    ///  - 1. [xxx]Flow (mode static) -> UsecaseFunc

    /// 7. Setup Provider
    ///
    BlocProviderInjectors.add([
      BlocProvider<StoreBranchesBloc>(
        create: (_) => getIt<StoreBranchesBloc>(),
      ),
      BlocProvider<StoreBloc>(create: (_) => getIt<StoreBloc>()),
      BlocProvider<StoreBranchCubit>(create: (_) => getIt<StoreBranchCubit>()),
      //
    ]);
  }
}
