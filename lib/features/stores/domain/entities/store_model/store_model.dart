import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_model.freezed.dart';
part 'store_model.g.dart';

@freezed
abstract class StoreModel with _$StoreModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory StoreModel({
    String? address,
    int? allowCustomerViewStock,
    int? allowQtyDecimal,
    int? androidAppStatus,
    AppStatus? appStatus,
    int? autoCancelOrderHour,
    int? blockedCustomerRegistration,
    String? chatBbm,
    String? chatKakao,
    String? chatLine,
    String? chatSkype,
    String? chatWechat,
    String? chatWhatsapp,
    String? chatWidget,
    String? chatYm,
    int? checkoutWithoutRegister,
    int? cityId,
    String? cityName,
    Contact? contact,
    String? copyrightYear,
    String? countryId,
    String? countryName,
    String? createdYear,
    Currency? currency,
    String? currencyId,
    String? currencyName,
    int? decDigit,
    String? decPoint,
    String? defaultCurrencyId,
    int? disableCart,
    int? dropShipEnabled,
    String? email,
    String? expiryDate,
    String? extDomain,
    String? favicon,
    String? fbAppId,
    String? fbAppSecret,
    String? gAnalytics,
    List<dynamic>? header,
    int? id,
    int? inquiryMode,
    int? iosAppStatus,
    bool? isReseller,
    String? langCode,
    String? linkAndroidApp,
    String? linkBlog,
    String? linkFacebook,
    String? linkGoogleplus,
    String? linkInstagram,
    String? linkIosApp,
    String? linkPinterest,
    String? linkTumblr,
    String? linkTwitter,
    String? linkVimeo,
    String? linkYoutube,
    String? locationLat,
    String? locationLon,
    String? logo,
    int? logoHeight,
    int? logoWidth,
    String? metaDescription,
    String? metaKeywords,
    MobileSetting? mobileSetting,
    String? name,
    int? olsWhitelabel,
    int? onlyInStoreCity,
    int? parentStoreId,
    int? partnerId,
    String? phone1,
    String? phone2,
    String? phone3,
    String? planTypeId,
    String? postalCode,
    String? poweredBy,
    String? remark,
    Setting? setting,
    int? signinRequired,
    int? stateId,
    String? stateName,
    String? status,
    int? storeStatus,
    int? subdistrictId,
    String? thousandsSep,
    String? urlId,
  }) = _StoreModel;

  factory StoreModel.fromJson(Map<String, dynamic> json) =>
      _$StoreModelFromJson(json);
}

@freezed
abstract class AppStatus with _$AppStatus {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory AppStatus({
    String? storeStatus,
    String? androidAppStatus,
    String? iosAppStatus,
  }) = _AppStatus;

  factory AppStatus.fromJson(Map<String, dynamic> json) =>
      _$AppStatusFromJson(json);
}

@freezed
abstract class Contact with _$Contact {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Contact({
    LocationStore? location,
    Chat? chat,
    Links? links,
    String? email,
    List<String>? phone,
  }) = _Contact;

  factory Contact.fromJson(Map<String, dynamic> json) =>
      _$ContactFromJson(json);
}

@freezed
abstract class LocationStore with _$LocationStore {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory LocationStore({
    String? address,
    String? postalCode,
    int? cityId,
    String? cityName,
    String? countryId,
    String? countryName,
    int? stateId,
    String? stateName,
    int? subdistrictId,
    String? locationLat,
    String? locationLon,
  }) = _LocationStore;

  factory LocationStore.fromJson(Map<String, dynamic> json) =>
      _$LocationStoreFromJson(json);
}

@freezed
abstract class Chat with _$Chat {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Chat({
    String? chatBbm,
    String? chatKakao,
    String? chatLine,
    String? chatSkype,
    String? chatWhatsapp,
    String? chatWechat,
    String? chatWidget,
    List<dynamic>? chatYms,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);
}

@freezed
abstract class Links with _$Links {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Links({
    String? linkAndroidApp,
    String? linkWeChat,
    String? linkFacebook,
    String? linkGoogleplus,
    String? linkInstagram,
    String? linkIosApp,
    String? linkPinterest,
    String? linkTumbler,
    String? linkTwitter,
    String? linkVimeo,
    String? linkYoutube,
    String? linkBlog,
  }) = _Links;

  factory Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);
}

@freezed
abstract class Currency with _$Currency {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Currency({
    int? decDigit,
    String? decPoint,
    String? id,
    String? name,
    String? thousandsSep,
  }) = _Currency;

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}

@freezed
abstract class Setting with _$Setting {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory Setting({
    int? allowCustomerViewStock,
    int? allowQtyDecimal,
    int? autoCancelOrderHour,
    int? blockedCustomerRegistration,
    int? checkoutWithoutRegister,
    String? defaultCurrencyId,
    int? disableCart,
    int? dropShipEnabled,
    int? inquiryMode,
    String? langCode,
    String? mobileSplashScreenBackground,
    int? onlyInStoreCity,
    int? signinRequired,
    int? hasBranch,
  }) = _Setting;

  factory Setting.fromJson(Map<String, dynamic> json) =>
      _$SettingFromJson(json);
}

@freezed
abstract class MobileSetting with _$MobileSetting {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MobileSetting({
    @Default(false) bool isCrm,
    @Default(false) bool isShipper,
    @Default(false) bool isDisableQris,
    @Default(false) bool isSwitchVariant,
    @Default(false) bool isFavorite,
    @Default(false) bool isSelfPickup,
    @Default(false) bool isGuestMode,
    @Default(false) bool isHideShipping,
    @Default(false) bool isHideWhitelabel,
  }) = _MobileSetting;

  factory MobileSetting.fromJson(Map<String, dynamic> json) =>
      _$MobileSettingFromJson(json);
}
