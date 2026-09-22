// ignore_for_file: unused_import

import 'dart:async';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myboss_app/core_feat/core_feat.dart'
    show
        BlocProviderInjectors,
        getIt,
        // ConnectivityInternetBloc,
        DioErrorMessages,
        CoreMessages,
        LocaleKeys;

import 'presenter/presenters.dart';

export 'data/datas.dart';
export 'domain/domains.dart';
export 'presenter/presenters.dart';

/// Manage Features
/// for [Injector] and [Provider]
class GlobalFt {
  const GlobalFt();

  /// Setup Injector
  static Future<void> injectors() async {
    /// 0. Localized error messages for the core dio_http layer.
    getIt.registerLazySingleton<DioErrorMessages>(
      () => const _LocalizedDioErrorMessages(),
    );

    /// 0b. Localized messages for other generic mobile_app_core widgets.
    getIt.registerLazySingleton<CoreMessages>(
      () => const _LocalizedCoreMessages(),
    );

    /// 1. Setup Bloc
    // getIt.registerLazySingleton(() => ConnectivityInternetBloc());

    /// 2. Setup Cubit
    getIt.registerLazySingleton(() => BottomNavCubit());

    /// 3. Setup Repository
    ///
    // getIt.registerLazySingleton<OutletsRepo>(
    // () => OutletsRepoImpl(remoteData: getIt()));

    /// 4. Setup Datasource
    ///
    // getIt.registerLazySingleton<OutletsRemote>(() => OutletsRemoteImpl());

    /// 5. Setup Usecase
    ///
    // getIt.registerLazySingleton(() => GetAllOutletsNearest(getIt()));

    /// 6. Setup Control / Flow
    ///  - 1. [xxx]Flow (mode static) -> UsecaseFunc

    /// 7. Setup Provider
    ///
    BlocProviderInjectors.add([
      BlocProvider<BottomNavCubit>(create: (_) => BottomNavCubit()),
    ]);
  }
}

/// Localized [DioErrorMessages], overriding the generic English defaults
/// the core dio_http layer falls back to when nothing is registered.
class _LocalizedDioErrorMessages implements DioErrorMessages {
  const _LocalizedDioErrorMessages();

  @override
  String get connectionError => LocaleKeys.dio_msg_periksa_koneksi_anda.tr();

  @override
  String get serverError => LocaleKeys.dio_msg_terjadi_gangguan.tr();

  @override
  String get noDataError => LocaleKeys.dio_msg_gagal_memuat_data.tr();

  @override
  String get defaultError => LocaleKeys.dio_msg_eem_02.tr();

  @override
  String get genericError => LocaleKeys.dio_msg_eem_01.tr();

  @override
  String get unknownError => LocaleKeys.dio_msg_eem_03.tr();
}

/// Localized [CoreMessages], overriding the generic English defaults other
/// mobile_app_core widgets (dialogs, empty states, connectivity banner) fall back
/// to when nothing is registered.
class _LocalizedCoreMessages implements CoreMessages {
  const _LocalizedCoreMessages();

  @override
  String get buttonCancel => LocaleKeys.button_batal.tr();

  @override
  String get buttonApply => LocaleKeys.button_terapkan.tr();

  @override
  String get connectedLabel => LocaleKeys.label_connected.tr();

  @override
  String get invalidPhoneLabel => LocaleKeys.label_invalid_phone.tr();

  @override
  String get noDataLabel => LocaleKeys.label_no_data.tr();

  @override
  String get serverErrorMessage => LocaleKeys.dio_msg_server.tr();

  @override
  String get retryLabel => LocaleKeys.dio_msg_coba_lagi.tr();
}
