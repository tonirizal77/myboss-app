import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

export 'data/datas.dart';
export 'domain/domains.dart';
export 'presenter/presenters.dart';

/// Manage Features
/// for [Injector] and [Provider]
class HomeFt {
  const HomeFt();

  /// Setup Injector
  static Future<void> injectors() async {
    /// 1. Setup Bloc
    // getIt.registerLazySingleton(() => ???Bloc());

    /// 2. Setup Cubit
    getIt.registerLazySingleton(() => StampsCubit());
    getIt.registerLazySingleton(() => StampsDetailCubit());
    getIt.registerLazySingleton(() => StampsNotifCubit());

    /// 3. Setup Repository
    ///
    getIt.registerLazySingleton<StampsRepo>(
      () => StampsRepoImpl(remoteData: getIt()),
    );

    /// 4. Setup Datasource
    ///
    getIt.registerLazySingleton<StampsRemote>(() => StampsRemoteImpl());

    /// 5. Setup Usecase
    ///
    getIt.registerLazySingleton(() => GetStampsUc(getIt()));
    getIt.registerLazySingleton(() => GetStampsOptionUc(getIt()));
    getIt.registerLazySingleton(() => HistoryStampsUc(getIt()));
    getIt.registerLazySingleton(() => GetDetailStampsUc(getIt()));

    /// 6. Setup Control / Flow
    ///  - 1. [xxx]Flow (mode static) -> UsecaseFunc

    /// 7. Setup Provider
    ///
    BlocProviderInjectors.add([
      BlocProvider<StampsCubit>(create: (_) => getIt<StampsCubit>()),
      BlocProvider<StampsNotifCubit>(create: (_) => getIt<StampsNotifCubit>()),
      BlocProvider<StampsDetailCubit>(
        create: (_) => getIt<StampsDetailCubit>(),
      ),
    ]);
  }
}
