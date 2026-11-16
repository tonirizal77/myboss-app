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
  /// Params : [search, sort, page, per_page]
  /// ============================================================ ///

  /// === Product › Catalog Group === ///
  ///
  /// GET catalog product List group All
  static const String catalogGroupList = "/catalog/group/lists";

  /// === Product › Catalog Brand === ///
  ///
  /// GET catalog brand List
  static const String catalogBrandList = "/catalog/brand/lists";

  /// Get catalog all
  static const String catalogGroupProd = "/catalog/lists/group";

  /// === Product › Catalog === ///
  ///
  /// GET catalog List
  /// Params : [search, sort, page, per_page]
  static const String catalogList = "/catalog/lists";

  /// GET catalog Show
  static const String catalogShow = "/catalog/show/{id}";

  /// ============================================================ ///
  /// MyBoss › Promo, Point & Voucher
  /// Authorization : {{bearer}}
  /// ============================================================ ///
  ///
  /// GET Loyalty Point List
  static const String promoPointList = "/promotion/loyalty-points/list";

  /// GET Voucher Discount List
  static const String promoVoucherList = "/promotion/discount-vouchers/list";

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

  /// === Profile › Update Phone === ///
  /// Two steps on the same paths: verify the old phone (answers with
  /// `data.reset_token`), then verify the new phone with that token.
  /// `type` is always `whatsapp`; phones are sent as `+62…`.
  ///
  /// POST Send Verification
  /// Old phone : { "old_phone": "+628xxxxxxxxxx", "type": "whatsapp" }
  /// New phone : { "reset_token": "368ZY3DN6P", "new_phone": "+628xxxxxxxxxx", "type": "whatsapp" }
  static const String changePhoneSendOtp = "/profile/phone/send-verification";

  /// POST Verify Token
  /// Old phone : { "old_phone": "+628xxxxxxxxxx", "type": "whatsapp", "token": "9999" }
  /// New phone : { "new_phone": "+628xxxxxxxxxx", "type": "whatsapp", "token": "9999" }
  static const String changePhoneVerifyOtp =
      "/profile/phone/verify-verification";

  /// === Profile › Update Email === ///
  /// Same two-step flow as [changePhoneSendOtp] / [changePhoneVerifyOtp].
  ///
  /// POST Send Verification
  /// Old email : { "old_email": "oldEmail@example.com" }
  /// New email : { "reset_token": "368ZY3DN6P", "new_email": "newEmail@example.com" }
  static const String changeEmailSendOtp = "/profile/email/send-verification";

  /// POST Verify Token
  /// Old email : { "old_email": "oldEmail@example.com", "token": "9999" }
  /// New email : { "new_email": "newEmail@example.com", "token": "9999" }
  static const String changeEmailVerifyOtp =
      "/profile/email/verify-verification";

  /// === Profile === ///
  ///
  /// POST Generate Code
  static const String generateCode = "/customer/generate-code";

  /// GET Get Avatar list
  static const String avatarList = "/customer/avatar/list";

  /// PUT Update Profile
  /// Params: { "avatar_id": 1, "name": "Olsera Indonesia" }
  static const String updateProfile = "/profile/update";

  /// GET Get Data Profile
  /// Params: ?cart_v2=1
  static const String profileInfo = "/profile/info";

  /// == My Poin & Voucher == ///
  /// GET Loyalty points of the member (balance + history) - PRD-011.
  static const String profileLoyaltyPoints = "/profile/loyalty-points";

  /// GET Detail Loyalty points
  /// Params: sales_order_id
  static const String profileOrdersPoints =
      "/profile/orders/find/{sales_order_id}";

  /// GET Discount Voucher
  /// Params: is_used = true/false
  static const String profileDiscountVouchers = "/profile/discount-vouchers";

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

  /// === Pages === ///
  /// Authorization : {{bearer}}
  static const String aboutUs = "/about-us";
  static const String faq = '/faq';
  static const String showSpecificPage = '/page/sad/{pageID}';

  /// GET Terms & policy documents (terms of use, privacy policy, refund
  /// policy). Selected branch first ([ConfigServer.branchUrl]), then the
  /// main store domain.
  static const String termsAndPolicy = '/terms-and-policy';
}
