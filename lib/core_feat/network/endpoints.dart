part of 'configs.dart';

/// API endpoints, ordered like the **MyBoss** Postman collection:
/// Product › Store › Account Customer › Client Token, then the endpoints that
/// are not (yet) in the collection.
///
/// Each constant is documented as `METHOD <Postman request name>`.
final class Endpoints {
  /// ============================================================ ///
  /// MyBoss › Product
  /// Authorization : {{bearer}}
  /// Params : [search, sort, page, per_page] : Cek Dokumen
  /// ============================================================ ///

  /// === Product › Catalog Group === ///
  ///
  /// GET catalog group List
  static const String catalogGroupList = "/catalog/group/lists";

  /// === Product › Catalog === ///
  ///
  /// GET catalog List
  static const String catalogList = "/catalog/lists";

  /// GET catalog Show - not in Postman yet
  static const String catalogShow = "/catalog/show/{id}";

  /// === Product › Catalog Brand === ///
  ///
  /// GET catalog brand List
  static const String catalogBrandList = "/catalog/brand/lists";

  /// ============================================================ ///
  /// MyBoss › Store
  /// Authorization : {{bearer}}
  /// ============================================================ ///

  /// GET Store
  /// Params: (with_footer : 1, html_format : 1)
  static const String storeData = "/store/data";

  /// GET Store Branch
  /// Params: (lat: '-7.4705', lon: '110.2178') - sorted by distance
  static const String storeBranches = "/store/branches";

  /// ============================================================ ///
  /// MyBoss › Account Customer › Auth
  /// Authorization : {{bearer}}
  /// ============================================================ ///

  /// === Auth › Forgot Password === ///
  ///
  /// POST Send Verification
  /// POST Verify Token
  /// POST Update Password
  // TODO(api): not used by the app (sign-in is OTP only) - add the paths
  // here if a password flow is ever needed.

  /// === Auth › Sign Up === ///
  ///
  /// POST Sign up
  static const String signUp = "/account/otp/sign-up";

  /// POST Sign Up Send Code
  /// Type : 1. sms, 2. whatsapp, 3. misscall
  static const String signUpSendCode = "/account/otp/sign-up/send";

  /// === Auth › Sign In === ///
  ///
  /// POST Sign-In
  static const String signIn = "/account/otp/sign-in";

  /// POST Sign In Send Code - not in Postman, still used by `verify_flows.dart`
  static const String signInSendCode = "/account/otp/sign-in/send";

  /// POST Logout
  /// Authorization : {{user_bearer}}
  static const String signOut = "/account/do/sign-out";

  /// ============================================================ ///
  /// MyBoss › Account Customer › Profile
  /// Authorization : {{user_bearer}}
  /// ============================================================ ///

  /// === Profile › UpdatePhone === ///
  ///
  /// POST Send Verification ( Old Phone )
  /// Params: { "phone": "+628xxxxxxxxxx" }
  static const String verifyOldGetOtp = "/customer/update/otp/send-old";

  /// POST Verify Token ( Old Phone )
  /// Params: { "phone": "+628xxxxxxxxxx", "otp_code": "9999" }
  static const String verifyOldSendOtp = "/customer/update/otp/verify-old";

  /// POST Send Verification ( New Phone )
  /// Params: { "phone": "+628xxxxxxxxxx", "key": "LHQNSXBOKW" }
  static const String verifyNewGetOtpPhone = "/customer/update/otp/send-new";

  /// POST Verify Token ( New Phone ) - also used for New Email
  /// Params: { "phone": "+628xxxxxxxxxx", "otp_code": "9999" }
  static const String verifyNewSendOtp = "/customer/update/otp";

  /// === Profile › Update Email === ///
  ///
  /// POST Send Verification ( Old Email )
  /// POST Verify Token ( Old Email )
  // TODO(api): add paths from Postman; the app currently reuses the phone
  // endpoints above for the old email step.

  /// POST Send Verification ( New Email )
  /// Params: { "email": "user@example.com", "key": "LHQNSXBOKW" }
  static const String verifyNewGetOtpEmail = "/customer/update/otp/send-new";

  /// POST Verify Token ( New Email ) -> [verifyNewSendOtp]

  /// === Profile === ///
  ///
  /// POST Generate Code
  static const String generateCode = "/customer/generate-code";

  /// GET Get Avatar list
  static const String avatarList = "/customer/avatar/list";

  /// PUT Update Profile
  /// Params: { "avatar_id": 1, "name": "Olsera Indonesia" }
  static const String updateProfile = "/customer/update";

  /// GET Get Data Profile
  /// Params: ?cart_v2=1
  static const String profileInfo = "/profile/info";

  /// ============================================================ ///
  /// MyBoss › Client Token
  /// Authorization : {{user_refresh_token}}
  /// ============================================================ ///

  /// POST Client Auth
  static const String clientAuth = "/client/login";

  /// POST Refresh Token
  static const String refreshToken = "/token/refresh";

  /// ============================================================ ///
  /// Not in the MyBoss Postman collection (yet)
  /// Still used by the app - confirm with backend before removing.
  /// ============================================================ ///

  /// === Delete Account === ///
  /// Authorization : {{user_bearer}}
  ///
  /// DELETE Hapus Akun - eksekusi penghapusan yang sebenarnya, langsung (tanpa
  /// grace period). Dipanggil tepat setelah verifikasi OTP + reason sukses
  /// ([deleteAccountVerifyOtp]) - lihat [AccountFlows.submitDeleteAccountRequest].
  /// Method: DELETE (terkonfirmasi lewat Postman - kalau pakai POST malah
  /// 406 "Page Not Found", route-nya tidak ada)
  static const String deleteAccountReal = "/profile/delete-account";

  /// POST Hapus Akun - Kirim OTP
  static const String deleteAccountSendOtp = "/customer/delete/send-otp";

  /// POST Hapus Akun - Verifikasi OTP + reason
  /// Params : { "otp_code": "...", "reason_id": ..., "reason_description": "..." }
  static const String deleteAccountVerifyOtp = "/customer/delete/request";

  /// POST Hapus Akun - Membatalkan request penghapusan yang masih pending.
  /// Dipanggil dari aksi "Cancel request" di halaman status delete-account,
  /// selagi akun masih di dalam jendela retention/grace period-nya.
  static const String deleteAccountCancel = "/customer/delete/cancel";

  /// GET Daftar reason untuk penghapusan akun
  static const String deleteReason = "/customer/delete/reasons";

  /// GET Status penghapusan akun
  static const String statusDeleteAccount = "/customer/delete/status";

  /// === Voucher === ///
  /// Authorization : {{user_bearer}}
  static const String voucherList = "/profile/discount-vouchers/list";

  /// === Pages === ///
  /// Authorization : {{bearer}}
  static const String aboutUs = "/about-us";
  static const String faq = '/faq';
  static const String showSpecificPage = '/page/sad/{pageID}';
  static const String termsAndPolicy = '/terms-and-policy';
}
