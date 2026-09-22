import 'package:flutter/foundation.dart' show kDebugMode, kProfileMode;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:marionette_flutter/marionette_flutter.dart';
import 'package:path_provider/path_provider.dart';

import 'core_feat/core_feat.dart';
import 'features/features.dart';

/// Top level global
/// only for ios and macos
bool _zeroOffsetPointerGuardInstalled = false;

void _installZeroOffsetPointerGuard() {
  if (_zeroOffsetPointerGuardInstalled) return;
  GestureBinding.instance.pointerRouter.addGlobalRoute(
    _absorbZeroOffsetPointerEvent,
  );
  _zeroOffsetPointerGuardInstalled = true;
}

void _absorbZeroOffsetPointerEvent(PointerEvent event) {
  if (event.position == Offset.zero) {
    GestureBinding.instance.cancelPointer(event.pointer);
  }
}

Future<void> main() async {
  // Initialize Marionette only in debug mode
  if (kDebugMode) {
    MarionetteBinding.ensureInitialized();
  } else {
    /// Ensure Initialized
    WidgetsFlutterBinding.ensureInitialized();
  }

  /// Setup Env
  await Env.init();

  /// Wire the generic dio_http layer's base URL, the encryption helper's
  /// password, and the socket helper's URL/auth to this app's own
  /// environment/flavor config - must run before InjectionsCore.setupAll()
  /// below, which triggers Dio's lazy client construction.
  DioHttp3.baseUrlProvider = () => ConfigServer.combinedBaseUrl;
  CryptoHelper.passwordProvider = () => Env.sharedPreferencesPassword;
  StreamSocket.urlProvider = () =>
      Env.flavor == Flavor.staging ? Env.urlStag : Env.urlProd;
  StreamSocket.authProvider = () =>
      Env.flavor == Flavor.staging ? Env.authStag : Env.authProd;

  /// Setup Easy Localization
  await EasyLocalization.ensureInitialized();

  /// Only enable error message from Easy Localization
  EasyLocalization.logger.enableLevels = [.error];

  /// for Zero Offset Pointer Event Guard
  /// Only for iOS and MacOS
  if (SyncUI.isIOS || SyncUI.isMacOs) _installZeroOffsetPointerGuard();

  /// Setup Hydrated Storage
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: AppPlatform.instance.isWeb
        ? HydratedStorageDirectory.web
        : HydratedStorageDirectory(
            (await getApplicationDocumentsDirectory()).path,
          ),
  );

  /// Register Font
  FontHelper.registerLicense();

  /// Setup Injections Core-1
  await InjectionsCore.setupAll();

  /// Setup Injections Features-2
  await InjectionFeatures.setupAll();

  // Set the global observer before running the app
  // if (AppSetting.isWatchBloc) Bloc.observer = SimpleBlocObserver();

  /// Run App
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('id')],
      path: 'assets/translations',
      fallbackLocale: const Locale('id'),
      useOnlyLangCode: true,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: BlocProviderInjectors.all,
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          PrintHelper.printState(
            "__theme app: ${state.themeMode} - lang: ${context.locale} --> ${ConfigServer.locale}",
          );

          return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1),
            child: MaterialApp.router(
              title: 'Flutter App Template',
              debugShowCheckedModeBanner: false,
              showPerformanceOverlay: kProfileMode ? true : false,
              theme: AppTheme.light,
              darkTheme: AppTheme.dark,
              themeMode: state.themeMode,
              routerConfig: GoRouterSingleton.shared.routers,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              locale: context.locale,
            ),
          );
        },
      ),
    );
  }
}

/// Custom [BlocObserver] which observes all bloc and cubit instances.
class SimpleBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    PrintHelper.printState('BlocObserver onError: $error');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    PrintHelper.printState(
      '>>> ${bloc.runtimeType} onChange ==== CURRENT:${change.currentState} \nNEXT:${change.nextState}',
    );
  }
}
