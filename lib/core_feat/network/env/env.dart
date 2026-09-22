import 'package:envied/envied.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:package_info_plus/package_info_plus.dart';

part 'env.g.dart';

enum Flavor { prod, staging, live }

@Envied(path: '.env', obfuscate: true)
abstract class Env {
  /// Current flavor defaults to staging
  static Flavor _currentFlavor = Flavor.staging;

  /// Initialize environment and detect flavor
  static Future<void> init() async {
    try {
      /// Use package info to detect flavor
      final packageInfo = await PackageInfo.fromPlatform();

      PrintHelper.printError("__packageInfo: ${packageInfo}");

      /// If package name ends with .staging, set flavor to staging
      /// Otherwise, set flavor to production
      if (packageInfo.packageName.endsWith('.staging')) {
        _currentFlavor = Flavor.staging;
      } else if (packageInfo.packageName.endsWith('.prod')) {
        _currentFlavor = Flavor.prod;
      } else {
        _currentFlavor = Flavor.live;
      }
    } catch (_) {
      _currentFlavor = Flavor.staging;
    }
  }

  /// Flavor getter
  static Flavor get flavor => _currentFlavor;

  @EnviedField(varName: 'SERVER_STAGING_API')
  static String serverStagingApi = _Env.serverStagingApi;

  @EnviedField(varName: 'SERVER_PRODUCTION_API')
  static String serverProductionApi = _Env.serverProductionApi;

  @EnviedField(varName: 'SHARED_PREFERENCES_PASSWORD')
  static String sharedPreferencesPassword = _Env.sharedPreferencesPassword;

  /// For Staging
  ///
  @EnviedField(varName: 'CLIENT_SECRET_ID_STG')
  static int clientIDStag = _Env.clientIDStag;

  @EnviedField(varName: 'CLIENT_SECRET_CODE_STG')
  static String clientSecretStag = _Env.clientSecretStag;

  @EnviedField(varName: 'CLIENT_SECRET_DOMAIN_STG')
  static String clientSecretDomainStag = _Env.clientSecretDomainStag;

  /// For Prod
  ///
  @EnviedField(varName: 'CLIENT_SECRET_ID')
  static int clientIDProd = _Env.clientIDProd;

  @EnviedField(varName: 'CLIENT_SECRET_CODE')
  static String clientSecretProd = _Env.clientSecretProd;

  @EnviedField(varName: 'CLIENT_SECRET_DOMAIN')
  static String clientSecretDomainProd = _Env.clientSecretDomainProd;

  /// For Live
  ///
  @EnviedField(varName: 'CLIENT_SECRET_ID_LIVE')
  static int clientIDLive = _Env.clientIDLive;

  @EnviedField(varName: 'CLIENT_SECRET_CODE_LIVE')
  static String clientSecretLive = _Env.clientSecretLive;

  @EnviedField(varName: 'CLIENT_SECRET_DOMAIN_LIVE')
  static String clientSecretDomainLive = _Env.clientSecretDomainLive;

  /// User Agent
  @EnviedField(varName: 'USER_AGENT_STG')
  static String userAgentStg = _Env.userAgentStg;

  @EnviedField(varName: 'USER_AGENT_PROD')
  static String userAgentProd = _Env.userAgentProd;

  /// For Socket
  @EnviedField(varName: 'SOCKET_STAG_URL')
  static String urlStag = _Env.urlStag;
  @EnviedField(varName: 'SOCKET_STAG_AUTH')
  static String authStag = _Env.authStag;

  @EnviedField(varName: 'SOCKET_PROD_URL')
  static String urlProd = _Env.urlProd;
  @EnviedField(varName: 'SOCKET_PROD_AUTH')
  static String authProd = _Env.authProd;

  // @EnviedField(varName: 'WEB_BASE_URL_PRODUCTION')
  // static String webBaseUrlProduction = _Env.webBaseUrlProduction;

  // @EnviedField(varName: 'WEB_BASE_URL_STAGING')
  // static String webBaseUrlStaging = _Env.webBaseUrlStaging;

  // @EnviedField(varName: 'IOS_CLIENT_SECRET_PRODUCTION')
  // static String iosClientSecretProduction = _Env.iosClientSecretProduction;

  // @EnviedField(varName: 'IOS_CLIENT_SECRET_STAGING')
  // static String iosClientSecretStaging = _Env.iosClientSecretStaging;

  // @EnviedField(varName: 'ANDROID_CLIENT_SECRET_PRODUCTION')
  // static String androidClientSecretProduction =
  //     _Env.androidClientSecretProduction;

  // @EnviedField(varName: 'ANDROID_CLIENT_SECRET_STAGING')
  // static String androidClientSecretStaging = _Env.androidClientSecretStaging;

  // @EnviedField(varName: 'IOS_CLIENT_ID')
  // static String iosClientId = _Env.iosClientId;

  // @EnviedField(varName: 'ANDROID_CLIENT_ID')
  // static String androidClientId = _Env.androidClientId;

  // @EnviedField(varName: 'XENDIT_PRODUCTION_KEY')
  // static String xenditProductionKey = _Env.xenditProductionKey;

  // @EnviedField(varName: 'XENDIT_DEVELOPMENT_KEY')
  // static String xenditDevelopmentKey = _Env.xenditDevelopmentKey;
}
