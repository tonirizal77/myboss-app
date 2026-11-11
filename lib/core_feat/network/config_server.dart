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

  /// Follow the app language: requests go to `{baseURL}/{lang}/{domain}`.
  /// Called by the root widget whenever the locale changes (e.g. from
  /// `SwitchLocaleBar`, which only saves the language and switches the UI).
  /// Returns `true` when the API locale changed.
  static bool syncLocale(String langCode) {
    if (langCode.isEmpty || langCode == _locale) return false;

    _locale = langCode;
    resetDioBaseUrl();
    return true;
  }

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

  /// [endpoint] on another store [storeDomain] (a branch `url_id`), as a full
  /// URL `{baseURL}/{locale}/{storeDomain}{endpoint}`. The shared Dio base URL
  /// is left alone, so every other request keeps the default [domain].
  ///
  /// Empty [storeDomain] or the default one -> [endpoint] unchanged.
  static String urlFor(String endpoint, {String? storeDomain}) {
    if (storeDomain == null || storeDomain.isEmpty) return endpoint;
    if (storeDomain == domain) return endpoint;

    return "$baseURL/$locale/$storeDomain$endpoint";
  }

  /// `url_id` of the branch selected in the header; empty = default
  /// [domain]. Kept in sync by `StoreBranchCubit`.
  static String branchDomain = '';

  /// [endpoint] on the selected branch. The member's `/profile/...` data
  /// (info, points, orders, vouchers, delete account) belongs to a branch.
  static String branchUrl(String endpoint) =>
      urlFor(endpoint, storeDomain: branchDomain);
}
