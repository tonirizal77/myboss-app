part of 'configs.dart';

/// Config Server Singleton
///
class ConfigServer with SettingLanguage {
  ConfigServer._internal();

  static final ConfigServer shared = ConfigServer._internal();
  factory ConfigServer() => shared;

  /// === 1. BASE URL === ///
  ///
  /// Base URL
  ///
  /// Sengaja dikosongkan, supaya cek `Flavor` dulu.
  static String? _baseURL;

  /// Base URL getter
  static String get baseURL =>
      _baseURL ??
      (Env.flavor == Flavor.staging
          ? Env.serverStagingApi
          : Env.serverProductionApi);

  /// Base URL setter
  static set setBaseUrl(String url) {
    _baseURL = url;
    resetDioBaseUrl();
  }

  /// Dio Base URL Setter
  ///
  /// Updates the existing Dio instance in place - it must NOT be replaced
  /// with a new `Dio()`, or every interceptor registered in
  /// [DioInterceptor.setupDioInterceptors] (logging, retry) is silently
  /// dropped for the rest of the app session.
  static void resetDioBaseUrl() {
    PrintHelper.printError(
      "__url combine [resetDioBaseUrl]: ${combinedBaseUrl}",
    );

    PrintHelper.printWarning(
      "__url combine [cek context]: ${ConfigServer.locale}",
    );

    DioHttp3.shared.request
      ..options.baseUrl = combinedBaseUrl
      ..transformer = BackgroundTransformer();
  }

  /// === 2. LOCALE === ///
  ///
  /// Base Local
  static String _locale =
      getIt<SharedPreferencesHelper>().getLangApp() ??
      Intl.shortLocale(Intl.getCurrentLocale());

  /// Locale getter
  static String get locale => _locale;

  /// Locale setter
  static set setLocale(String newLocale) => _locale = newLocale;

  /// ==== SWITCH ACCESS SERVER ===
  ///
  /// Client ID
  /// Domain
  /// Mobile Acess
  /// -----------------------------
  /// Default: 1
  static Map aksesServer = AccessServer.getAksesServer;

  /// 1. DOMAIN
  /// Defautl: Staging
  ///
  static int clientId = aksesServer['id'];

  /// 2. DOMAIN
  /// Defautl: Staging
  static String domain = aksesServer['domain'];

  /// 3. MOBILE ACCESS
  /// Defautl: Staging
  static String mobileAccess = aksesServer['mobileAccess'];

  /// For Authenticate Access Server [Body]
  static Map<String, dynamic> get secretCliendID => {
    'client_id': clientId,
    'mobile_access_token': mobileAccess,
  };

  /// === COMBINED BASE URL === ///
  ///
  static String get combinedBaseUrl => "$baseURL/$locale/$domain";
}
