part of 'configs.dart';

final class Endpoints {
  /// === AUTHENTICATION === ///
  ///
  /// Authorization : {{user_refresh_token}}
  static const String clientAuth = "/client/login";
  static const String refreshToken = "/token/refresh";

  /// === ACCOUNT CUSTOMER === ///
  ///
  /// Authorization : {{bearer}}
  ///
  /// 1. Sign Up
  static const String signUp = "/account/otp/sign-up";

  /// 2. Sign Up Send Code
  /// Type : 1. sms, 2. whatsapp, 3. misscall
  static const String signUpSendCode = "/account/otp/sign-up/send";

  /// 3. Sign In
  static const String signIn = "/account/otp/sign-in";

  /// 4. Sign In Send Code
  static const String signInSendCode = "/account/otp/sign-in/send";

  /// 5. Sign Out
  /// Authorization : {{user_bearer}}
  static const String signOut = "/account/do/sign-out";

  /// 6. Delete Account
  /// Authorization : {{user_bearer}}
  /// TODO(backend): confirm real path/method with backend team - this
  /// endpoint does not exist on the backend yet (needed for App Store
  /// Guideline 5.1.1(v) account deletion requirement).
  static const String deleteAccount = "/account/do/delete-account";

  /// === STORE === ///
  ///
  /// Authorization : {{bearer}}
  /// Link Type: - Cek Dokumen [PRD, PGR, FEA, ..dll]
  /// Params: (with_footer : 1, html_format : 1)
  ///
  /// 1. Store
  static const String storeData = "/store/hayo";
  static const String storeListData = "/store/hayo/list";

  /// 2. Others
  static const String aboutUs = "/about-us";
  static const String faq = '/faq';
  static const String showSpecificPage = '/page/sad/{pageID}';
  static const String termsAndPolicy = '/terms-and-policy';

  /// === PROFILE === ///
  ///
  /// Authorization : {{user_bearer}}
  ///
  /// A. Profile Info
  /// Params: ?cart_v2=1
  static const String profileInfo = "/profile/hayo/info";

  /// -  Avatars
  static const String avatarList = "/customer/hayo/avatar/list";

  /// - Genereate Code Customer
  static const String generateCode = "/customer/hayo/generate-code";

  /// -  Voucher
  static const String voucherList = "/profile/discount-vouchers/hayo/list";

  /// B. UPDATE PHONE / EMAIL
  ///
  /// 1. Get OTP | Update Phone  and Email (Old)
  /// Params: { "phone": "+6289636916356" }
  static const String verifyOldGetOtp = "/customer/hayo/update/otp/send-old";

  /// 2. Verify OTP | Update Phone [Old Phone]
  /// Params: { "phone": "+6289636916356", "otp_code": "9999" }
  static const String verifyOldSendOtp = "/customer/hayo/update/otp/verify-old";

  /// 3. Verify OTP | Update Phone [Old Phone]
  /// Params: { "phone": "+6289636916356", "key": "LHQNSXBOKW" }
  static const String verifyNewGetOtpPhone =
      "/customer/hayo/update/otp/send-new";

  /// 3. Verify OTP | Update Email (new email)
  /// Params: { "email": "+6289636916356", "key": "LHQNSXBOKW" }
  static const String verifyNewGetOtpEmail =
      "/customer/hayo/update/otp/send-new";

  /// 4. Confirm OTP | Update Phone [New Phone]
  /// Params: { "phone": "+6289636916356", "otp_code": "9999" }
  static const String verifyNewSendOtp = "/customer/hayo/update/otp";

  /// C. UPDATE PROFIL
  ///
  /// 1. Update Profile
  /// - Nama and Avatar
  /// Params: { "avatar_id": 1, "name": "Olsera Indonesia" }
  static const String updateProfile = "/customer/hayo/update";
  // "/profile/update";

  /// === MENU CATALOG === ///
  ///
  /// Authorization : {{bearer}}
  /// Label TAG : (1-New Release, 2-Sale, 3-Featured, 4-Populer, 5-Perorder, 6-Disount Persent)
  /// Params : [Search, Sort, page, per_page] : Cek Dokumen
  ///
  /// 1. Get Menu Yogurt List
  static const String menuYogurtList = "/catalog/hayo/yogurt/lists";

  /// 2. Get Menu Yogurt Show
  static const String menuYogurtShow = "/catalog/hayo/yogurt/show/{id}";

  /// 3. Get Catalog List
  static const String catalogList = "/catalog/hayo/lists";

  /// 4. Get Catalog Show
  static const String catalogShow = "/catalog/hayo/show/{id}";

  /// === TOPING === ///
  ///
  /// Authorization : {{bearer}}
  /// Label TAG : (1-New Release, 2-Sale, 3-Featured, 4-Populer, 5-Perorder, 6-Disount Persent)
  /// Params : [Search, Sort, page, per_page] : Cek Dokumen
  ///
  /// 1. Menu Toping List
  static const String menuTopingList = "/catalog/topping-hayo/lists";

  /// 2. Menu Toping Show
  static const String menuTopingShow = "/catalog/topping-hayo/show/{id}";

  /// === STAMPS === ///
  ///
  /// Authorization : {{user_bearer}}
  ///
  /// 1. Stamps at Home
  static const String stamps = "/hayo/stamp";
  static const String stampsBreakFree = "/hayo/stamp-break-free/list";
  static const String stampsHistoryList = "/hayo/stamp-history/list";
  static const String stampsHistoryShow = "/hayo/stamp-history/show/{id}";
}
