part of 'flows.dart';

/// What happens after the app language changed.
class LocaleFlow {
  LocaleFlow._();

  /// Server texts come in the language of the request (`/{locale}/...`), so
  /// content already on screen is fetched again: voucher titles, discount
  /// labels and terms (`tnc`) of Promo and of the member's vouchers. Runs
  /// after [ConfigServer] follows the new locale (main.dart).
  static Future<void> reloadServerTexts() async {
    await Future.wait([
      if (getIt.isRegistered<PromoCubit>()) getIt<PromoCubit>().reloadLoaded(),
      if (getIt.isRegistered<MemberVoucherCubit>())
        getIt<MemberVoucherCubit>().reloadLoaded(),
    ]);
  }
}
