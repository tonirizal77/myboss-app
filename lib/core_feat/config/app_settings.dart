part of 'configs.dart';

abstract class AppSetting {
  /// MARK: Control of Mode Development (Change HERE)
  static DevMode get devMode => DevMode.development;

  /// MARK: Control of Data Source (mock / real API)
  ///
  /// Set with `--dart-define=DATA_SOURCE=mock|api` (default `api`); see
  /// [ServerAccess] for the live/release lock and per-endpoint overrides.
  static DataSourceMode get dataSource => ServerAccess.mode;

  /// MARK: Control of Delete Account Flow (Change HERE)
  ///
  /// See [DeleteAccountMode] for what each value does. Use [DeleteAccountMode.direct]
  /// for real builds unless this app operates in a highly-regulated
  /// industry (Apple rejects [DeleteAccountMode.emailConfirmation] under
  /// App Store Guideline 5.1.1(v) for most apps). Switch to
  /// [DeleteAccountMode.pending] to review the grace-period/pending-status
  /// UI without actually deleting a test account - it goes through the
  /// exact same confirmation sheet + OTP/reason flow as [DeleteAccountMode.direct],
  /// it just never calls the real delete-account endpoint.
  static DeleteAccountMode get deleteAccountMode => DeleteAccountMode.direct;

  /// MARK: Control of Delete Account Confirmation Flow (Change HERE)
  ///
  /// - `true`: perilaku default - [AccountFlows.goToDeleteAccount] tetap
  ///   mewajibkan reason + OTP verification
  ///   ([AccountFlows.goToDeleteAccountVerifyPage] -> [DeleteAccountVerifyPage])
  ///   sebelum [AccountFlows.submitDeleteAccountRequest] terpanggil.
  ///   `reason_id` juga baru tersimpan ke server lewat langkah OTP-verify
  ///   itu ([Endpoints.deleteAccountVerifyOtp]).
  /// - `false`: skip seluruh langkah reason + OTP - begitu user menekan
  ///   tombol konfirmasi di sheet, [AccountFlows.goToDeleteAccount] langsung
  ///   menutup sheet dan memanggil [AccountFlows.submitDeleteAccountRequest].
  ///   `reason_id` TIDAK terkirim ke server karena endpoint delete real
  ///   ([Endpoints.deleteAccountReal]) dipanggil tanpa body sama sekali.
  static bool get needConfirmOTP => true;

  static bool get isDevelopment => devMode == DevMode.development;
  static bool get isRelease => devMode == DevMode.release;

  /// MARK: Control of Mode Flavor
  static bool get isFlavor =>
      (SyncUI.isWeb || SyncUI.isWindow || SyncUI.isMacOs) ? false : true;

  /// IS Firebase Cloud Message Notification Flag
  ///
  /// If this flag is `true`, then enable notification features.
  static bool get isFcmService => SyncUI.isMacOs ? false : true;

  /// MOVED TO AppFeatures
  /// Is Blur BottomNavbar Expert
  static bool get isBlurBottomNav => false;

  static bool get isWatchBloc => SyncUI.isDebugMode ? true : false;

  /// is Mode App [Light or Dark]
  static bool get isModeApp => SyncUI.isDebugMode ? true : false;

  /// is Style App [4 Style]
  static bool get isStyleApp => SyncUI.isDebugMode ? true : false;

  /// Setting User-Agent
  /// For WebView and Search
  /// - User-Agent for WebView
  /// - User-Agent for Search location
  static String get userAgent {
    final _userAgent = Env.flavor == Flavor.staging
        ? Env.userAgentStg
        : Env.userAgentProd;

    return _userAgent;
  }

  /// Skip Send OTP Login at Login Flow
  // static bool get isRecheckAuth => true;
  static ValueNotifier<bool> isRecheckAuth = ValueNotifier<bool>(true);
  static void recheckAuth(bool value) {
    isRecheckAuth.value = value;
  }

  /// Skip Send OTP Login at Login Flow
  static bool get isTesting => kDebugMode;

  /// Url for Share Wa Link
  static String get urlShareWa => Env.serverProductionApi;

  /// Skip Send OTP Login at Login Flow
  static bool get isSkipOTP => true;

  /// Setup Edge to Edge
  static bool get isSetupEdge => true;

  /// Getter Menu Drawer
  static List<ItemNavBar> get menuApp => AppMenu.menuApp;

  static Future<void> initStyleApp(BuildContext context) async {
    PrintHelper.printWarning("__initialize style App");

    final _spHelper = await getIt<SharedPreferencesHelper>();
    final _themeDefault = StyleApp.theme4;

    /// Set Style App
    if (AppSetting.isStyleApp && !Responsive.isMobile(context)) {
      /// Default theme4
      StyleApp styleApp = _themeDefault;

      /// Setup Style App
      final _styleApp = _spHelper.loadStyleApp() ?? styleApp.toString();

      if (_styleApp == 'StyleApp.theme1') {
        styleApp = StyleApp.theme1;
      } else if (_styleApp == 'StyleApp.theme2') {
        styleApp = StyleApp.theme2;
      } else if (_styleApp == 'StyleApp.theme3') {
        styleApp = StyleApp.theme3;
      } else {
        styleApp = StyleApp.theme4;
      }

      /// Update Value shared
      RmdStyleApp.shared.getStyleApp.value = styleApp;

      /// Set Style App
      RmdStyleApp.changeStyle(styleApp);
    } else {
      /// Setting Default Style
      // RmdStyleApp.changeStyle(_themeDefault);
    }
  }

  /// is Show [Alice] Inspector
  static ValueNotifier<bool> alice = ValueNotifier<bool>(true);

  /// Mask phone/email (e.g. "+628xxxxxx0887") wherever it's displayed.
  /// Persisted to SharedPreferences - see [initMaskContact].
  static ValueNotifier<bool> isMaskContact = ValueNotifier<bool>(false);

  static void maskContact(bool value) {
    isMaskContact.value = value;

    getIt<SharedPreferencesHelper>().saveMaskContact(value);
  }

  /// Load the persisted mask-contact setting. Call once during app boot
  /// (see [SplashPage]) so [isMaskContact] reflects the saved value.
  static void initMaskContact() {
    final _value = getIt<SharedPreferencesHelper>().loadMaskContact();
    PrintHelper.printData("__init mask contact: $_value");

    isMaskContact.value = _value;
  }
}
