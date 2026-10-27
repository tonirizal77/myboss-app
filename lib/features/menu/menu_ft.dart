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
    /// 1. Setup Cubit
    getIt.registerLazySingleton(() => ProductCubit());

    /// 2. Setup Repository
    ///
    getIt.registerLazySingleton<ProductRepo>(
      () => ProductRepoImpl(source: getIt()),
    );

    /// 3. Setup Datasource
    ///
    getIt.registerLazySingleton<ProductSource>(() => const ProductStatic());

    /// 4. Setup Usecase
    ///
    getIt.registerLazySingleton(() => GetProductCatalogUc(getIt()));

    /// 5. Setup Control / Flow
    ///  - 1. [xxx]Flow (mode static) -> UsecaseFunc

    /// 6. Setup Provider
    ///
    BlocProviderInjectors.add([
      BlocProvider<ProductCubit>(create: (_) => getIt<ProductCubit>()),
    ]);
  }
}
