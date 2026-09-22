import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/menu/menu_ft.dart';

export 'data/datas.dart';
export 'domain/domains.dart';
export 'presenter/presenters.dart';

/// Manage Features
/// for [Injector] and [Provider]
class MenuFt {
  const MenuFt();

  /// Setup Injector
  static Future<void> injectors() async {
    /// 1. Setup Bloc
    getIt.registerLazySingleton(() => MenuBloc());

    /// 2. Setup Cubit
    // getIt.registerLazySingleton(() => ???Cubit());

    /// 3. Setup Repository
    ///
    getIt.registerLazySingleton<MenuYogurtRepo>(
      () => MenuYogurtRepoImpl(remoteData: getIt()),
    );
    getIt.registerLazySingleton<MenuTopingRepo>(
      () => MenuTopingRepoImpl(remoteData: getIt()),
    );

    /// 4. Setup Datasource
    ///
    getIt.registerLazySingleton<MenuYogurtRemote>(() => MenuYogurtRemoteImpl());
    getIt.registerLazySingleton<MenuTopingRemote>(() => MenuTopingRemoteImpl());

    /// 5. Setup Usecase
    ///
    getIt.registerLazySingleton(() => ListMenuYogurtUc(getIt()));
    getIt.registerLazySingleton(() => ListMenuTopingUc(getIt()));

    /// 6. Setup Control / Flow
    ///  - 1. [xxx]Flow (mode static) -> UsecaseFunc

    /// 7. Setup Provider
    ///
    BlocProviderInjectors.add([
      BlocProvider<MenuBloc>(create: (_) => getIt<MenuBloc>()),
    ]);
  }
}
