import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/promo/promo_ft.dart';

export 'data/datas.dart';
export 'domain/domains.dart';
export 'presenter/presenters.dart';

/// Manage Features
/// for [Injector] and [Provider]
class PromoFt {
  const PromoFt();

  /// Setup Injector
  static Future<void> injectors() async {
    /// 2. Setup Cubit
    getIt.registerLazySingleton(() => PromoCubit());

    /// 3. Setup Repository
    getIt.registerLazySingleton<PromoRepo>(
      () => PromoRepoImpl(source: getIt()),
    );

    /// 4. Setup Datasource
    getIt.registerLazySingleton<PromoSource>(() => const PromoStatic());

    /// 5. Setup Usecase
    getIt.registerLazySingleton(() => GetPromoUc(getIt()));

    /// 7. Setup Provider
    BlocProviderInjectors.add([
      BlocProvider<PromoCubit>(create: (_) => getIt<PromoCubit>()),
    ]);
  }
}
