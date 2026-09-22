// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreModel {

 String? get address; int? get allowCustomerViewStock; int? get allowQtyDecimal; int? get androidAppStatus; AppStatus? get appStatus; int? get autoCancelOrderHour; int? get blockedCustomerRegistration; String? get chatBbm; String? get chatKakao; String? get chatLine; String? get chatSkype; String? get chatWechat; String? get chatWhatsapp; String? get chatWidget; String? get chatYm; int? get checkoutWithoutRegister; int? get cityId; String? get cityName; Contact? get contact; String? get copyrightYear; String? get countryId; String? get countryName; String? get createdYear; Currency? get currency; String? get currencyId; String? get currencyName; int? get decDigit; String? get decPoint; String? get defaultCurrencyId; int? get disableCart; int? get dropShipEnabled; String? get email; String? get expiryDate; String? get extDomain; String? get favicon; String? get fbAppId; String? get fbAppSecret; String? get gAnalytics; List<dynamic>? get header; int? get id; int? get inquiryMode; int? get iosAppStatus; bool? get isReseller; String? get langCode; String? get linkAndroidApp; String? get linkBlog; String? get linkFacebook; String? get linkGoogleplus; String? get linkInstagram; String? get linkIosApp; String? get linkPinterest; String? get linkTumblr; String? get linkTwitter; String? get linkVimeo; String? get linkYoutube; String? get locationLat; String? get locationLon; String? get logo; int? get logoHeight; int? get logoWidth; String? get metaDescription; String? get metaKeywords; MobileSetting? get mobileSetting; String? get name; int? get olsWhitelabel; int? get onlyInStoreCity; int? get parentStoreId; int? get partnerId; String? get phone1; String? get phone2; String? get phone3; String? get planTypeId; String? get postalCode; String? get poweredBy; String? get remark; Setting? get setting; int? get signinRequired; int? get stateId; String? get stateName; String? get status; int? get storeStatus; int? get subdistrictId; String? get thousandsSep; String? get urlId;
/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreModelCopyWith<StoreModel> get copyWith => _$StoreModelCopyWithImpl<StoreModel>(this as StoreModel, _$identity);

  /// Serializes this StoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreModel&&(identical(other.address, address) || other.address == address)&&(identical(other.allowCustomerViewStock, allowCustomerViewStock) || other.allowCustomerViewStock == allowCustomerViewStock)&&(identical(other.allowQtyDecimal, allowQtyDecimal) || other.allowQtyDecimal == allowQtyDecimal)&&(identical(other.androidAppStatus, androidAppStatus) || other.androidAppStatus == androidAppStatus)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.autoCancelOrderHour, autoCancelOrderHour) || other.autoCancelOrderHour == autoCancelOrderHour)&&(identical(other.blockedCustomerRegistration, blockedCustomerRegistration) || other.blockedCustomerRegistration == blockedCustomerRegistration)&&(identical(other.chatBbm, chatBbm) || other.chatBbm == chatBbm)&&(identical(other.chatKakao, chatKakao) || other.chatKakao == chatKakao)&&(identical(other.chatLine, chatLine) || other.chatLine == chatLine)&&(identical(other.chatSkype, chatSkype) || other.chatSkype == chatSkype)&&(identical(other.chatWechat, chatWechat) || other.chatWechat == chatWechat)&&(identical(other.chatWhatsapp, chatWhatsapp) || other.chatWhatsapp == chatWhatsapp)&&(identical(other.chatWidget, chatWidget) || other.chatWidget == chatWidget)&&(identical(other.chatYm, chatYm) || other.chatYm == chatYm)&&(identical(other.checkoutWithoutRegister, checkoutWithoutRegister) || other.checkoutWithoutRegister == checkoutWithoutRegister)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.copyrightYear, copyrightYear) || other.copyrightYear == copyrightYear)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.createdYear, createdYear) || other.createdYear == createdYear)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.currencyName, currencyName) || other.currencyName == currencyName)&&(identical(other.decDigit, decDigit) || other.decDigit == decDigit)&&(identical(other.decPoint, decPoint) || other.decPoint == decPoint)&&(identical(other.defaultCurrencyId, defaultCurrencyId) || other.defaultCurrencyId == defaultCurrencyId)&&(identical(other.disableCart, disableCart) || other.disableCart == disableCart)&&(identical(other.dropShipEnabled, dropShipEnabled) || other.dropShipEnabled == dropShipEnabled)&&(identical(other.email, email) || other.email == email)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.extDomain, extDomain) || other.extDomain == extDomain)&&(identical(other.favicon, favicon) || other.favicon == favicon)&&(identical(other.fbAppId, fbAppId) || other.fbAppId == fbAppId)&&(identical(other.fbAppSecret, fbAppSecret) || other.fbAppSecret == fbAppSecret)&&(identical(other.gAnalytics, gAnalytics) || other.gAnalytics == gAnalytics)&&const DeepCollectionEquality().equals(other.header, header)&&(identical(other.id, id) || other.id == id)&&(identical(other.inquiryMode, inquiryMode) || other.inquiryMode == inquiryMode)&&(identical(other.iosAppStatus, iosAppStatus) || other.iosAppStatus == iosAppStatus)&&(identical(other.isReseller, isReseller) || other.isReseller == isReseller)&&(identical(other.langCode, langCode) || other.langCode == langCode)&&(identical(other.linkAndroidApp, linkAndroidApp) || other.linkAndroidApp == linkAndroidApp)&&(identical(other.linkBlog, linkBlog) || other.linkBlog == linkBlog)&&(identical(other.linkFacebook, linkFacebook) || other.linkFacebook == linkFacebook)&&(identical(other.linkGoogleplus, linkGoogleplus) || other.linkGoogleplus == linkGoogleplus)&&(identical(other.linkInstagram, linkInstagram) || other.linkInstagram == linkInstagram)&&(identical(other.linkIosApp, linkIosApp) || other.linkIosApp == linkIosApp)&&(identical(other.linkPinterest, linkPinterest) || other.linkPinterest == linkPinterest)&&(identical(other.linkTumblr, linkTumblr) || other.linkTumblr == linkTumblr)&&(identical(other.linkTwitter, linkTwitter) || other.linkTwitter == linkTwitter)&&(identical(other.linkVimeo, linkVimeo) || other.linkVimeo == linkVimeo)&&(identical(other.linkYoutube, linkYoutube) || other.linkYoutube == linkYoutube)&&(identical(other.locationLat, locationLat) || other.locationLat == locationLat)&&(identical(other.locationLon, locationLon) || other.locationLon == locationLon)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.logoHeight, logoHeight) || other.logoHeight == logoHeight)&&(identical(other.logoWidth, logoWidth) || other.logoWidth == logoWidth)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaKeywords, metaKeywords) || other.metaKeywords == metaKeywords)&&(identical(other.mobileSetting, mobileSetting) || other.mobileSetting == mobileSetting)&&(identical(other.name, name) || other.name == name)&&(identical(other.olsWhitelabel, olsWhitelabel) || other.olsWhitelabel == olsWhitelabel)&&(identical(other.onlyInStoreCity, onlyInStoreCity) || other.onlyInStoreCity == onlyInStoreCity)&&(identical(other.parentStoreId, parentStoreId) || other.parentStoreId == parentStoreId)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.phone1, phone1) || other.phone1 == phone1)&&(identical(other.phone2, phone2) || other.phone2 == phone2)&&(identical(other.phone3, phone3) || other.phone3 == phone3)&&(identical(other.planTypeId, planTypeId) || other.planTypeId == planTypeId)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.poweredBy, poweredBy) || other.poweredBy == poweredBy)&&(identical(other.remark, remark) || other.remark == remark)&&(identical(other.setting, setting) || other.setting == setting)&&(identical(other.signinRequired, signinRequired) || other.signinRequired == signinRequired)&&(identical(other.stateId, stateId) || other.stateId == stateId)&&(identical(other.stateName, stateName) || other.stateName == stateName)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeStatus, storeStatus) || other.storeStatus == storeStatus)&&(identical(other.subdistrictId, subdistrictId) || other.subdistrictId == subdistrictId)&&(identical(other.thousandsSep, thousandsSep) || other.thousandsSep == thousandsSep)&&(identical(other.urlId, urlId) || other.urlId == urlId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,address,allowCustomerViewStock,allowQtyDecimal,androidAppStatus,appStatus,autoCancelOrderHour,blockedCustomerRegistration,chatBbm,chatKakao,chatLine,chatSkype,chatWechat,chatWhatsapp,chatWidget,chatYm,checkoutWithoutRegister,cityId,cityName,contact,copyrightYear,countryId,countryName,createdYear,currency,currencyId,currencyName,decDigit,decPoint,defaultCurrencyId,disableCart,dropShipEnabled,email,expiryDate,extDomain,favicon,fbAppId,fbAppSecret,gAnalytics,const DeepCollectionEquality().hash(header),id,inquiryMode,iosAppStatus,isReseller,langCode,linkAndroidApp,linkBlog,linkFacebook,linkGoogleplus,linkInstagram,linkIosApp,linkPinterest,linkTumblr,linkTwitter,linkVimeo,linkYoutube,locationLat,locationLon,logo,logoHeight,logoWidth,metaDescription,metaKeywords,mobileSetting,name,olsWhitelabel,onlyInStoreCity,parentStoreId,partnerId,phone1,phone2,phone3,planTypeId,postalCode,poweredBy,remark,setting,signinRequired,stateId,stateName,status,storeStatus,subdistrictId,thousandsSep,urlId]);

@override
String toString() {
  return 'StoreModel(address: $address, allowCustomerViewStock: $allowCustomerViewStock, allowQtyDecimal: $allowQtyDecimal, androidAppStatus: $androidAppStatus, appStatus: $appStatus, autoCancelOrderHour: $autoCancelOrderHour, blockedCustomerRegistration: $blockedCustomerRegistration, chatBbm: $chatBbm, chatKakao: $chatKakao, chatLine: $chatLine, chatSkype: $chatSkype, chatWechat: $chatWechat, chatWhatsapp: $chatWhatsapp, chatWidget: $chatWidget, chatYm: $chatYm, checkoutWithoutRegister: $checkoutWithoutRegister, cityId: $cityId, cityName: $cityName, contact: $contact, copyrightYear: $copyrightYear, countryId: $countryId, countryName: $countryName, createdYear: $createdYear, currency: $currency, currencyId: $currencyId, currencyName: $currencyName, decDigit: $decDigit, decPoint: $decPoint, defaultCurrencyId: $defaultCurrencyId, disableCart: $disableCart, dropShipEnabled: $dropShipEnabled, email: $email, expiryDate: $expiryDate, extDomain: $extDomain, favicon: $favicon, fbAppId: $fbAppId, fbAppSecret: $fbAppSecret, gAnalytics: $gAnalytics, header: $header, id: $id, inquiryMode: $inquiryMode, iosAppStatus: $iosAppStatus, isReseller: $isReseller, langCode: $langCode, linkAndroidApp: $linkAndroidApp, linkBlog: $linkBlog, linkFacebook: $linkFacebook, linkGoogleplus: $linkGoogleplus, linkInstagram: $linkInstagram, linkIosApp: $linkIosApp, linkPinterest: $linkPinterest, linkTumblr: $linkTumblr, linkTwitter: $linkTwitter, linkVimeo: $linkVimeo, linkYoutube: $linkYoutube, locationLat: $locationLat, locationLon: $locationLon, logo: $logo, logoHeight: $logoHeight, logoWidth: $logoWidth, metaDescription: $metaDescription, metaKeywords: $metaKeywords, mobileSetting: $mobileSetting, name: $name, olsWhitelabel: $olsWhitelabel, onlyInStoreCity: $onlyInStoreCity, parentStoreId: $parentStoreId, partnerId: $partnerId, phone1: $phone1, phone2: $phone2, phone3: $phone3, planTypeId: $planTypeId, postalCode: $postalCode, poweredBy: $poweredBy, remark: $remark, setting: $setting, signinRequired: $signinRequired, stateId: $stateId, stateName: $stateName, status: $status, storeStatus: $storeStatus, subdistrictId: $subdistrictId, thousandsSep: $thousandsSep, urlId: $urlId)';
}


}

/// @nodoc
abstract mixin class $StoreModelCopyWith<$Res>  {
  factory $StoreModelCopyWith(StoreModel value, $Res Function(StoreModel) _then) = _$StoreModelCopyWithImpl;
@useResult
$Res call({
 String? address, int? allowCustomerViewStock, int? allowQtyDecimal, int? androidAppStatus, AppStatus? appStatus, int? autoCancelOrderHour, int? blockedCustomerRegistration, String? chatBbm, String? chatKakao, String? chatLine, String? chatSkype, String? chatWechat, String? chatWhatsapp, String? chatWidget, String? chatYm, int? checkoutWithoutRegister, int? cityId, String? cityName, Contact? contact, String? copyrightYear, String? countryId, String? countryName, String? createdYear, Currency? currency, String? currencyId, String? currencyName, int? decDigit, String? decPoint, String? defaultCurrencyId, int? disableCart, int? dropShipEnabled, String? email, String? expiryDate, String? extDomain, String? favicon, String? fbAppId, String? fbAppSecret, String? gAnalytics, List<dynamic>? header, int? id, int? inquiryMode, int? iosAppStatus, bool? isReseller, String? langCode, String? linkAndroidApp, String? linkBlog, String? linkFacebook, String? linkGoogleplus, String? linkInstagram, String? linkIosApp, String? linkPinterest, String? linkTumblr, String? linkTwitter, String? linkVimeo, String? linkYoutube, String? locationLat, String? locationLon, String? logo, int? logoHeight, int? logoWidth, String? metaDescription, String? metaKeywords, MobileSetting? mobileSetting, String? name, int? olsWhitelabel, int? onlyInStoreCity, int? parentStoreId, int? partnerId, String? phone1, String? phone2, String? phone3, String? planTypeId, String? postalCode, String? poweredBy, String? remark, Setting? setting, int? signinRequired, int? stateId, String? stateName, String? status, int? storeStatus, int? subdistrictId, String? thousandsSep, String? urlId
});


$AppStatusCopyWith<$Res>? get appStatus;$ContactCopyWith<$Res>? get contact;$CurrencyCopyWith<$Res>? get currency;$MobileSettingCopyWith<$Res>? get mobileSetting;$SettingCopyWith<$Res>? get setting;

}
/// @nodoc
class _$StoreModelCopyWithImpl<$Res>
    implements $StoreModelCopyWith<$Res> {
  _$StoreModelCopyWithImpl(this._self, this._then);

  final StoreModel _self;
  final $Res Function(StoreModel) _then;

/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? allowCustomerViewStock = freezed,Object? allowQtyDecimal = freezed,Object? androidAppStatus = freezed,Object? appStatus = freezed,Object? autoCancelOrderHour = freezed,Object? blockedCustomerRegistration = freezed,Object? chatBbm = freezed,Object? chatKakao = freezed,Object? chatLine = freezed,Object? chatSkype = freezed,Object? chatWechat = freezed,Object? chatWhatsapp = freezed,Object? chatWidget = freezed,Object? chatYm = freezed,Object? checkoutWithoutRegister = freezed,Object? cityId = freezed,Object? cityName = freezed,Object? contact = freezed,Object? copyrightYear = freezed,Object? countryId = freezed,Object? countryName = freezed,Object? createdYear = freezed,Object? currency = freezed,Object? currencyId = freezed,Object? currencyName = freezed,Object? decDigit = freezed,Object? decPoint = freezed,Object? defaultCurrencyId = freezed,Object? disableCart = freezed,Object? dropShipEnabled = freezed,Object? email = freezed,Object? expiryDate = freezed,Object? extDomain = freezed,Object? favicon = freezed,Object? fbAppId = freezed,Object? fbAppSecret = freezed,Object? gAnalytics = freezed,Object? header = freezed,Object? id = freezed,Object? inquiryMode = freezed,Object? iosAppStatus = freezed,Object? isReseller = freezed,Object? langCode = freezed,Object? linkAndroidApp = freezed,Object? linkBlog = freezed,Object? linkFacebook = freezed,Object? linkGoogleplus = freezed,Object? linkInstagram = freezed,Object? linkIosApp = freezed,Object? linkPinterest = freezed,Object? linkTumblr = freezed,Object? linkTwitter = freezed,Object? linkVimeo = freezed,Object? linkYoutube = freezed,Object? locationLat = freezed,Object? locationLon = freezed,Object? logo = freezed,Object? logoHeight = freezed,Object? logoWidth = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? mobileSetting = freezed,Object? name = freezed,Object? olsWhitelabel = freezed,Object? onlyInStoreCity = freezed,Object? parentStoreId = freezed,Object? partnerId = freezed,Object? phone1 = freezed,Object? phone2 = freezed,Object? phone3 = freezed,Object? planTypeId = freezed,Object? postalCode = freezed,Object? poweredBy = freezed,Object? remark = freezed,Object? setting = freezed,Object? signinRequired = freezed,Object? stateId = freezed,Object? stateName = freezed,Object? status = freezed,Object? storeStatus = freezed,Object? subdistrictId = freezed,Object? thousandsSep = freezed,Object? urlId = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,allowCustomerViewStock: freezed == allowCustomerViewStock ? _self.allowCustomerViewStock : allowCustomerViewStock // ignore: cast_nullable_to_non_nullable
as int?,allowQtyDecimal: freezed == allowQtyDecimal ? _self.allowQtyDecimal : allowQtyDecimal // ignore: cast_nullable_to_non_nullable
as int?,androidAppStatus: freezed == androidAppStatus ? _self.androidAppStatus : androidAppStatus // ignore: cast_nullable_to_non_nullable
as int?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as AppStatus?,autoCancelOrderHour: freezed == autoCancelOrderHour ? _self.autoCancelOrderHour : autoCancelOrderHour // ignore: cast_nullable_to_non_nullable
as int?,blockedCustomerRegistration: freezed == blockedCustomerRegistration ? _self.blockedCustomerRegistration : blockedCustomerRegistration // ignore: cast_nullable_to_non_nullable
as int?,chatBbm: freezed == chatBbm ? _self.chatBbm : chatBbm // ignore: cast_nullable_to_non_nullable
as String?,chatKakao: freezed == chatKakao ? _self.chatKakao : chatKakao // ignore: cast_nullable_to_non_nullable
as String?,chatLine: freezed == chatLine ? _self.chatLine : chatLine // ignore: cast_nullable_to_non_nullable
as String?,chatSkype: freezed == chatSkype ? _self.chatSkype : chatSkype // ignore: cast_nullable_to_non_nullable
as String?,chatWechat: freezed == chatWechat ? _self.chatWechat : chatWechat // ignore: cast_nullable_to_non_nullable
as String?,chatWhatsapp: freezed == chatWhatsapp ? _self.chatWhatsapp : chatWhatsapp // ignore: cast_nullable_to_non_nullable
as String?,chatWidget: freezed == chatWidget ? _self.chatWidget : chatWidget // ignore: cast_nullable_to_non_nullable
as String?,chatYm: freezed == chatYm ? _self.chatYm : chatYm // ignore: cast_nullable_to_non_nullable
as String?,checkoutWithoutRegister: freezed == checkoutWithoutRegister ? _self.checkoutWithoutRegister : checkoutWithoutRegister // ignore: cast_nullable_to_non_nullable
as int?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact?,copyrightYear: freezed == copyrightYear ? _self.copyrightYear : copyrightYear // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,createdYear: freezed == createdYear ? _self.createdYear : createdYear // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency?,currencyId: freezed == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as String?,currencyName: freezed == currencyName ? _self.currencyName : currencyName // ignore: cast_nullable_to_non_nullable
as String?,decDigit: freezed == decDigit ? _self.decDigit : decDigit // ignore: cast_nullable_to_non_nullable
as int?,decPoint: freezed == decPoint ? _self.decPoint : decPoint // ignore: cast_nullable_to_non_nullable
as String?,defaultCurrencyId: freezed == defaultCurrencyId ? _self.defaultCurrencyId : defaultCurrencyId // ignore: cast_nullable_to_non_nullable
as String?,disableCart: freezed == disableCart ? _self.disableCart : disableCart // ignore: cast_nullable_to_non_nullable
as int?,dropShipEnabled: freezed == dropShipEnabled ? _self.dropShipEnabled : dropShipEnabled // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,extDomain: freezed == extDomain ? _self.extDomain : extDomain // ignore: cast_nullable_to_non_nullable
as String?,favicon: freezed == favicon ? _self.favicon : favicon // ignore: cast_nullable_to_non_nullable
as String?,fbAppId: freezed == fbAppId ? _self.fbAppId : fbAppId // ignore: cast_nullable_to_non_nullable
as String?,fbAppSecret: freezed == fbAppSecret ? _self.fbAppSecret : fbAppSecret // ignore: cast_nullable_to_non_nullable
as String?,gAnalytics: freezed == gAnalytics ? _self.gAnalytics : gAnalytics // ignore: cast_nullable_to_non_nullable
as String?,header: freezed == header ? _self.header : header // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,inquiryMode: freezed == inquiryMode ? _self.inquiryMode : inquiryMode // ignore: cast_nullable_to_non_nullable
as int?,iosAppStatus: freezed == iosAppStatus ? _self.iosAppStatus : iosAppStatus // ignore: cast_nullable_to_non_nullable
as int?,isReseller: freezed == isReseller ? _self.isReseller : isReseller // ignore: cast_nullable_to_non_nullable
as bool?,langCode: freezed == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String?,linkAndroidApp: freezed == linkAndroidApp ? _self.linkAndroidApp : linkAndroidApp // ignore: cast_nullable_to_non_nullable
as String?,linkBlog: freezed == linkBlog ? _self.linkBlog : linkBlog // ignore: cast_nullable_to_non_nullable
as String?,linkFacebook: freezed == linkFacebook ? _self.linkFacebook : linkFacebook // ignore: cast_nullable_to_non_nullable
as String?,linkGoogleplus: freezed == linkGoogleplus ? _self.linkGoogleplus : linkGoogleplus // ignore: cast_nullable_to_non_nullable
as String?,linkInstagram: freezed == linkInstagram ? _self.linkInstagram : linkInstagram // ignore: cast_nullable_to_non_nullable
as String?,linkIosApp: freezed == linkIosApp ? _self.linkIosApp : linkIosApp // ignore: cast_nullable_to_non_nullable
as String?,linkPinterest: freezed == linkPinterest ? _self.linkPinterest : linkPinterest // ignore: cast_nullable_to_non_nullable
as String?,linkTumblr: freezed == linkTumblr ? _self.linkTumblr : linkTumblr // ignore: cast_nullable_to_non_nullable
as String?,linkTwitter: freezed == linkTwitter ? _self.linkTwitter : linkTwitter // ignore: cast_nullable_to_non_nullable
as String?,linkVimeo: freezed == linkVimeo ? _self.linkVimeo : linkVimeo // ignore: cast_nullable_to_non_nullable
as String?,linkYoutube: freezed == linkYoutube ? _self.linkYoutube : linkYoutube // ignore: cast_nullable_to_non_nullable
as String?,locationLat: freezed == locationLat ? _self.locationLat : locationLat // ignore: cast_nullable_to_non_nullable
as String?,locationLon: freezed == locationLon ? _self.locationLon : locationLon // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,logoHeight: freezed == logoHeight ? _self.logoHeight : logoHeight // ignore: cast_nullable_to_non_nullable
as int?,logoWidth: freezed == logoWidth ? _self.logoWidth : logoWidth // ignore: cast_nullable_to_non_nullable
as int?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,mobileSetting: freezed == mobileSetting ? _self.mobileSetting : mobileSetting // ignore: cast_nullable_to_non_nullable
as MobileSetting?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,olsWhitelabel: freezed == olsWhitelabel ? _self.olsWhitelabel : olsWhitelabel // ignore: cast_nullable_to_non_nullable
as int?,onlyInStoreCity: freezed == onlyInStoreCity ? _self.onlyInStoreCity : onlyInStoreCity // ignore: cast_nullable_to_non_nullable
as int?,parentStoreId: freezed == parentStoreId ? _self.parentStoreId : parentStoreId // ignore: cast_nullable_to_non_nullable
as int?,partnerId: freezed == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as int?,phone1: freezed == phone1 ? _self.phone1 : phone1 // ignore: cast_nullable_to_non_nullable
as String?,phone2: freezed == phone2 ? _self.phone2 : phone2 // ignore: cast_nullable_to_non_nullable
as String?,phone3: freezed == phone3 ? _self.phone3 : phone3 // ignore: cast_nullable_to_non_nullable
as String?,planTypeId: freezed == planTypeId ? _self.planTypeId : planTypeId // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,poweredBy: freezed == poweredBy ? _self.poweredBy : poweredBy // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,setting: freezed == setting ? _self.setting : setting // ignore: cast_nullable_to_non_nullable
as Setting?,signinRequired: freezed == signinRequired ? _self.signinRequired : signinRequired // ignore: cast_nullable_to_non_nullable
as int?,stateId: freezed == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,storeStatus: freezed == storeStatus ? _self.storeStatus : storeStatus // ignore: cast_nullable_to_non_nullable
as int?,subdistrictId: freezed == subdistrictId ? _self.subdistrictId : subdistrictId // ignore: cast_nullable_to_non_nullable
as int?,thousandsSep: freezed == thousandsSep ? _self.thousandsSep : thousandsSep // ignore: cast_nullable_to_non_nullable
as String?,urlId: freezed == urlId ? _self.urlId : urlId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppStatusCopyWith<$Res>? get appStatus {
    if (_self.appStatus == null) {
    return null;
  }

  return $AppStatusCopyWith<$Res>(_self.appStatus!, (value) {
    return _then(_self.copyWith(appStatus: value));
  });
}/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res>? get contact {
    if (_self.contact == null) {
    return null;
  }

  return $ContactCopyWith<$Res>(_self.contact!, (value) {
    return _then(_self.copyWith(contact: value));
  });
}/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
    return null;
  }

  return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
    return _then(_self.copyWith(currency: value));
  });
}/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MobileSettingCopyWith<$Res>? get mobileSetting {
    if (_self.mobileSetting == null) {
    return null;
  }

  return $MobileSettingCopyWith<$Res>(_self.mobileSetting!, (value) {
    return _then(_self.copyWith(mobileSetting: value));
  });
}/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingCopyWith<$Res>? get setting {
    if (_self.setting == null) {
    return null;
  }

  return $SettingCopyWith<$Res>(_self.setting!, (value) {
    return _then(_self.copyWith(setting: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreModel].
extension StoreModelPatterns on StoreModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreModel value)  $default,){
final _that = this;
switch (_that) {
case _StoreModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _StoreModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? address,  int? allowCustomerViewStock,  int? allowQtyDecimal,  int? androidAppStatus,  AppStatus? appStatus,  int? autoCancelOrderHour,  int? blockedCustomerRegistration,  String? chatBbm,  String? chatKakao,  String? chatLine,  String? chatSkype,  String? chatWechat,  String? chatWhatsapp,  String? chatWidget,  String? chatYm,  int? checkoutWithoutRegister,  int? cityId,  String? cityName,  Contact? contact,  String? copyrightYear,  String? countryId,  String? countryName,  String? createdYear,  Currency? currency,  String? currencyId,  String? currencyName,  int? decDigit,  String? decPoint,  String? defaultCurrencyId,  int? disableCart,  int? dropShipEnabled,  String? email,  String? expiryDate,  String? extDomain,  String? favicon,  String? fbAppId,  String? fbAppSecret,  String? gAnalytics,  List<dynamic>? header,  int? id,  int? inquiryMode,  int? iosAppStatus,  bool? isReseller,  String? langCode,  String? linkAndroidApp,  String? linkBlog,  String? linkFacebook,  String? linkGoogleplus,  String? linkInstagram,  String? linkIosApp,  String? linkPinterest,  String? linkTumblr,  String? linkTwitter,  String? linkVimeo,  String? linkYoutube,  String? locationLat,  String? locationLon,  String? logo,  int? logoHeight,  int? logoWidth,  String? metaDescription,  String? metaKeywords,  MobileSetting? mobileSetting,  String? name,  int? olsWhitelabel,  int? onlyInStoreCity,  int? parentStoreId,  int? partnerId,  String? phone1,  String? phone2,  String? phone3,  String? planTypeId,  String? postalCode,  String? poweredBy,  String? remark,  Setting? setting,  int? signinRequired,  int? stateId,  String? stateName,  String? status,  int? storeStatus,  int? subdistrictId,  String? thousandsSep,  String? urlId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreModel() when $default != null:
return $default(_that.address,_that.allowCustomerViewStock,_that.allowQtyDecimal,_that.androidAppStatus,_that.appStatus,_that.autoCancelOrderHour,_that.blockedCustomerRegistration,_that.chatBbm,_that.chatKakao,_that.chatLine,_that.chatSkype,_that.chatWechat,_that.chatWhatsapp,_that.chatWidget,_that.chatYm,_that.checkoutWithoutRegister,_that.cityId,_that.cityName,_that.contact,_that.copyrightYear,_that.countryId,_that.countryName,_that.createdYear,_that.currency,_that.currencyId,_that.currencyName,_that.decDigit,_that.decPoint,_that.defaultCurrencyId,_that.disableCart,_that.dropShipEnabled,_that.email,_that.expiryDate,_that.extDomain,_that.favicon,_that.fbAppId,_that.fbAppSecret,_that.gAnalytics,_that.header,_that.id,_that.inquiryMode,_that.iosAppStatus,_that.isReseller,_that.langCode,_that.linkAndroidApp,_that.linkBlog,_that.linkFacebook,_that.linkGoogleplus,_that.linkInstagram,_that.linkIosApp,_that.linkPinterest,_that.linkTumblr,_that.linkTwitter,_that.linkVimeo,_that.linkYoutube,_that.locationLat,_that.locationLon,_that.logo,_that.logoHeight,_that.logoWidth,_that.metaDescription,_that.metaKeywords,_that.mobileSetting,_that.name,_that.olsWhitelabel,_that.onlyInStoreCity,_that.parentStoreId,_that.partnerId,_that.phone1,_that.phone2,_that.phone3,_that.planTypeId,_that.postalCode,_that.poweredBy,_that.remark,_that.setting,_that.signinRequired,_that.stateId,_that.stateName,_that.status,_that.storeStatus,_that.subdistrictId,_that.thousandsSep,_that.urlId);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? address,  int? allowCustomerViewStock,  int? allowQtyDecimal,  int? androidAppStatus,  AppStatus? appStatus,  int? autoCancelOrderHour,  int? blockedCustomerRegistration,  String? chatBbm,  String? chatKakao,  String? chatLine,  String? chatSkype,  String? chatWechat,  String? chatWhatsapp,  String? chatWidget,  String? chatYm,  int? checkoutWithoutRegister,  int? cityId,  String? cityName,  Contact? contact,  String? copyrightYear,  String? countryId,  String? countryName,  String? createdYear,  Currency? currency,  String? currencyId,  String? currencyName,  int? decDigit,  String? decPoint,  String? defaultCurrencyId,  int? disableCart,  int? dropShipEnabled,  String? email,  String? expiryDate,  String? extDomain,  String? favicon,  String? fbAppId,  String? fbAppSecret,  String? gAnalytics,  List<dynamic>? header,  int? id,  int? inquiryMode,  int? iosAppStatus,  bool? isReseller,  String? langCode,  String? linkAndroidApp,  String? linkBlog,  String? linkFacebook,  String? linkGoogleplus,  String? linkInstagram,  String? linkIosApp,  String? linkPinterest,  String? linkTumblr,  String? linkTwitter,  String? linkVimeo,  String? linkYoutube,  String? locationLat,  String? locationLon,  String? logo,  int? logoHeight,  int? logoWidth,  String? metaDescription,  String? metaKeywords,  MobileSetting? mobileSetting,  String? name,  int? olsWhitelabel,  int? onlyInStoreCity,  int? parentStoreId,  int? partnerId,  String? phone1,  String? phone2,  String? phone3,  String? planTypeId,  String? postalCode,  String? poweredBy,  String? remark,  Setting? setting,  int? signinRequired,  int? stateId,  String? stateName,  String? status,  int? storeStatus,  int? subdistrictId,  String? thousandsSep,  String? urlId)  $default,) {final _that = this;
switch (_that) {
case _StoreModel():
return $default(_that.address,_that.allowCustomerViewStock,_that.allowQtyDecimal,_that.androidAppStatus,_that.appStatus,_that.autoCancelOrderHour,_that.blockedCustomerRegistration,_that.chatBbm,_that.chatKakao,_that.chatLine,_that.chatSkype,_that.chatWechat,_that.chatWhatsapp,_that.chatWidget,_that.chatYm,_that.checkoutWithoutRegister,_that.cityId,_that.cityName,_that.contact,_that.copyrightYear,_that.countryId,_that.countryName,_that.createdYear,_that.currency,_that.currencyId,_that.currencyName,_that.decDigit,_that.decPoint,_that.defaultCurrencyId,_that.disableCart,_that.dropShipEnabled,_that.email,_that.expiryDate,_that.extDomain,_that.favicon,_that.fbAppId,_that.fbAppSecret,_that.gAnalytics,_that.header,_that.id,_that.inquiryMode,_that.iosAppStatus,_that.isReseller,_that.langCode,_that.linkAndroidApp,_that.linkBlog,_that.linkFacebook,_that.linkGoogleplus,_that.linkInstagram,_that.linkIosApp,_that.linkPinterest,_that.linkTumblr,_that.linkTwitter,_that.linkVimeo,_that.linkYoutube,_that.locationLat,_that.locationLon,_that.logo,_that.logoHeight,_that.logoWidth,_that.metaDescription,_that.metaKeywords,_that.mobileSetting,_that.name,_that.olsWhitelabel,_that.onlyInStoreCity,_that.parentStoreId,_that.partnerId,_that.phone1,_that.phone2,_that.phone3,_that.planTypeId,_that.postalCode,_that.poweredBy,_that.remark,_that.setting,_that.signinRequired,_that.stateId,_that.stateName,_that.status,_that.storeStatus,_that.subdistrictId,_that.thousandsSep,_that.urlId);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? address,  int? allowCustomerViewStock,  int? allowQtyDecimal,  int? androidAppStatus,  AppStatus? appStatus,  int? autoCancelOrderHour,  int? blockedCustomerRegistration,  String? chatBbm,  String? chatKakao,  String? chatLine,  String? chatSkype,  String? chatWechat,  String? chatWhatsapp,  String? chatWidget,  String? chatYm,  int? checkoutWithoutRegister,  int? cityId,  String? cityName,  Contact? contact,  String? copyrightYear,  String? countryId,  String? countryName,  String? createdYear,  Currency? currency,  String? currencyId,  String? currencyName,  int? decDigit,  String? decPoint,  String? defaultCurrencyId,  int? disableCart,  int? dropShipEnabled,  String? email,  String? expiryDate,  String? extDomain,  String? favicon,  String? fbAppId,  String? fbAppSecret,  String? gAnalytics,  List<dynamic>? header,  int? id,  int? inquiryMode,  int? iosAppStatus,  bool? isReseller,  String? langCode,  String? linkAndroidApp,  String? linkBlog,  String? linkFacebook,  String? linkGoogleplus,  String? linkInstagram,  String? linkIosApp,  String? linkPinterest,  String? linkTumblr,  String? linkTwitter,  String? linkVimeo,  String? linkYoutube,  String? locationLat,  String? locationLon,  String? logo,  int? logoHeight,  int? logoWidth,  String? metaDescription,  String? metaKeywords,  MobileSetting? mobileSetting,  String? name,  int? olsWhitelabel,  int? onlyInStoreCity,  int? parentStoreId,  int? partnerId,  String? phone1,  String? phone2,  String? phone3,  String? planTypeId,  String? postalCode,  String? poweredBy,  String? remark,  Setting? setting,  int? signinRequired,  int? stateId,  String? stateName,  String? status,  int? storeStatus,  int? subdistrictId,  String? thousandsSep,  String? urlId)?  $default,) {final _that = this;
switch (_that) {
case _StoreModel() when $default != null:
return $default(_that.address,_that.allowCustomerViewStock,_that.allowQtyDecimal,_that.androidAppStatus,_that.appStatus,_that.autoCancelOrderHour,_that.blockedCustomerRegistration,_that.chatBbm,_that.chatKakao,_that.chatLine,_that.chatSkype,_that.chatWechat,_that.chatWhatsapp,_that.chatWidget,_that.chatYm,_that.checkoutWithoutRegister,_that.cityId,_that.cityName,_that.contact,_that.copyrightYear,_that.countryId,_that.countryName,_that.createdYear,_that.currency,_that.currencyId,_that.currencyName,_that.decDigit,_that.decPoint,_that.defaultCurrencyId,_that.disableCart,_that.dropShipEnabled,_that.email,_that.expiryDate,_that.extDomain,_that.favicon,_that.fbAppId,_that.fbAppSecret,_that.gAnalytics,_that.header,_that.id,_that.inquiryMode,_that.iosAppStatus,_that.isReseller,_that.langCode,_that.linkAndroidApp,_that.linkBlog,_that.linkFacebook,_that.linkGoogleplus,_that.linkInstagram,_that.linkIosApp,_that.linkPinterest,_that.linkTumblr,_that.linkTwitter,_that.linkVimeo,_that.linkYoutube,_that.locationLat,_that.locationLon,_that.logo,_that.logoHeight,_that.logoWidth,_that.metaDescription,_that.metaKeywords,_that.mobileSetting,_that.name,_that.olsWhitelabel,_that.onlyInStoreCity,_that.parentStoreId,_that.partnerId,_that.phone1,_that.phone2,_that.phone3,_that.planTypeId,_that.postalCode,_that.poweredBy,_that.remark,_that.setting,_that.signinRequired,_that.stateId,_that.stateName,_that.status,_that.storeStatus,_that.subdistrictId,_that.thousandsSep,_that.urlId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StoreModel implements StoreModel {
  const _StoreModel({this.address, this.allowCustomerViewStock, this.allowQtyDecimal, this.androidAppStatus, this.appStatus, this.autoCancelOrderHour, this.blockedCustomerRegistration, this.chatBbm, this.chatKakao, this.chatLine, this.chatSkype, this.chatWechat, this.chatWhatsapp, this.chatWidget, this.chatYm, this.checkoutWithoutRegister, this.cityId, this.cityName, this.contact, this.copyrightYear, this.countryId, this.countryName, this.createdYear, this.currency, this.currencyId, this.currencyName, this.decDigit, this.decPoint, this.defaultCurrencyId, this.disableCart, this.dropShipEnabled, this.email, this.expiryDate, this.extDomain, this.favicon, this.fbAppId, this.fbAppSecret, this.gAnalytics, final  List<dynamic>? header, this.id, this.inquiryMode, this.iosAppStatus, this.isReseller, this.langCode, this.linkAndroidApp, this.linkBlog, this.linkFacebook, this.linkGoogleplus, this.linkInstagram, this.linkIosApp, this.linkPinterest, this.linkTumblr, this.linkTwitter, this.linkVimeo, this.linkYoutube, this.locationLat, this.locationLon, this.logo, this.logoHeight, this.logoWidth, this.metaDescription, this.metaKeywords, this.mobileSetting, this.name, this.olsWhitelabel, this.onlyInStoreCity, this.parentStoreId, this.partnerId, this.phone1, this.phone2, this.phone3, this.planTypeId, this.postalCode, this.poweredBy, this.remark, this.setting, this.signinRequired, this.stateId, this.stateName, this.status, this.storeStatus, this.subdistrictId, this.thousandsSep, this.urlId}): _header = header;
  factory _StoreModel.fromJson(Map<String, dynamic> json) => _$StoreModelFromJson(json);

@override final  String? address;
@override final  int? allowCustomerViewStock;
@override final  int? allowQtyDecimal;
@override final  int? androidAppStatus;
@override final  AppStatus? appStatus;
@override final  int? autoCancelOrderHour;
@override final  int? blockedCustomerRegistration;
@override final  String? chatBbm;
@override final  String? chatKakao;
@override final  String? chatLine;
@override final  String? chatSkype;
@override final  String? chatWechat;
@override final  String? chatWhatsapp;
@override final  String? chatWidget;
@override final  String? chatYm;
@override final  int? checkoutWithoutRegister;
@override final  int? cityId;
@override final  String? cityName;
@override final  Contact? contact;
@override final  String? copyrightYear;
@override final  String? countryId;
@override final  String? countryName;
@override final  String? createdYear;
@override final  Currency? currency;
@override final  String? currencyId;
@override final  String? currencyName;
@override final  int? decDigit;
@override final  String? decPoint;
@override final  String? defaultCurrencyId;
@override final  int? disableCart;
@override final  int? dropShipEnabled;
@override final  String? email;
@override final  String? expiryDate;
@override final  String? extDomain;
@override final  String? favicon;
@override final  String? fbAppId;
@override final  String? fbAppSecret;
@override final  String? gAnalytics;
 final  List<dynamic>? _header;
@override List<dynamic>? get header {
  final value = _header;
  if (value == null) return null;
  if (_header is EqualUnmodifiableListView) return _header;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? id;
@override final  int? inquiryMode;
@override final  int? iosAppStatus;
@override final  bool? isReseller;
@override final  String? langCode;
@override final  String? linkAndroidApp;
@override final  String? linkBlog;
@override final  String? linkFacebook;
@override final  String? linkGoogleplus;
@override final  String? linkInstagram;
@override final  String? linkIosApp;
@override final  String? linkPinterest;
@override final  String? linkTumblr;
@override final  String? linkTwitter;
@override final  String? linkVimeo;
@override final  String? linkYoutube;
@override final  String? locationLat;
@override final  String? locationLon;
@override final  String? logo;
@override final  int? logoHeight;
@override final  int? logoWidth;
@override final  String? metaDescription;
@override final  String? metaKeywords;
@override final  MobileSetting? mobileSetting;
@override final  String? name;
@override final  int? olsWhitelabel;
@override final  int? onlyInStoreCity;
@override final  int? parentStoreId;
@override final  int? partnerId;
@override final  String? phone1;
@override final  String? phone2;
@override final  String? phone3;
@override final  String? planTypeId;
@override final  String? postalCode;
@override final  String? poweredBy;
@override final  String? remark;
@override final  Setting? setting;
@override final  int? signinRequired;
@override final  int? stateId;
@override final  String? stateName;
@override final  String? status;
@override final  int? storeStatus;
@override final  int? subdistrictId;
@override final  String? thousandsSep;
@override final  String? urlId;

/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreModelCopyWith<_StoreModel> get copyWith => __$StoreModelCopyWithImpl<_StoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreModel&&(identical(other.address, address) || other.address == address)&&(identical(other.allowCustomerViewStock, allowCustomerViewStock) || other.allowCustomerViewStock == allowCustomerViewStock)&&(identical(other.allowQtyDecimal, allowQtyDecimal) || other.allowQtyDecimal == allowQtyDecimal)&&(identical(other.androidAppStatus, androidAppStatus) || other.androidAppStatus == androidAppStatus)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.autoCancelOrderHour, autoCancelOrderHour) || other.autoCancelOrderHour == autoCancelOrderHour)&&(identical(other.blockedCustomerRegistration, blockedCustomerRegistration) || other.blockedCustomerRegistration == blockedCustomerRegistration)&&(identical(other.chatBbm, chatBbm) || other.chatBbm == chatBbm)&&(identical(other.chatKakao, chatKakao) || other.chatKakao == chatKakao)&&(identical(other.chatLine, chatLine) || other.chatLine == chatLine)&&(identical(other.chatSkype, chatSkype) || other.chatSkype == chatSkype)&&(identical(other.chatWechat, chatWechat) || other.chatWechat == chatWechat)&&(identical(other.chatWhatsapp, chatWhatsapp) || other.chatWhatsapp == chatWhatsapp)&&(identical(other.chatWidget, chatWidget) || other.chatWidget == chatWidget)&&(identical(other.chatYm, chatYm) || other.chatYm == chatYm)&&(identical(other.checkoutWithoutRegister, checkoutWithoutRegister) || other.checkoutWithoutRegister == checkoutWithoutRegister)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.copyrightYear, copyrightYear) || other.copyrightYear == copyrightYear)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.createdYear, createdYear) || other.createdYear == createdYear)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.currencyId, currencyId) || other.currencyId == currencyId)&&(identical(other.currencyName, currencyName) || other.currencyName == currencyName)&&(identical(other.decDigit, decDigit) || other.decDigit == decDigit)&&(identical(other.decPoint, decPoint) || other.decPoint == decPoint)&&(identical(other.defaultCurrencyId, defaultCurrencyId) || other.defaultCurrencyId == defaultCurrencyId)&&(identical(other.disableCart, disableCart) || other.disableCart == disableCart)&&(identical(other.dropShipEnabled, dropShipEnabled) || other.dropShipEnabled == dropShipEnabled)&&(identical(other.email, email) || other.email == email)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.extDomain, extDomain) || other.extDomain == extDomain)&&(identical(other.favicon, favicon) || other.favicon == favicon)&&(identical(other.fbAppId, fbAppId) || other.fbAppId == fbAppId)&&(identical(other.fbAppSecret, fbAppSecret) || other.fbAppSecret == fbAppSecret)&&(identical(other.gAnalytics, gAnalytics) || other.gAnalytics == gAnalytics)&&const DeepCollectionEquality().equals(other._header, _header)&&(identical(other.id, id) || other.id == id)&&(identical(other.inquiryMode, inquiryMode) || other.inquiryMode == inquiryMode)&&(identical(other.iosAppStatus, iosAppStatus) || other.iosAppStatus == iosAppStatus)&&(identical(other.isReseller, isReseller) || other.isReseller == isReseller)&&(identical(other.langCode, langCode) || other.langCode == langCode)&&(identical(other.linkAndroidApp, linkAndroidApp) || other.linkAndroidApp == linkAndroidApp)&&(identical(other.linkBlog, linkBlog) || other.linkBlog == linkBlog)&&(identical(other.linkFacebook, linkFacebook) || other.linkFacebook == linkFacebook)&&(identical(other.linkGoogleplus, linkGoogleplus) || other.linkGoogleplus == linkGoogleplus)&&(identical(other.linkInstagram, linkInstagram) || other.linkInstagram == linkInstagram)&&(identical(other.linkIosApp, linkIosApp) || other.linkIosApp == linkIosApp)&&(identical(other.linkPinterest, linkPinterest) || other.linkPinterest == linkPinterest)&&(identical(other.linkTumblr, linkTumblr) || other.linkTumblr == linkTumblr)&&(identical(other.linkTwitter, linkTwitter) || other.linkTwitter == linkTwitter)&&(identical(other.linkVimeo, linkVimeo) || other.linkVimeo == linkVimeo)&&(identical(other.linkYoutube, linkYoutube) || other.linkYoutube == linkYoutube)&&(identical(other.locationLat, locationLat) || other.locationLat == locationLat)&&(identical(other.locationLon, locationLon) || other.locationLon == locationLon)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.logoHeight, logoHeight) || other.logoHeight == logoHeight)&&(identical(other.logoWidth, logoWidth) || other.logoWidth == logoWidth)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaKeywords, metaKeywords) || other.metaKeywords == metaKeywords)&&(identical(other.mobileSetting, mobileSetting) || other.mobileSetting == mobileSetting)&&(identical(other.name, name) || other.name == name)&&(identical(other.olsWhitelabel, olsWhitelabel) || other.olsWhitelabel == olsWhitelabel)&&(identical(other.onlyInStoreCity, onlyInStoreCity) || other.onlyInStoreCity == onlyInStoreCity)&&(identical(other.parentStoreId, parentStoreId) || other.parentStoreId == parentStoreId)&&(identical(other.partnerId, partnerId) || other.partnerId == partnerId)&&(identical(other.phone1, phone1) || other.phone1 == phone1)&&(identical(other.phone2, phone2) || other.phone2 == phone2)&&(identical(other.phone3, phone3) || other.phone3 == phone3)&&(identical(other.planTypeId, planTypeId) || other.planTypeId == planTypeId)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.poweredBy, poweredBy) || other.poweredBy == poweredBy)&&(identical(other.remark, remark) || other.remark == remark)&&(identical(other.setting, setting) || other.setting == setting)&&(identical(other.signinRequired, signinRequired) || other.signinRequired == signinRequired)&&(identical(other.stateId, stateId) || other.stateId == stateId)&&(identical(other.stateName, stateName) || other.stateName == stateName)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeStatus, storeStatus) || other.storeStatus == storeStatus)&&(identical(other.subdistrictId, subdistrictId) || other.subdistrictId == subdistrictId)&&(identical(other.thousandsSep, thousandsSep) || other.thousandsSep == thousandsSep)&&(identical(other.urlId, urlId) || other.urlId == urlId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,address,allowCustomerViewStock,allowQtyDecimal,androidAppStatus,appStatus,autoCancelOrderHour,blockedCustomerRegistration,chatBbm,chatKakao,chatLine,chatSkype,chatWechat,chatWhatsapp,chatWidget,chatYm,checkoutWithoutRegister,cityId,cityName,contact,copyrightYear,countryId,countryName,createdYear,currency,currencyId,currencyName,decDigit,decPoint,defaultCurrencyId,disableCart,dropShipEnabled,email,expiryDate,extDomain,favicon,fbAppId,fbAppSecret,gAnalytics,const DeepCollectionEquality().hash(_header),id,inquiryMode,iosAppStatus,isReseller,langCode,linkAndroidApp,linkBlog,linkFacebook,linkGoogleplus,linkInstagram,linkIosApp,linkPinterest,linkTumblr,linkTwitter,linkVimeo,linkYoutube,locationLat,locationLon,logo,logoHeight,logoWidth,metaDescription,metaKeywords,mobileSetting,name,olsWhitelabel,onlyInStoreCity,parentStoreId,partnerId,phone1,phone2,phone3,planTypeId,postalCode,poweredBy,remark,setting,signinRequired,stateId,stateName,status,storeStatus,subdistrictId,thousandsSep,urlId]);

@override
String toString() {
  return 'StoreModel(address: $address, allowCustomerViewStock: $allowCustomerViewStock, allowQtyDecimal: $allowQtyDecimal, androidAppStatus: $androidAppStatus, appStatus: $appStatus, autoCancelOrderHour: $autoCancelOrderHour, blockedCustomerRegistration: $blockedCustomerRegistration, chatBbm: $chatBbm, chatKakao: $chatKakao, chatLine: $chatLine, chatSkype: $chatSkype, chatWechat: $chatWechat, chatWhatsapp: $chatWhatsapp, chatWidget: $chatWidget, chatYm: $chatYm, checkoutWithoutRegister: $checkoutWithoutRegister, cityId: $cityId, cityName: $cityName, contact: $contact, copyrightYear: $copyrightYear, countryId: $countryId, countryName: $countryName, createdYear: $createdYear, currency: $currency, currencyId: $currencyId, currencyName: $currencyName, decDigit: $decDigit, decPoint: $decPoint, defaultCurrencyId: $defaultCurrencyId, disableCart: $disableCart, dropShipEnabled: $dropShipEnabled, email: $email, expiryDate: $expiryDate, extDomain: $extDomain, favicon: $favicon, fbAppId: $fbAppId, fbAppSecret: $fbAppSecret, gAnalytics: $gAnalytics, header: $header, id: $id, inquiryMode: $inquiryMode, iosAppStatus: $iosAppStatus, isReseller: $isReseller, langCode: $langCode, linkAndroidApp: $linkAndroidApp, linkBlog: $linkBlog, linkFacebook: $linkFacebook, linkGoogleplus: $linkGoogleplus, linkInstagram: $linkInstagram, linkIosApp: $linkIosApp, linkPinterest: $linkPinterest, linkTumblr: $linkTumblr, linkTwitter: $linkTwitter, linkVimeo: $linkVimeo, linkYoutube: $linkYoutube, locationLat: $locationLat, locationLon: $locationLon, logo: $logo, logoHeight: $logoHeight, logoWidth: $logoWidth, metaDescription: $metaDescription, metaKeywords: $metaKeywords, mobileSetting: $mobileSetting, name: $name, olsWhitelabel: $olsWhitelabel, onlyInStoreCity: $onlyInStoreCity, parentStoreId: $parentStoreId, partnerId: $partnerId, phone1: $phone1, phone2: $phone2, phone3: $phone3, planTypeId: $planTypeId, postalCode: $postalCode, poweredBy: $poweredBy, remark: $remark, setting: $setting, signinRequired: $signinRequired, stateId: $stateId, stateName: $stateName, status: $status, storeStatus: $storeStatus, subdistrictId: $subdistrictId, thousandsSep: $thousandsSep, urlId: $urlId)';
}


}

/// @nodoc
abstract mixin class _$StoreModelCopyWith<$Res> implements $StoreModelCopyWith<$Res> {
  factory _$StoreModelCopyWith(_StoreModel value, $Res Function(_StoreModel) _then) = __$StoreModelCopyWithImpl;
@override @useResult
$Res call({
 String? address, int? allowCustomerViewStock, int? allowQtyDecimal, int? androidAppStatus, AppStatus? appStatus, int? autoCancelOrderHour, int? blockedCustomerRegistration, String? chatBbm, String? chatKakao, String? chatLine, String? chatSkype, String? chatWechat, String? chatWhatsapp, String? chatWidget, String? chatYm, int? checkoutWithoutRegister, int? cityId, String? cityName, Contact? contact, String? copyrightYear, String? countryId, String? countryName, String? createdYear, Currency? currency, String? currencyId, String? currencyName, int? decDigit, String? decPoint, String? defaultCurrencyId, int? disableCart, int? dropShipEnabled, String? email, String? expiryDate, String? extDomain, String? favicon, String? fbAppId, String? fbAppSecret, String? gAnalytics, List<dynamic>? header, int? id, int? inquiryMode, int? iosAppStatus, bool? isReseller, String? langCode, String? linkAndroidApp, String? linkBlog, String? linkFacebook, String? linkGoogleplus, String? linkInstagram, String? linkIosApp, String? linkPinterest, String? linkTumblr, String? linkTwitter, String? linkVimeo, String? linkYoutube, String? locationLat, String? locationLon, String? logo, int? logoHeight, int? logoWidth, String? metaDescription, String? metaKeywords, MobileSetting? mobileSetting, String? name, int? olsWhitelabel, int? onlyInStoreCity, int? parentStoreId, int? partnerId, String? phone1, String? phone2, String? phone3, String? planTypeId, String? postalCode, String? poweredBy, String? remark, Setting? setting, int? signinRequired, int? stateId, String? stateName, String? status, int? storeStatus, int? subdistrictId, String? thousandsSep, String? urlId
});


@override $AppStatusCopyWith<$Res>? get appStatus;@override $ContactCopyWith<$Res>? get contact;@override $CurrencyCopyWith<$Res>? get currency;@override $MobileSettingCopyWith<$Res>? get mobileSetting;@override $SettingCopyWith<$Res>? get setting;

}
/// @nodoc
class __$StoreModelCopyWithImpl<$Res>
    implements _$StoreModelCopyWith<$Res> {
  __$StoreModelCopyWithImpl(this._self, this._then);

  final _StoreModel _self;
  final $Res Function(_StoreModel) _then;

/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? allowCustomerViewStock = freezed,Object? allowQtyDecimal = freezed,Object? androidAppStatus = freezed,Object? appStatus = freezed,Object? autoCancelOrderHour = freezed,Object? blockedCustomerRegistration = freezed,Object? chatBbm = freezed,Object? chatKakao = freezed,Object? chatLine = freezed,Object? chatSkype = freezed,Object? chatWechat = freezed,Object? chatWhatsapp = freezed,Object? chatWidget = freezed,Object? chatYm = freezed,Object? checkoutWithoutRegister = freezed,Object? cityId = freezed,Object? cityName = freezed,Object? contact = freezed,Object? copyrightYear = freezed,Object? countryId = freezed,Object? countryName = freezed,Object? createdYear = freezed,Object? currency = freezed,Object? currencyId = freezed,Object? currencyName = freezed,Object? decDigit = freezed,Object? decPoint = freezed,Object? defaultCurrencyId = freezed,Object? disableCart = freezed,Object? dropShipEnabled = freezed,Object? email = freezed,Object? expiryDate = freezed,Object? extDomain = freezed,Object? favicon = freezed,Object? fbAppId = freezed,Object? fbAppSecret = freezed,Object? gAnalytics = freezed,Object? header = freezed,Object? id = freezed,Object? inquiryMode = freezed,Object? iosAppStatus = freezed,Object? isReseller = freezed,Object? langCode = freezed,Object? linkAndroidApp = freezed,Object? linkBlog = freezed,Object? linkFacebook = freezed,Object? linkGoogleplus = freezed,Object? linkInstagram = freezed,Object? linkIosApp = freezed,Object? linkPinterest = freezed,Object? linkTumblr = freezed,Object? linkTwitter = freezed,Object? linkVimeo = freezed,Object? linkYoutube = freezed,Object? locationLat = freezed,Object? locationLon = freezed,Object? logo = freezed,Object? logoHeight = freezed,Object? logoWidth = freezed,Object? metaDescription = freezed,Object? metaKeywords = freezed,Object? mobileSetting = freezed,Object? name = freezed,Object? olsWhitelabel = freezed,Object? onlyInStoreCity = freezed,Object? parentStoreId = freezed,Object? partnerId = freezed,Object? phone1 = freezed,Object? phone2 = freezed,Object? phone3 = freezed,Object? planTypeId = freezed,Object? postalCode = freezed,Object? poweredBy = freezed,Object? remark = freezed,Object? setting = freezed,Object? signinRequired = freezed,Object? stateId = freezed,Object? stateName = freezed,Object? status = freezed,Object? storeStatus = freezed,Object? subdistrictId = freezed,Object? thousandsSep = freezed,Object? urlId = freezed,}) {
  return _then(_StoreModel(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,allowCustomerViewStock: freezed == allowCustomerViewStock ? _self.allowCustomerViewStock : allowCustomerViewStock // ignore: cast_nullable_to_non_nullable
as int?,allowQtyDecimal: freezed == allowQtyDecimal ? _self.allowQtyDecimal : allowQtyDecimal // ignore: cast_nullable_to_non_nullable
as int?,androidAppStatus: freezed == androidAppStatus ? _self.androidAppStatus : androidAppStatus // ignore: cast_nullable_to_non_nullable
as int?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as AppStatus?,autoCancelOrderHour: freezed == autoCancelOrderHour ? _self.autoCancelOrderHour : autoCancelOrderHour // ignore: cast_nullable_to_non_nullable
as int?,blockedCustomerRegistration: freezed == blockedCustomerRegistration ? _self.blockedCustomerRegistration : blockedCustomerRegistration // ignore: cast_nullable_to_non_nullable
as int?,chatBbm: freezed == chatBbm ? _self.chatBbm : chatBbm // ignore: cast_nullable_to_non_nullable
as String?,chatKakao: freezed == chatKakao ? _self.chatKakao : chatKakao // ignore: cast_nullable_to_non_nullable
as String?,chatLine: freezed == chatLine ? _self.chatLine : chatLine // ignore: cast_nullable_to_non_nullable
as String?,chatSkype: freezed == chatSkype ? _self.chatSkype : chatSkype // ignore: cast_nullable_to_non_nullable
as String?,chatWechat: freezed == chatWechat ? _self.chatWechat : chatWechat // ignore: cast_nullable_to_non_nullable
as String?,chatWhatsapp: freezed == chatWhatsapp ? _self.chatWhatsapp : chatWhatsapp // ignore: cast_nullable_to_non_nullable
as String?,chatWidget: freezed == chatWidget ? _self.chatWidget : chatWidget // ignore: cast_nullable_to_non_nullable
as String?,chatYm: freezed == chatYm ? _self.chatYm : chatYm // ignore: cast_nullable_to_non_nullable
as String?,checkoutWithoutRegister: freezed == checkoutWithoutRegister ? _self.checkoutWithoutRegister : checkoutWithoutRegister // ignore: cast_nullable_to_non_nullable
as int?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as Contact?,copyrightYear: freezed == copyrightYear ? _self.copyrightYear : copyrightYear // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,createdYear: freezed == createdYear ? _self.createdYear : createdYear // ignore: cast_nullable_to_non_nullable
as String?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as Currency?,currencyId: freezed == currencyId ? _self.currencyId : currencyId // ignore: cast_nullable_to_non_nullable
as String?,currencyName: freezed == currencyName ? _self.currencyName : currencyName // ignore: cast_nullable_to_non_nullable
as String?,decDigit: freezed == decDigit ? _self.decDigit : decDigit // ignore: cast_nullable_to_non_nullable
as int?,decPoint: freezed == decPoint ? _self.decPoint : decPoint // ignore: cast_nullable_to_non_nullable
as String?,defaultCurrencyId: freezed == defaultCurrencyId ? _self.defaultCurrencyId : defaultCurrencyId // ignore: cast_nullable_to_non_nullable
as String?,disableCart: freezed == disableCart ? _self.disableCart : disableCart // ignore: cast_nullable_to_non_nullable
as int?,dropShipEnabled: freezed == dropShipEnabled ? _self.dropShipEnabled : dropShipEnabled // ignore: cast_nullable_to_non_nullable
as int?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,extDomain: freezed == extDomain ? _self.extDomain : extDomain // ignore: cast_nullable_to_non_nullable
as String?,favicon: freezed == favicon ? _self.favicon : favicon // ignore: cast_nullable_to_non_nullable
as String?,fbAppId: freezed == fbAppId ? _self.fbAppId : fbAppId // ignore: cast_nullable_to_non_nullable
as String?,fbAppSecret: freezed == fbAppSecret ? _self.fbAppSecret : fbAppSecret // ignore: cast_nullable_to_non_nullable
as String?,gAnalytics: freezed == gAnalytics ? _self.gAnalytics : gAnalytics // ignore: cast_nullable_to_non_nullable
as String?,header: freezed == header ? _self._header : header // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,inquiryMode: freezed == inquiryMode ? _self.inquiryMode : inquiryMode // ignore: cast_nullable_to_non_nullable
as int?,iosAppStatus: freezed == iosAppStatus ? _self.iosAppStatus : iosAppStatus // ignore: cast_nullable_to_non_nullable
as int?,isReseller: freezed == isReseller ? _self.isReseller : isReseller // ignore: cast_nullable_to_non_nullable
as bool?,langCode: freezed == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String?,linkAndroidApp: freezed == linkAndroidApp ? _self.linkAndroidApp : linkAndroidApp // ignore: cast_nullable_to_non_nullable
as String?,linkBlog: freezed == linkBlog ? _self.linkBlog : linkBlog // ignore: cast_nullable_to_non_nullable
as String?,linkFacebook: freezed == linkFacebook ? _self.linkFacebook : linkFacebook // ignore: cast_nullable_to_non_nullable
as String?,linkGoogleplus: freezed == linkGoogleplus ? _self.linkGoogleplus : linkGoogleplus // ignore: cast_nullable_to_non_nullable
as String?,linkInstagram: freezed == linkInstagram ? _self.linkInstagram : linkInstagram // ignore: cast_nullable_to_non_nullable
as String?,linkIosApp: freezed == linkIosApp ? _self.linkIosApp : linkIosApp // ignore: cast_nullable_to_non_nullable
as String?,linkPinterest: freezed == linkPinterest ? _self.linkPinterest : linkPinterest // ignore: cast_nullable_to_non_nullable
as String?,linkTumblr: freezed == linkTumblr ? _self.linkTumblr : linkTumblr // ignore: cast_nullable_to_non_nullable
as String?,linkTwitter: freezed == linkTwitter ? _self.linkTwitter : linkTwitter // ignore: cast_nullable_to_non_nullable
as String?,linkVimeo: freezed == linkVimeo ? _self.linkVimeo : linkVimeo // ignore: cast_nullable_to_non_nullable
as String?,linkYoutube: freezed == linkYoutube ? _self.linkYoutube : linkYoutube // ignore: cast_nullable_to_non_nullable
as String?,locationLat: freezed == locationLat ? _self.locationLat : locationLat // ignore: cast_nullable_to_non_nullable
as String?,locationLon: freezed == locationLon ? _self.locationLon : locationLon // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,logoHeight: freezed == logoHeight ? _self.logoHeight : logoHeight // ignore: cast_nullable_to_non_nullable
as int?,logoWidth: freezed == logoWidth ? _self.logoWidth : logoWidth // ignore: cast_nullable_to_non_nullable
as int?,metaDescription: freezed == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String?,metaKeywords: freezed == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String?,mobileSetting: freezed == mobileSetting ? _self.mobileSetting : mobileSetting // ignore: cast_nullable_to_non_nullable
as MobileSetting?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,olsWhitelabel: freezed == olsWhitelabel ? _self.olsWhitelabel : olsWhitelabel // ignore: cast_nullable_to_non_nullable
as int?,onlyInStoreCity: freezed == onlyInStoreCity ? _self.onlyInStoreCity : onlyInStoreCity // ignore: cast_nullable_to_non_nullable
as int?,parentStoreId: freezed == parentStoreId ? _self.parentStoreId : parentStoreId // ignore: cast_nullable_to_non_nullable
as int?,partnerId: freezed == partnerId ? _self.partnerId : partnerId // ignore: cast_nullable_to_non_nullable
as int?,phone1: freezed == phone1 ? _self.phone1 : phone1 // ignore: cast_nullable_to_non_nullable
as String?,phone2: freezed == phone2 ? _self.phone2 : phone2 // ignore: cast_nullable_to_non_nullable
as String?,phone3: freezed == phone3 ? _self.phone3 : phone3 // ignore: cast_nullable_to_non_nullable
as String?,planTypeId: freezed == planTypeId ? _self.planTypeId : planTypeId // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,poweredBy: freezed == poweredBy ? _self.poweredBy : poweredBy // ignore: cast_nullable_to_non_nullable
as String?,remark: freezed == remark ? _self.remark : remark // ignore: cast_nullable_to_non_nullable
as String?,setting: freezed == setting ? _self.setting : setting // ignore: cast_nullable_to_non_nullable
as Setting?,signinRequired: freezed == signinRequired ? _self.signinRequired : signinRequired // ignore: cast_nullable_to_non_nullable
as int?,stateId: freezed == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,storeStatus: freezed == storeStatus ? _self.storeStatus : storeStatus // ignore: cast_nullable_to_non_nullable
as int?,subdistrictId: freezed == subdistrictId ? _self.subdistrictId : subdistrictId // ignore: cast_nullable_to_non_nullable
as int?,thousandsSep: freezed == thousandsSep ? _self.thousandsSep : thousandsSep // ignore: cast_nullable_to_non_nullable
as String?,urlId: freezed == urlId ? _self.urlId : urlId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppStatusCopyWith<$Res>? get appStatus {
    if (_self.appStatus == null) {
    return null;
  }

  return $AppStatusCopyWith<$Res>(_self.appStatus!, (value) {
    return _then(_self.copyWith(appStatus: value));
  });
}/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ContactCopyWith<$Res>? get contact {
    if (_self.contact == null) {
    return null;
  }

  return $ContactCopyWith<$Res>(_self.contact!, (value) {
    return _then(_self.copyWith(contact: value));
  });
}/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CurrencyCopyWith<$Res>? get currency {
    if (_self.currency == null) {
    return null;
  }

  return $CurrencyCopyWith<$Res>(_self.currency!, (value) {
    return _then(_self.copyWith(currency: value));
  });
}/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MobileSettingCopyWith<$Res>? get mobileSetting {
    if (_self.mobileSetting == null) {
    return null;
  }

  return $MobileSettingCopyWith<$Res>(_self.mobileSetting!, (value) {
    return _then(_self.copyWith(mobileSetting: value));
  });
}/// Create a copy of StoreModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingCopyWith<$Res>? get setting {
    if (_self.setting == null) {
    return null;
  }

  return $SettingCopyWith<$Res>(_self.setting!, (value) {
    return _then(_self.copyWith(setting: value));
  });
}
}


/// @nodoc
mixin _$AppStatus {

 String? get storeStatus; String? get androidAppStatus; String? get iosAppStatus;
/// Create a copy of AppStatus
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AppStatusCopyWith<AppStatus> get copyWith => _$AppStatusCopyWithImpl<AppStatus>(this as AppStatus, _$identity);

  /// Serializes this AppStatus to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppStatus&&(identical(other.storeStatus, storeStatus) || other.storeStatus == storeStatus)&&(identical(other.androidAppStatus, androidAppStatus) || other.androidAppStatus == androidAppStatus)&&(identical(other.iosAppStatus, iosAppStatus) || other.iosAppStatus == iosAppStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeStatus,androidAppStatus,iosAppStatus);

@override
String toString() {
  return 'AppStatus(storeStatus: $storeStatus, androidAppStatus: $androidAppStatus, iosAppStatus: $iosAppStatus)';
}


}

/// @nodoc
abstract mixin class $AppStatusCopyWith<$Res>  {
  factory $AppStatusCopyWith(AppStatus value, $Res Function(AppStatus) _then) = _$AppStatusCopyWithImpl;
@useResult
$Res call({
 String? storeStatus, String? androidAppStatus, String? iosAppStatus
});




}
/// @nodoc
class _$AppStatusCopyWithImpl<$Res>
    implements $AppStatusCopyWith<$Res> {
  _$AppStatusCopyWithImpl(this._self, this._then);

  final AppStatus _self;
  final $Res Function(AppStatus) _then;

/// Create a copy of AppStatus
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeStatus = freezed,Object? androidAppStatus = freezed,Object? iosAppStatus = freezed,}) {
  return _then(_self.copyWith(
storeStatus: freezed == storeStatus ? _self.storeStatus : storeStatus // ignore: cast_nullable_to_non_nullable
as String?,androidAppStatus: freezed == androidAppStatus ? _self.androidAppStatus : androidAppStatus // ignore: cast_nullable_to_non_nullable
as String?,iosAppStatus: freezed == iosAppStatus ? _self.iosAppStatus : iosAppStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AppStatus].
extension AppStatusPatterns on AppStatus {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AppStatus value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AppStatus() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AppStatus value)  $default,){
final _that = this;
switch (_that) {
case _AppStatus():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AppStatus value)?  $default,){
final _that = this;
switch (_that) {
case _AppStatus() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? storeStatus,  String? androidAppStatus,  String? iosAppStatus)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AppStatus() when $default != null:
return $default(_that.storeStatus,_that.androidAppStatus,_that.iosAppStatus);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? storeStatus,  String? androidAppStatus,  String? iosAppStatus)  $default,) {final _that = this;
switch (_that) {
case _AppStatus():
return $default(_that.storeStatus,_that.androidAppStatus,_that.iosAppStatus);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? storeStatus,  String? androidAppStatus,  String? iosAppStatus)?  $default,) {final _that = this;
switch (_that) {
case _AppStatus() when $default != null:
return $default(_that.storeStatus,_that.androidAppStatus,_that.iosAppStatus);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AppStatus implements AppStatus {
  const _AppStatus({this.storeStatus, this.androidAppStatus, this.iosAppStatus});
  factory _AppStatus.fromJson(Map<String, dynamic> json) => _$AppStatusFromJson(json);

@override final  String? storeStatus;
@override final  String? androidAppStatus;
@override final  String? iosAppStatus;

/// Create a copy of AppStatus
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AppStatusCopyWith<_AppStatus> get copyWith => __$AppStatusCopyWithImpl<_AppStatus>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AppStatusToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AppStatus&&(identical(other.storeStatus, storeStatus) || other.storeStatus == storeStatus)&&(identical(other.androidAppStatus, androidAppStatus) || other.androidAppStatus == androidAppStatus)&&(identical(other.iosAppStatus, iosAppStatus) || other.iosAppStatus == iosAppStatus));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,storeStatus,androidAppStatus,iosAppStatus);

@override
String toString() {
  return 'AppStatus(storeStatus: $storeStatus, androidAppStatus: $androidAppStatus, iosAppStatus: $iosAppStatus)';
}


}

/// @nodoc
abstract mixin class _$AppStatusCopyWith<$Res> implements $AppStatusCopyWith<$Res> {
  factory _$AppStatusCopyWith(_AppStatus value, $Res Function(_AppStatus) _then) = __$AppStatusCopyWithImpl;
@override @useResult
$Res call({
 String? storeStatus, String? androidAppStatus, String? iosAppStatus
});




}
/// @nodoc
class __$AppStatusCopyWithImpl<$Res>
    implements _$AppStatusCopyWith<$Res> {
  __$AppStatusCopyWithImpl(this._self, this._then);

  final _AppStatus _self;
  final $Res Function(_AppStatus) _then;

/// Create a copy of AppStatus
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeStatus = freezed,Object? androidAppStatus = freezed,Object? iosAppStatus = freezed,}) {
  return _then(_AppStatus(
storeStatus: freezed == storeStatus ? _self.storeStatus : storeStatus // ignore: cast_nullable_to_non_nullable
as String?,androidAppStatus: freezed == androidAppStatus ? _self.androidAppStatus : androidAppStatus // ignore: cast_nullable_to_non_nullable
as String?,iosAppStatus: freezed == iosAppStatus ? _self.iosAppStatus : iosAppStatus // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Contact {

 LocationStore? get location; Chat? get chat; Links? get links; String? get email; List<String>? get phone;
/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactCopyWith<Contact> get copyWith => _$ContactCopyWithImpl<Contact>(this as Contact, _$identity);

  /// Serializes this Contact to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Contact&&(identical(other.location, location) || other.location == location)&&(identical(other.chat, chat) || other.chat == chat)&&(identical(other.links, links) || other.links == links)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other.phone, phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,chat,links,email,const DeepCollectionEquality().hash(phone));

@override
String toString() {
  return 'Contact(location: $location, chat: $chat, links: $links, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class $ContactCopyWith<$Res>  {
  factory $ContactCopyWith(Contact value, $Res Function(Contact) _then) = _$ContactCopyWithImpl;
@useResult
$Res call({
 LocationStore? location, Chat? chat, Links? links, String? email, List<String>? phone
});


$LocationStoreCopyWith<$Res>? get location;$ChatCopyWith<$Res>? get chat;$LinksCopyWith<$Res>? get links;

}
/// @nodoc
class _$ContactCopyWithImpl<$Res>
    implements $ContactCopyWith<$Res> {
  _$ContactCopyWithImpl(this._self, this._then);

  final Contact _self;
  final $Res Function(Contact) _then;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? location = freezed,Object? chat = freezed,Object? links = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_self.copyWith(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationStore?,chat: freezed == chat ? _self.chat : chat // ignore: cast_nullable_to_non_nullable
as Chat?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Links?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}
/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationStoreCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationStoreCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCopyWith<$Res>? get chat {
    if (_self.chat == null) {
    return null;
  }

  return $ChatCopyWith<$Res>(_self.chat!, (value) {
    return _then(_self.copyWith(chat: value));
  });
}/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinksCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $LinksCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// Adds pattern-matching-related methods to [Contact].
extension ContactPatterns on Contact {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Contact value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Contact value)  $default,){
final _that = this;
switch (_that) {
case _Contact():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Contact value)?  $default,){
final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LocationStore? location,  Chat? chat,  Links? links,  String? email,  List<String>? phone)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that.location,_that.chat,_that.links,_that.email,_that.phone);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LocationStore? location,  Chat? chat,  Links? links,  String? email,  List<String>? phone)  $default,) {final _that = this;
switch (_that) {
case _Contact():
return $default(_that.location,_that.chat,_that.links,_that.email,_that.phone);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LocationStore? location,  Chat? chat,  Links? links,  String? email,  List<String>? phone)?  $default,) {final _that = this;
switch (_that) {
case _Contact() when $default != null:
return $default(_that.location,_that.chat,_that.links,_that.email,_that.phone);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Contact implements Contact {
  const _Contact({this.location, this.chat, this.links, this.email, final  List<String>? phone}): _phone = phone;
  factory _Contact.fromJson(Map<String, dynamic> json) => _$ContactFromJson(json);

@override final  LocationStore? location;
@override final  Chat? chat;
@override final  Links? links;
@override final  String? email;
 final  List<String>? _phone;
@override List<String>? get phone {
  final value = _phone;
  if (value == null) return null;
  if (_phone is EqualUnmodifiableListView) return _phone;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactCopyWith<_Contact> get copyWith => __$ContactCopyWithImpl<_Contact>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Contact&&(identical(other.location, location) || other.location == location)&&(identical(other.chat, chat) || other.chat == chat)&&(identical(other.links, links) || other.links == links)&&(identical(other.email, email) || other.email == email)&&const DeepCollectionEquality().equals(other._phone, _phone));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,location,chat,links,email,const DeepCollectionEquality().hash(_phone));

@override
String toString() {
  return 'Contact(location: $location, chat: $chat, links: $links, email: $email, phone: $phone)';
}


}

/// @nodoc
abstract mixin class _$ContactCopyWith<$Res> implements $ContactCopyWith<$Res> {
  factory _$ContactCopyWith(_Contact value, $Res Function(_Contact) _then) = __$ContactCopyWithImpl;
@override @useResult
$Res call({
 LocationStore? location, Chat? chat, Links? links, String? email, List<String>? phone
});


@override $LocationStoreCopyWith<$Res>? get location;@override $ChatCopyWith<$Res>? get chat;@override $LinksCopyWith<$Res>? get links;

}
/// @nodoc
class __$ContactCopyWithImpl<$Res>
    implements _$ContactCopyWith<$Res> {
  __$ContactCopyWithImpl(this._self, this._then);

  final _Contact _self;
  final $Res Function(_Contact) _then;

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? location = freezed,Object? chat = freezed,Object? links = freezed,Object? email = freezed,Object? phone = freezed,}) {
  return _then(_Contact(
location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationStore?,chat: freezed == chat ? _self.chat : chat // ignore: cast_nullable_to_non_nullable
as Chat?,links: freezed == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as Links?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self._phone : phone // ignore: cast_nullable_to_non_nullable
as List<String>?,
  ));
}

/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationStoreCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationStoreCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ChatCopyWith<$Res>? get chat {
    if (_self.chat == null) {
    return null;
  }

  return $ChatCopyWith<$Res>(_self.chat!, (value) {
    return _then(_self.copyWith(chat: value));
  });
}/// Create a copy of Contact
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LinksCopyWith<$Res>? get links {
    if (_self.links == null) {
    return null;
  }

  return $LinksCopyWith<$Res>(_self.links!, (value) {
    return _then(_self.copyWith(links: value));
  });
}
}


/// @nodoc
mixin _$LocationStore {

 String? get address; String? get postalCode; int? get cityId; String? get cityName; String? get countryId; String? get countryName; int? get stateId; String? get stateName; int? get subdistrictId; String? get locationLat; String? get locationLon;
/// Create a copy of LocationStore
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationStoreCopyWith<LocationStore> get copyWith => _$LocationStoreCopyWithImpl<LocationStore>(this as LocationStore, _$identity);

  /// Serializes this LocationStore to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationStore&&(identical(other.address, address) || other.address == address)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.stateId, stateId) || other.stateId == stateId)&&(identical(other.stateName, stateName) || other.stateName == stateName)&&(identical(other.subdistrictId, subdistrictId) || other.subdistrictId == subdistrictId)&&(identical(other.locationLat, locationLat) || other.locationLat == locationLat)&&(identical(other.locationLon, locationLon) || other.locationLon == locationLon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,postalCode,cityId,cityName,countryId,countryName,stateId,stateName,subdistrictId,locationLat,locationLon);

@override
String toString() {
  return 'LocationStore(address: $address, postalCode: $postalCode, cityId: $cityId, cityName: $cityName, countryId: $countryId, countryName: $countryName, stateId: $stateId, stateName: $stateName, subdistrictId: $subdistrictId, locationLat: $locationLat, locationLon: $locationLon)';
}


}

/// @nodoc
abstract mixin class $LocationStoreCopyWith<$Res>  {
  factory $LocationStoreCopyWith(LocationStore value, $Res Function(LocationStore) _then) = _$LocationStoreCopyWithImpl;
@useResult
$Res call({
 String? address, String? postalCode, int? cityId, String? cityName, String? countryId, String? countryName, int? stateId, String? stateName, int? subdistrictId, String? locationLat, String? locationLon
});




}
/// @nodoc
class _$LocationStoreCopyWithImpl<$Res>
    implements $LocationStoreCopyWith<$Res> {
  _$LocationStoreCopyWithImpl(this._self, this._then);

  final LocationStore _self;
  final $Res Function(LocationStore) _then;

/// Create a copy of LocationStore
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? postalCode = freezed,Object? cityId = freezed,Object? cityName = freezed,Object? countryId = freezed,Object? countryName = freezed,Object? stateId = freezed,Object? stateName = freezed,Object? subdistrictId = freezed,Object? locationLat = freezed,Object? locationLon = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,stateId: freezed == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,subdistrictId: freezed == subdistrictId ? _self.subdistrictId : subdistrictId // ignore: cast_nullable_to_non_nullable
as int?,locationLat: freezed == locationLat ? _self.locationLat : locationLat // ignore: cast_nullable_to_non_nullable
as String?,locationLon: freezed == locationLon ? _self.locationLon : locationLon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationStore].
extension LocationStorePatterns on LocationStore {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationStore value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationStore() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationStore value)  $default,){
final _that = this;
switch (_that) {
case _LocationStore():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationStore value)?  $default,){
final _that = this;
switch (_that) {
case _LocationStore() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? address,  String? postalCode,  int? cityId,  String? cityName,  String? countryId,  String? countryName,  int? stateId,  String? stateName,  int? subdistrictId,  String? locationLat,  String? locationLon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationStore() when $default != null:
return $default(_that.address,_that.postalCode,_that.cityId,_that.cityName,_that.countryId,_that.countryName,_that.stateId,_that.stateName,_that.subdistrictId,_that.locationLat,_that.locationLon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? address,  String? postalCode,  int? cityId,  String? cityName,  String? countryId,  String? countryName,  int? stateId,  String? stateName,  int? subdistrictId,  String? locationLat,  String? locationLon)  $default,) {final _that = this;
switch (_that) {
case _LocationStore():
return $default(_that.address,_that.postalCode,_that.cityId,_that.cityName,_that.countryId,_that.countryName,_that.stateId,_that.stateName,_that.subdistrictId,_that.locationLat,_that.locationLon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? address,  String? postalCode,  int? cityId,  String? cityName,  String? countryId,  String? countryName,  int? stateId,  String? stateName,  int? subdistrictId,  String? locationLat,  String? locationLon)?  $default,) {final _that = this;
switch (_that) {
case _LocationStore() when $default != null:
return $default(_that.address,_that.postalCode,_that.cityId,_that.cityName,_that.countryId,_that.countryName,_that.stateId,_that.stateName,_that.subdistrictId,_that.locationLat,_that.locationLon);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LocationStore implements LocationStore {
  const _LocationStore({this.address, this.postalCode, this.cityId, this.cityName, this.countryId, this.countryName, this.stateId, this.stateName, this.subdistrictId, this.locationLat, this.locationLon});
  factory _LocationStore.fromJson(Map<String, dynamic> json) => _$LocationStoreFromJson(json);

@override final  String? address;
@override final  String? postalCode;
@override final  int? cityId;
@override final  String? cityName;
@override final  String? countryId;
@override final  String? countryName;
@override final  int? stateId;
@override final  String? stateName;
@override final  int? subdistrictId;
@override final  String? locationLat;
@override final  String? locationLon;

/// Create a copy of LocationStore
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationStoreCopyWith<_LocationStore> get copyWith => __$LocationStoreCopyWithImpl<_LocationStore>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationStoreToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationStore&&(identical(other.address, address) || other.address == address)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.countryName, countryName) || other.countryName == countryName)&&(identical(other.stateId, stateId) || other.stateId == stateId)&&(identical(other.stateName, stateName) || other.stateName == stateName)&&(identical(other.subdistrictId, subdistrictId) || other.subdistrictId == subdistrictId)&&(identical(other.locationLat, locationLat) || other.locationLat == locationLat)&&(identical(other.locationLon, locationLon) || other.locationLon == locationLon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,postalCode,cityId,cityName,countryId,countryName,stateId,stateName,subdistrictId,locationLat,locationLon);

@override
String toString() {
  return 'LocationStore(address: $address, postalCode: $postalCode, cityId: $cityId, cityName: $cityName, countryId: $countryId, countryName: $countryName, stateId: $stateId, stateName: $stateName, subdistrictId: $subdistrictId, locationLat: $locationLat, locationLon: $locationLon)';
}


}

/// @nodoc
abstract mixin class _$LocationStoreCopyWith<$Res> implements $LocationStoreCopyWith<$Res> {
  factory _$LocationStoreCopyWith(_LocationStore value, $Res Function(_LocationStore) _then) = __$LocationStoreCopyWithImpl;
@override @useResult
$Res call({
 String? address, String? postalCode, int? cityId, String? cityName, String? countryId, String? countryName, int? stateId, String? stateName, int? subdistrictId, String? locationLat, String? locationLon
});




}
/// @nodoc
class __$LocationStoreCopyWithImpl<$Res>
    implements _$LocationStoreCopyWith<$Res> {
  __$LocationStoreCopyWithImpl(this._self, this._then);

  final _LocationStore _self;
  final $Res Function(_LocationStore) _then;

/// Create a copy of LocationStore
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? postalCode = freezed,Object? cityId = freezed,Object? cityName = freezed,Object? countryId = freezed,Object? countryName = freezed,Object? stateId = freezed,Object? stateName = freezed,Object? subdistrictId = freezed,Object? locationLat = freezed,Object? locationLon = freezed,}) {
  return _then(_LocationStore(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,postalCode: freezed == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,countryId: freezed == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String?,countryName: freezed == countryName ? _self.countryName : countryName // ignore: cast_nullable_to_non_nullable
as String?,stateId: freezed == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int?,stateName: freezed == stateName ? _self.stateName : stateName // ignore: cast_nullable_to_non_nullable
as String?,subdistrictId: freezed == subdistrictId ? _self.subdistrictId : subdistrictId // ignore: cast_nullable_to_non_nullable
as int?,locationLat: freezed == locationLat ? _self.locationLat : locationLat // ignore: cast_nullable_to_non_nullable
as String?,locationLon: freezed == locationLon ? _self.locationLon : locationLon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Chat {

 String? get chatBbm; String? get chatKakao; String? get chatLine; String? get chatSkype; String? get chatWhatsapp; String? get chatWechat; String? get chatWidget; List<dynamic>? get chatYms;
/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ChatCopyWith<Chat> get copyWith => _$ChatCopyWithImpl<Chat>(this as Chat, _$identity);

  /// Serializes this Chat to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Chat&&(identical(other.chatBbm, chatBbm) || other.chatBbm == chatBbm)&&(identical(other.chatKakao, chatKakao) || other.chatKakao == chatKakao)&&(identical(other.chatLine, chatLine) || other.chatLine == chatLine)&&(identical(other.chatSkype, chatSkype) || other.chatSkype == chatSkype)&&(identical(other.chatWhatsapp, chatWhatsapp) || other.chatWhatsapp == chatWhatsapp)&&(identical(other.chatWechat, chatWechat) || other.chatWechat == chatWechat)&&(identical(other.chatWidget, chatWidget) || other.chatWidget == chatWidget)&&const DeepCollectionEquality().equals(other.chatYms, chatYms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatBbm,chatKakao,chatLine,chatSkype,chatWhatsapp,chatWechat,chatWidget,const DeepCollectionEquality().hash(chatYms));

@override
String toString() {
  return 'Chat(chatBbm: $chatBbm, chatKakao: $chatKakao, chatLine: $chatLine, chatSkype: $chatSkype, chatWhatsapp: $chatWhatsapp, chatWechat: $chatWechat, chatWidget: $chatWidget, chatYms: $chatYms)';
}


}

/// @nodoc
abstract mixin class $ChatCopyWith<$Res>  {
  factory $ChatCopyWith(Chat value, $Res Function(Chat) _then) = _$ChatCopyWithImpl;
@useResult
$Res call({
 String? chatBbm, String? chatKakao, String? chatLine, String? chatSkype, String? chatWhatsapp, String? chatWechat, String? chatWidget, List<dynamic>? chatYms
});




}
/// @nodoc
class _$ChatCopyWithImpl<$Res>
    implements $ChatCopyWith<$Res> {
  _$ChatCopyWithImpl(this._self, this._then);

  final Chat _self;
  final $Res Function(Chat) _then;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? chatBbm = freezed,Object? chatKakao = freezed,Object? chatLine = freezed,Object? chatSkype = freezed,Object? chatWhatsapp = freezed,Object? chatWechat = freezed,Object? chatWidget = freezed,Object? chatYms = freezed,}) {
  return _then(_self.copyWith(
chatBbm: freezed == chatBbm ? _self.chatBbm : chatBbm // ignore: cast_nullable_to_non_nullable
as String?,chatKakao: freezed == chatKakao ? _self.chatKakao : chatKakao // ignore: cast_nullable_to_non_nullable
as String?,chatLine: freezed == chatLine ? _self.chatLine : chatLine // ignore: cast_nullable_to_non_nullable
as String?,chatSkype: freezed == chatSkype ? _self.chatSkype : chatSkype // ignore: cast_nullable_to_non_nullable
as String?,chatWhatsapp: freezed == chatWhatsapp ? _self.chatWhatsapp : chatWhatsapp // ignore: cast_nullable_to_non_nullable
as String?,chatWechat: freezed == chatWechat ? _self.chatWechat : chatWechat // ignore: cast_nullable_to_non_nullable
as String?,chatWidget: freezed == chatWidget ? _self.chatWidget : chatWidget // ignore: cast_nullable_to_non_nullable
as String?,chatYms: freezed == chatYms ? _self.chatYms : chatYms // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}

}


/// Adds pattern-matching-related methods to [Chat].
extension ChatPatterns on Chat {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Chat value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Chat value)  $default,){
final _that = this;
switch (_that) {
case _Chat():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Chat value)?  $default,){
final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? chatBbm,  String? chatKakao,  String? chatLine,  String? chatSkype,  String? chatWhatsapp,  String? chatWechat,  String? chatWidget,  List<dynamic>? chatYms)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that.chatBbm,_that.chatKakao,_that.chatLine,_that.chatSkype,_that.chatWhatsapp,_that.chatWechat,_that.chatWidget,_that.chatYms);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? chatBbm,  String? chatKakao,  String? chatLine,  String? chatSkype,  String? chatWhatsapp,  String? chatWechat,  String? chatWidget,  List<dynamic>? chatYms)  $default,) {final _that = this;
switch (_that) {
case _Chat():
return $default(_that.chatBbm,_that.chatKakao,_that.chatLine,_that.chatSkype,_that.chatWhatsapp,_that.chatWechat,_that.chatWidget,_that.chatYms);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? chatBbm,  String? chatKakao,  String? chatLine,  String? chatSkype,  String? chatWhatsapp,  String? chatWechat,  String? chatWidget,  List<dynamic>? chatYms)?  $default,) {final _that = this;
switch (_that) {
case _Chat() when $default != null:
return $default(_that.chatBbm,_that.chatKakao,_that.chatLine,_that.chatSkype,_that.chatWhatsapp,_that.chatWechat,_that.chatWidget,_that.chatYms);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Chat implements Chat {
  const _Chat({this.chatBbm, this.chatKakao, this.chatLine, this.chatSkype, this.chatWhatsapp, this.chatWechat, this.chatWidget, final  List<dynamic>? chatYms}): _chatYms = chatYms;
  factory _Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

@override final  String? chatBbm;
@override final  String? chatKakao;
@override final  String? chatLine;
@override final  String? chatSkype;
@override final  String? chatWhatsapp;
@override final  String? chatWechat;
@override final  String? chatWidget;
 final  List<dynamic>? _chatYms;
@override List<dynamic>? get chatYms {
  final value = _chatYms;
  if (value == null) return null;
  if (_chatYms is EqualUnmodifiableListView) return _chatYms;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ChatCopyWith<_Chat> get copyWith => __$ChatCopyWithImpl<_Chat>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ChatToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Chat&&(identical(other.chatBbm, chatBbm) || other.chatBbm == chatBbm)&&(identical(other.chatKakao, chatKakao) || other.chatKakao == chatKakao)&&(identical(other.chatLine, chatLine) || other.chatLine == chatLine)&&(identical(other.chatSkype, chatSkype) || other.chatSkype == chatSkype)&&(identical(other.chatWhatsapp, chatWhatsapp) || other.chatWhatsapp == chatWhatsapp)&&(identical(other.chatWechat, chatWechat) || other.chatWechat == chatWechat)&&(identical(other.chatWidget, chatWidget) || other.chatWidget == chatWidget)&&const DeepCollectionEquality().equals(other._chatYms, _chatYms));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,chatBbm,chatKakao,chatLine,chatSkype,chatWhatsapp,chatWechat,chatWidget,const DeepCollectionEquality().hash(_chatYms));

@override
String toString() {
  return 'Chat(chatBbm: $chatBbm, chatKakao: $chatKakao, chatLine: $chatLine, chatSkype: $chatSkype, chatWhatsapp: $chatWhatsapp, chatWechat: $chatWechat, chatWidget: $chatWidget, chatYms: $chatYms)';
}


}

/// @nodoc
abstract mixin class _$ChatCopyWith<$Res> implements $ChatCopyWith<$Res> {
  factory _$ChatCopyWith(_Chat value, $Res Function(_Chat) _then) = __$ChatCopyWithImpl;
@override @useResult
$Res call({
 String? chatBbm, String? chatKakao, String? chatLine, String? chatSkype, String? chatWhatsapp, String? chatWechat, String? chatWidget, List<dynamic>? chatYms
});




}
/// @nodoc
class __$ChatCopyWithImpl<$Res>
    implements _$ChatCopyWith<$Res> {
  __$ChatCopyWithImpl(this._self, this._then);

  final _Chat _self;
  final $Res Function(_Chat) _then;

/// Create a copy of Chat
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? chatBbm = freezed,Object? chatKakao = freezed,Object? chatLine = freezed,Object? chatSkype = freezed,Object? chatWhatsapp = freezed,Object? chatWechat = freezed,Object? chatWidget = freezed,Object? chatYms = freezed,}) {
  return _then(_Chat(
chatBbm: freezed == chatBbm ? _self.chatBbm : chatBbm // ignore: cast_nullable_to_non_nullable
as String?,chatKakao: freezed == chatKakao ? _self.chatKakao : chatKakao // ignore: cast_nullable_to_non_nullable
as String?,chatLine: freezed == chatLine ? _self.chatLine : chatLine // ignore: cast_nullable_to_non_nullable
as String?,chatSkype: freezed == chatSkype ? _self.chatSkype : chatSkype // ignore: cast_nullable_to_non_nullable
as String?,chatWhatsapp: freezed == chatWhatsapp ? _self.chatWhatsapp : chatWhatsapp // ignore: cast_nullable_to_non_nullable
as String?,chatWechat: freezed == chatWechat ? _self.chatWechat : chatWechat // ignore: cast_nullable_to_non_nullable
as String?,chatWidget: freezed == chatWidget ? _self.chatWidget : chatWidget // ignore: cast_nullable_to_non_nullable
as String?,chatYms: freezed == chatYms ? _self._chatYms : chatYms // ignore: cast_nullable_to_non_nullable
as List<dynamic>?,
  ));
}


}


/// @nodoc
mixin _$Links {

 String? get linkAndroidApp; String? get linkWeChat; String? get linkFacebook; String? get linkGoogleplus; String? get linkInstagram; String? get linkIosApp; String? get linkPinterest; String? get linkTumbler; String? get linkTwitter; String? get linkVimeo; String? get linkYoutube; String? get linkBlog;
/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LinksCopyWith<Links> get copyWith => _$LinksCopyWithImpl<Links>(this as Links, _$identity);

  /// Serializes this Links to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Links&&(identical(other.linkAndroidApp, linkAndroidApp) || other.linkAndroidApp == linkAndroidApp)&&(identical(other.linkWeChat, linkWeChat) || other.linkWeChat == linkWeChat)&&(identical(other.linkFacebook, linkFacebook) || other.linkFacebook == linkFacebook)&&(identical(other.linkGoogleplus, linkGoogleplus) || other.linkGoogleplus == linkGoogleplus)&&(identical(other.linkInstagram, linkInstagram) || other.linkInstagram == linkInstagram)&&(identical(other.linkIosApp, linkIosApp) || other.linkIosApp == linkIosApp)&&(identical(other.linkPinterest, linkPinterest) || other.linkPinterest == linkPinterest)&&(identical(other.linkTumbler, linkTumbler) || other.linkTumbler == linkTumbler)&&(identical(other.linkTwitter, linkTwitter) || other.linkTwitter == linkTwitter)&&(identical(other.linkVimeo, linkVimeo) || other.linkVimeo == linkVimeo)&&(identical(other.linkYoutube, linkYoutube) || other.linkYoutube == linkYoutube)&&(identical(other.linkBlog, linkBlog) || other.linkBlog == linkBlog));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,linkAndroidApp,linkWeChat,linkFacebook,linkGoogleplus,linkInstagram,linkIosApp,linkPinterest,linkTumbler,linkTwitter,linkVimeo,linkYoutube,linkBlog);

@override
String toString() {
  return 'Links(linkAndroidApp: $linkAndroidApp, linkWeChat: $linkWeChat, linkFacebook: $linkFacebook, linkGoogleplus: $linkGoogleplus, linkInstagram: $linkInstagram, linkIosApp: $linkIosApp, linkPinterest: $linkPinterest, linkTumbler: $linkTumbler, linkTwitter: $linkTwitter, linkVimeo: $linkVimeo, linkYoutube: $linkYoutube, linkBlog: $linkBlog)';
}


}

/// @nodoc
abstract mixin class $LinksCopyWith<$Res>  {
  factory $LinksCopyWith(Links value, $Res Function(Links) _then) = _$LinksCopyWithImpl;
@useResult
$Res call({
 String? linkAndroidApp, String? linkWeChat, String? linkFacebook, String? linkGoogleplus, String? linkInstagram, String? linkIosApp, String? linkPinterest, String? linkTumbler, String? linkTwitter, String? linkVimeo, String? linkYoutube, String? linkBlog
});




}
/// @nodoc
class _$LinksCopyWithImpl<$Res>
    implements $LinksCopyWith<$Res> {
  _$LinksCopyWithImpl(this._self, this._then);

  final Links _self;
  final $Res Function(Links) _then;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? linkAndroidApp = freezed,Object? linkWeChat = freezed,Object? linkFacebook = freezed,Object? linkGoogleplus = freezed,Object? linkInstagram = freezed,Object? linkIosApp = freezed,Object? linkPinterest = freezed,Object? linkTumbler = freezed,Object? linkTwitter = freezed,Object? linkVimeo = freezed,Object? linkYoutube = freezed,Object? linkBlog = freezed,}) {
  return _then(_self.copyWith(
linkAndroidApp: freezed == linkAndroidApp ? _self.linkAndroidApp : linkAndroidApp // ignore: cast_nullable_to_non_nullable
as String?,linkWeChat: freezed == linkWeChat ? _self.linkWeChat : linkWeChat // ignore: cast_nullable_to_non_nullable
as String?,linkFacebook: freezed == linkFacebook ? _self.linkFacebook : linkFacebook // ignore: cast_nullable_to_non_nullable
as String?,linkGoogleplus: freezed == linkGoogleplus ? _self.linkGoogleplus : linkGoogleplus // ignore: cast_nullable_to_non_nullable
as String?,linkInstagram: freezed == linkInstagram ? _self.linkInstagram : linkInstagram // ignore: cast_nullable_to_non_nullable
as String?,linkIosApp: freezed == linkIosApp ? _self.linkIosApp : linkIosApp // ignore: cast_nullable_to_non_nullable
as String?,linkPinterest: freezed == linkPinterest ? _self.linkPinterest : linkPinterest // ignore: cast_nullable_to_non_nullable
as String?,linkTumbler: freezed == linkTumbler ? _self.linkTumbler : linkTumbler // ignore: cast_nullable_to_non_nullable
as String?,linkTwitter: freezed == linkTwitter ? _self.linkTwitter : linkTwitter // ignore: cast_nullable_to_non_nullable
as String?,linkVimeo: freezed == linkVimeo ? _self.linkVimeo : linkVimeo // ignore: cast_nullable_to_non_nullable
as String?,linkYoutube: freezed == linkYoutube ? _self.linkYoutube : linkYoutube // ignore: cast_nullable_to_non_nullable
as String?,linkBlog: freezed == linkBlog ? _self.linkBlog : linkBlog // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Links].
extension LinksPatterns on Links {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Links value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Links value)  $default,){
final _that = this;
switch (_that) {
case _Links():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Links value)?  $default,){
final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? linkAndroidApp,  String? linkWeChat,  String? linkFacebook,  String? linkGoogleplus,  String? linkInstagram,  String? linkIosApp,  String? linkPinterest,  String? linkTumbler,  String? linkTwitter,  String? linkVimeo,  String? linkYoutube,  String? linkBlog)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that.linkAndroidApp,_that.linkWeChat,_that.linkFacebook,_that.linkGoogleplus,_that.linkInstagram,_that.linkIosApp,_that.linkPinterest,_that.linkTumbler,_that.linkTwitter,_that.linkVimeo,_that.linkYoutube,_that.linkBlog);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? linkAndroidApp,  String? linkWeChat,  String? linkFacebook,  String? linkGoogleplus,  String? linkInstagram,  String? linkIosApp,  String? linkPinterest,  String? linkTumbler,  String? linkTwitter,  String? linkVimeo,  String? linkYoutube,  String? linkBlog)  $default,) {final _that = this;
switch (_that) {
case _Links():
return $default(_that.linkAndroidApp,_that.linkWeChat,_that.linkFacebook,_that.linkGoogleplus,_that.linkInstagram,_that.linkIosApp,_that.linkPinterest,_that.linkTumbler,_that.linkTwitter,_that.linkVimeo,_that.linkYoutube,_that.linkBlog);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? linkAndroidApp,  String? linkWeChat,  String? linkFacebook,  String? linkGoogleplus,  String? linkInstagram,  String? linkIosApp,  String? linkPinterest,  String? linkTumbler,  String? linkTwitter,  String? linkVimeo,  String? linkYoutube,  String? linkBlog)?  $default,) {final _that = this;
switch (_that) {
case _Links() when $default != null:
return $default(_that.linkAndroidApp,_that.linkWeChat,_that.linkFacebook,_that.linkGoogleplus,_that.linkInstagram,_that.linkIosApp,_that.linkPinterest,_that.linkTumbler,_that.linkTwitter,_that.linkVimeo,_that.linkYoutube,_that.linkBlog);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Links implements Links {
  const _Links({this.linkAndroidApp, this.linkWeChat, this.linkFacebook, this.linkGoogleplus, this.linkInstagram, this.linkIosApp, this.linkPinterest, this.linkTumbler, this.linkTwitter, this.linkVimeo, this.linkYoutube, this.linkBlog});
  factory _Links.fromJson(Map<String, dynamic> json) => _$LinksFromJson(json);

@override final  String? linkAndroidApp;
@override final  String? linkWeChat;
@override final  String? linkFacebook;
@override final  String? linkGoogleplus;
@override final  String? linkInstagram;
@override final  String? linkIosApp;
@override final  String? linkPinterest;
@override final  String? linkTumbler;
@override final  String? linkTwitter;
@override final  String? linkVimeo;
@override final  String? linkYoutube;
@override final  String? linkBlog;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LinksCopyWith<_Links> get copyWith => __$LinksCopyWithImpl<_Links>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LinksToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Links&&(identical(other.linkAndroidApp, linkAndroidApp) || other.linkAndroidApp == linkAndroidApp)&&(identical(other.linkWeChat, linkWeChat) || other.linkWeChat == linkWeChat)&&(identical(other.linkFacebook, linkFacebook) || other.linkFacebook == linkFacebook)&&(identical(other.linkGoogleplus, linkGoogleplus) || other.linkGoogleplus == linkGoogleplus)&&(identical(other.linkInstagram, linkInstagram) || other.linkInstagram == linkInstagram)&&(identical(other.linkIosApp, linkIosApp) || other.linkIosApp == linkIosApp)&&(identical(other.linkPinterest, linkPinterest) || other.linkPinterest == linkPinterest)&&(identical(other.linkTumbler, linkTumbler) || other.linkTumbler == linkTumbler)&&(identical(other.linkTwitter, linkTwitter) || other.linkTwitter == linkTwitter)&&(identical(other.linkVimeo, linkVimeo) || other.linkVimeo == linkVimeo)&&(identical(other.linkYoutube, linkYoutube) || other.linkYoutube == linkYoutube)&&(identical(other.linkBlog, linkBlog) || other.linkBlog == linkBlog));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,linkAndroidApp,linkWeChat,linkFacebook,linkGoogleplus,linkInstagram,linkIosApp,linkPinterest,linkTumbler,linkTwitter,linkVimeo,linkYoutube,linkBlog);

@override
String toString() {
  return 'Links(linkAndroidApp: $linkAndroidApp, linkWeChat: $linkWeChat, linkFacebook: $linkFacebook, linkGoogleplus: $linkGoogleplus, linkInstagram: $linkInstagram, linkIosApp: $linkIosApp, linkPinterest: $linkPinterest, linkTumbler: $linkTumbler, linkTwitter: $linkTwitter, linkVimeo: $linkVimeo, linkYoutube: $linkYoutube, linkBlog: $linkBlog)';
}


}

/// @nodoc
abstract mixin class _$LinksCopyWith<$Res> implements $LinksCopyWith<$Res> {
  factory _$LinksCopyWith(_Links value, $Res Function(_Links) _then) = __$LinksCopyWithImpl;
@override @useResult
$Res call({
 String? linkAndroidApp, String? linkWeChat, String? linkFacebook, String? linkGoogleplus, String? linkInstagram, String? linkIosApp, String? linkPinterest, String? linkTumbler, String? linkTwitter, String? linkVimeo, String? linkYoutube, String? linkBlog
});




}
/// @nodoc
class __$LinksCopyWithImpl<$Res>
    implements _$LinksCopyWith<$Res> {
  __$LinksCopyWithImpl(this._self, this._then);

  final _Links _self;
  final $Res Function(_Links) _then;

/// Create a copy of Links
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? linkAndroidApp = freezed,Object? linkWeChat = freezed,Object? linkFacebook = freezed,Object? linkGoogleplus = freezed,Object? linkInstagram = freezed,Object? linkIosApp = freezed,Object? linkPinterest = freezed,Object? linkTumbler = freezed,Object? linkTwitter = freezed,Object? linkVimeo = freezed,Object? linkYoutube = freezed,Object? linkBlog = freezed,}) {
  return _then(_Links(
linkAndroidApp: freezed == linkAndroidApp ? _self.linkAndroidApp : linkAndroidApp // ignore: cast_nullable_to_non_nullable
as String?,linkWeChat: freezed == linkWeChat ? _self.linkWeChat : linkWeChat // ignore: cast_nullable_to_non_nullable
as String?,linkFacebook: freezed == linkFacebook ? _self.linkFacebook : linkFacebook // ignore: cast_nullable_to_non_nullable
as String?,linkGoogleplus: freezed == linkGoogleplus ? _self.linkGoogleplus : linkGoogleplus // ignore: cast_nullable_to_non_nullable
as String?,linkInstagram: freezed == linkInstagram ? _self.linkInstagram : linkInstagram // ignore: cast_nullable_to_non_nullable
as String?,linkIosApp: freezed == linkIosApp ? _self.linkIosApp : linkIosApp // ignore: cast_nullable_to_non_nullable
as String?,linkPinterest: freezed == linkPinterest ? _self.linkPinterest : linkPinterest // ignore: cast_nullable_to_non_nullable
as String?,linkTumbler: freezed == linkTumbler ? _self.linkTumbler : linkTumbler // ignore: cast_nullable_to_non_nullable
as String?,linkTwitter: freezed == linkTwitter ? _self.linkTwitter : linkTwitter // ignore: cast_nullable_to_non_nullable
as String?,linkVimeo: freezed == linkVimeo ? _self.linkVimeo : linkVimeo // ignore: cast_nullable_to_non_nullable
as String?,linkYoutube: freezed == linkYoutube ? _self.linkYoutube : linkYoutube // ignore: cast_nullable_to_non_nullable
as String?,linkBlog: freezed == linkBlog ? _self.linkBlog : linkBlog // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Currency {

 int? get decDigit; String? get decPoint; String? get id; String? get name; String? get thousandsSep;
/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrencyCopyWith<Currency> get copyWith => _$CurrencyCopyWithImpl<Currency>(this as Currency, _$identity);

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Currency&&(identical(other.decDigit, decDigit) || other.decDigit == decDigit)&&(identical(other.decPoint, decPoint) || other.decPoint == decPoint)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.thousandsSep, thousandsSep) || other.thousandsSep == thousandsSep));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,decDigit,decPoint,id,name,thousandsSep);

@override
String toString() {
  return 'Currency(decDigit: $decDigit, decPoint: $decPoint, id: $id, name: $name, thousandsSep: $thousandsSep)';
}


}

/// @nodoc
abstract mixin class $CurrencyCopyWith<$Res>  {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) _then) = _$CurrencyCopyWithImpl;
@useResult
$Res call({
 int? decDigit, String? decPoint, String? id, String? name, String? thousandsSep
});




}
/// @nodoc
class _$CurrencyCopyWithImpl<$Res>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._self, this._then);

  final Currency _self;
  final $Res Function(Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? decDigit = freezed,Object? decPoint = freezed,Object? id = freezed,Object? name = freezed,Object? thousandsSep = freezed,}) {
  return _then(_self.copyWith(
decDigit: freezed == decDigit ? _self.decDigit : decDigit // ignore: cast_nullable_to_non_nullable
as int?,decPoint: freezed == decPoint ? _self.decPoint : decPoint // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,thousandsSep: freezed == thousandsSep ? _self.thousandsSep : thousandsSep // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [Currency].
extension CurrencyPatterns on Currency {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Currency value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Currency value)  $default,){
final _that = this;
switch (_that) {
case _Currency():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Currency value)?  $default,){
final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? decDigit,  String? decPoint,  String? id,  String? name,  String? thousandsSep)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.decDigit,_that.decPoint,_that.id,_that.name,_that.thousandsSep);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? decDigit,  String? decPoint,  String? id,  String? name,  String? thousandsSep)  $default,) {final _that = this;
switch (_that) {
case _Currency():
return $default(_that.decDigit,_that.decPoint,_that.id,_that.name,_that.thousandsSep);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? decDigit,  String? decPoint,  String? id,  String? name,  String? thousandsSep)?  $default,) {final _that = this;
switch (_that) {
case _Currency() when $default != null:
return $default(_that.decDigit,_that.decPoint,_that.id,_that.name,_that.thousandsSep);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Currency implements Currency {
  const _Currency({this.decDigit, this.decPoint, this.id, this.name, this.thousandsSep});
  factory _Currency.fromJson(Map<String, dynamic> json) => _$CurrencyFromJson(json);

@override final  int? decDigit;
@override final  String? decPoint;
@override final  String? id;
@override final  String? name;
@override final  String? thousandsSep;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrencyCopyWith<_Currency> get copyWith => __$CurrencyCopyWithImpl<_Currency>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrencyToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Currency&&(identical(other.decDigit, decDigit) || other.decDigit == decDigit)&&(identical(other.decPoint, decPoint) || other.decPoint == decPoint)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.thousandsSep, thousandsSep) || other.thousandsSep == thousandsSep));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,decDigit,decPoint,id,name,thousandsSep);

@override
String toString() {
  return 'Currency(decDigit: $decDigit, decPoint: $decPoint, id: $id, name: $name, thousandsSep: $thousandsSep)';
}


}

/// @nodoc
abstract mixin class _$CurrencyCopyWith<$Res> implements $CurrencyCopyWith<$Res> {
  factory _$CurrencyCopyWith(_Currency value, $Res Function(_Currency) _then) = __$CurrencyCopyWithImpl;
@override @useResult
$Res call({
 int? decDigit, String? decPoint, String? id, String? name, String? thousandsSep
});




}
/// @nodoc
class __$CurrencyCopyWithImpl<$Res>
    implements _$CurrencyCopyWith<$Res> {
  __$CurrencyCopyWithImpl(this._self, this._then);

  final _Currency _self;
  final $Res Function(_Currency) _then;

/// Create a copy of Currency
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? decDigit = freezed,Object? decPoint = freezed,Object? id = freezed,Object? name = freezed,Object? thousandsSep = freezed,}) {
  return _then(_Currency(
decDigit: freezed == decDigit ? _self.decDigit : decDigit // ignore: cast_nullable_to_non_nullable
as int?,decPoint: freezed == decPoint ? _self.decPoint : decPoint // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,thousandsSep: freezed == thousandsSep ? _self.thousandsSep : thousandsSep // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$Setting {

 int? get allowCustomerViewStock; int? get allowQtyDecimal; int? get autoCancelOrderHour; int? get blockedCustomerRegistration; int? get checkoutWithoutRegister; String? get defaultCurrencyId; int? get disableCart; int? get dropShipEnabled; int? get inquiryMode; String? get langCode; String? get mobileSplashScreenBackground; int? get onlyInStoreCity; int? get signinRequired; int? get hasBranch;
/// Create a copy of Setting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingCopyWith<Setting> get copyWith => _$SettingCopyWithImpl<Setting>(this as Setting, _$identity);

  /// Serializes this Setting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Setting&&(identical(other.allowCustomerViewStock, allowCustomerViewStock) || other.allowCustomerViewStock == allowCustomerViewStock)&&(identical(other.allowQtyDecimal, allowQtyDecimal) || other.allowQtyDecimal == allowQtyDecimal)&&(identical(other.autoCancelOrderHour, autoCancelOrderHour) || other.autoCancelOrderHour == autoCancelOrderHour)&&(identical(other.blockedCustomerRegistration, blockedCustomerRegistration) || other.blockedCustomerRegistration == blockedCustomerRegistration)&&(identical(other.checkoutWithoutRegister, checkoutWithoutRegister) || other.checkoutWithoutRegister == checkoutWithoutRegister)&&(identical(other.defaultCurrencyId, defaultCurrencyId) || other.defaultCurrencyId == defaultCurrencyId)&&(identical(other.disableCart, disableCart) || other.disableCart == disableCart)&&(identical(other.dropShipEnabled, dropShipEnabled) || other.dropShipEnabled == dropShipEnabled)&&(identical(other.inquiryMode, inquiryMode) || other.inquiryMode == inquiryMode)&&(identical(other.langCode, langCode) || other.langCode == langCode)&&(identical(other.mobileSplashScreenBackground, mobileSplashScreenBackground) || other.mobileSplashScreenBackground == mobileSplashScreenBackground)&&(identical(other.onlyInStoreCity, onlyInStoreCity) || other.onlyInStoreCity == onlyInStoreCity)&&(identical(other.signinRequired, signinRequired) || other.signinRequired == signinRequired)&&(identical(other.hasBranch, hasBranch) || other.hasBranch == hasBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowCustomerViewStock,allowQtyDecimal,autoCancelOrderHour,blockedCustomerRegistration,checkoutWithoutRegister,defaultCurrencyId,disableCart,dropShipEnabled,inquiryMode,langCode,mobileSplashScreenBackground,onlyInStoreCity,signinRequired,hasBranch);

@override
String toString() {
  return 'Setting(allowCustomerViewStock: $allowCustomerViewStock, allowQtyDecimal: $allowQtyDecimal, autoCancelOrderHour: $autoCancelOrderHour, blockedCustomerRegistration: $blockedCustomerRegistration, checkoutWithoutRegister: $checkoutWithoutRegister, defaultCurrencyId: $defaultCurrencyId, disableCart: $disableCart, dropShipEnabled: $dropShipEnabled, inquiryMode: $inquiryMode, langCode: $langCode, mobileSplashScreenBackground: $mobileSplashScreenBackground, onlyInStoreCity: $onlyInStoreCity, signinRequired: $signinRequired, hasBranch: $hasBranch)';
}


}

/// @nodoc
abstract mixin class $SettingCopyWith<$Res>  {
  factory $SettingCopyWith(Setting value, $Res Function(Setting) _then) = _$SettingCopyWithImpl;
@useResult
$Res call({
 int? allowCustomerViewStock, int? allowQtyDecimal, int? autoCancelOrderHour, int? blockedCustomerRegistration, int? checkoutWithoutRegister, String? defaultCurrencyId, int? disableCart, int? dropShipEnabled, int? inquiryMode, String? langCode, String? mobileSplashScreenBackground, int? onlyInStoreCity, int? signinRequired, int? hasBranch
});




}
/// @nodoc
class _$SettingCopyWithImpl<$Res>
    implements $SettingCopyWith<$Res> {
  _$SettingCopyWithImpl(this._self, this._then);

  final Setting _self;
  final $Res Function(Setting) _then;

/// Create a copy of Setting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? allowCustomerViewStock = freezed,Object? allowQtyDecimal = freezed,Object? autoCancelOrderHour = freezed,Object? blockedCustomerRegistration = freezed,Object? checkoutWithoutRegister = freezed,Object? defaultCurrencyId = freezed,Object? disableCart = freezed,Object? dropShipEnabled = freezed,Object? inquiryMode = freezed,Object? langCode = freezed,Object? mobileSplashScreenBackground = freezed,Object? onlyInStoreCity = freezed,Object? signinRequired = freezed,Object? hasBranch = freezed,}) {
  return _then(_self.copyWith(
allowCustomerViewStock: freezed == allowCustomerViewStock ? _self.allowCustomerViewStock : allowCustomerViewStock // ignore: cast_nullable_to_non_nullable
as int?,allowQtyDecimal: freezed == allowQtyDecimal ? _self.allowQtyDecimal : allowQtyDecimal // ignore: cast_nullable_to_non_nullable
as int?,autoCancelOrderHour: freezed == autoCancelOrderHour ? _self.autoCancelOrderHour : autoCancelOrderHour // ignore: cast_nullable_to_non_nullable
as int?,blockedCustomerRegistration: freezed == blockedCustomerRegistration ? _self.blockedCustomerRegistration : blockedCustomerRegistration // ignore: cast_nullable_to_non_nullable
as int?,checkoutWithoutRegister: freezed == checkoutWithoutRegister ? _self.checkoutWithoutRegister : checkoutWithoutRegister // ignore: cast_nullable_to_non_nullable
as int?,defaultCurrencyId: freezed == defaultCurrencyId ? _self.defaultCurrencyId : defaultCurrencyId // ignore: cast_nullable_to_non_nullable
as String?,disableCart: freezed == disableCart ? _self.disableCart : disableCart // ignore: cast_nullable_to_non_nullable
as int?,dropShipEnabled: freezed == dropShipEnabled ? _self.dropShipEnabled : dropShipEnabled // ignore: cast_nullable_to_non_nullable
as int?,inquiryMode: freezed == inquiryMode ? _self.inquiryMode : inquiryMode // ignore: cast_nullable_to_non_nullable
as int?,langCode: freezed == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String?,mobileSplashScreenBackground: freezed == mobileSplashScreenBackground ? _self.mobileSplashScreenBackground : mobileSplashScreenBackground // ignore: cast_nullable_to_non_nullable
as String?,onlyInStoreCity: freezed == onlyInStoreCity ? _self.onlyInStoreCity : onlyInStoreCity // ignore: cast_nullable_to_non_nullable
as int?,signinRequired: freezed == signinRequired ? _self.signinRequired : signinRequired // ignore: cast_nullable_to_non_nullable
as int?,hasBranch: freezed == hasBranch ? _self.hasBranch : hasBranch // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [Setting].
extension SettingPatterns on Setting {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Setting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Setting() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Setting value)  $default,){
final _that = this;
switch (_that) {
case _Setting():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Setting value)?  $default,){
final _that = this;
switch (_that) {
case _Setting() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? allowCustomerViewStock,  int? allowQtyDecimal,  int? autoCancelOrderHour,  int? blockedCustomerRegistration,  int? checkoutWithoutRegister,  String? defaultCurrencyId,  int? disableCart,  int? dropShipEnabled,  int? inquiryMode,  String? langCode,  String? mobileSplashScreenBackground,  int? onlyInStoreCity,  int? signinRequired,  int? hasBranch)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Setting() when $default != null:
return $default(_that.allowCustomerViewStock,_that.allowQtyDecimal,_that.autoCancelOrderHour,_that.blockedCustomerRegistration,_that.checkoutWithoutRegister,_that.defaultCurrencyId,_that.disableCart,_that.dropShipEnabled,_that.inquiryMode,_that.langCode,_that.mobileSplashScreenBackground,_that.onlyInStoreCity,_that.signinRequired,_that.hasBranch);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? allowCustomerViewStock,  int? allowQtyDecimal,  int? autoCancelOrderHour,  int? blockedCustomerRegistration,  int? checkoutWithoutRegister,  String? defaultCurrencyId,  int? disableCart,  int? dropShipEnabled,  int? inquiryMode,  String? langCode,  String? mobileSplashScreenBackground,  int? onlyInStoreCity,  int? signinRequired,  int? hasBranch)  $default,) {final _that = this;
switch (_that) {
case _Setting():
return $default(_that.allowCustomerViewStock,_that.allowQtyDecimal,_that.autoCancelOrderHour,_that.blockedCustomerRegistration,_that.checkoutWithoutRegister,_that.defaultCurrencyId,_that.disableCart,_that.dropShipEnabled,_that.inquiryMode,_that.langCode,_that.mobileSplashScreenBackground,_that.onlyInStoreCity,_that.signinRequired,_that.hasBranch);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? allowCustomerViewStock,  int? allowQtyDecimal,  int? autoCancelOrderHour,  int? blockedCustomerRegistration,  int? checkoutWithoutRegister,  String? defaultCurrencyId,  int? disableCart,  int? dropShipEnabled,  int? inquiryMode,  String? langCode,  String? mobileSplashScreenBackground,  int? onlyInStoreCity,  int? signinRequired,  int? hasBranch)?  $default,) {final _that = this;
switch (_that) {
case _Setting() when $default != null:
return $default(_that.allowCustomerViewStock,_that.allowQtyDecimal,_that.autoCancelOrderHour,_that.blockedCustomerRegistration,_that.checkoutWithoutRegister,_that.defaultCurrencyId,_that.disableCart,_that.dropShipEnabled,_that.inquiryMode,_that.langCode,_that.mobileSplashScreenBackground,_that.onlyInStoreCity,_that.signinRequired,_that.hasBranch);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Setting implements Setting {
  const _Setting({this.allowCustomerViewStock, this.allowQtyDecimal, this.autoCancelOrderHour, this.blockedCustomerRegistration, this.checkoutWithoutRegister, this.defaultCurrencyId, this.disableCart, this.dropShipEnabled, this.inquiryMode, this.langCode, this.mobileSplashScreenBackground, this.onlyInStoreCity, this.signinRequired, this.hasBranch});
  factory _Setting.fromJson(Map<String, dynamic> json) => _$SettingFromJson(json);

@override final  int? allowCustomerViewStock;
@override final  int? allowQtyDecimal;
@override final  int? autoCancelOrderHour;
@override final  int? blockedCustomerRegistration;
@override final  int? checkoutWithoutRegister;
@override final  String? defaultCurrencyId;
@override final  int? disableCart;
@override final  int? dropShipEnabled;
@override final  int? inquiryMode;
@override final  String? langCode;
@override final  String? mobileSplashScreenBackground;
@override final  int? onlyInStoreCity;
@override final  int? signinRequired;
@override final  int? hasBranch;

/// Create a copy of Setting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingCopyWith<_Setting> get copyWith => __$SettingCopyWithImpl<_Setting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Setting&&(identical(other.allowCustomerViewStock, allowCustomerViewStock) || other.allowCustomerViewStock == allowCustomerViewStock)&&(identical(other.allowQtyDecimal, allowQtyDecimal) || other.allowQtyDecimal == allowQtyDecimal)&&(identical(other.autoCancelOrderHour, autoCancelOrderHour) || other.autoCancelOrderHour == autoCancelOrderHour)&&(identical(other.blockedCustomerRegistration, blockedCustomerRegistration) || other.blockedCustomerRegistration == blockedCustomerRegistration)&&(identical(other.checkoutWithoutRegister, checkoutWithoutRegister) || other.checkoutWithoutRegister == checkoutWithoutRegister)&&(identical(other.defaultCurrencyId, defaultCurrencyId) || other.defaultCurrencyId == defaultCurrencyId)&&(identical(other.disableCart, disableCart) || other.disableCart == disableCart)&&(identical(other.dropShipEnabled, dropShipEnabled) || other.dropShipEnabled == dropShipEnabled)&&(identical(other.inquiryMode, inquiryMode) || other.inquiryMode == inquiryMode)&&(identical(other.langCode, langCode) || other.langCode == langCode)&&(identical(other.mobileSplashScreenBackground, mobileSplashScreenBackground) || other.mobileSplashScreenBackground == mobileSplashScreenBackground)&&(identical(other.onlyInStoreCity, onlyInStoreCity) || other.onlyInStoreCity == onlyInStoreCity)&&(identical(other.signinRequired, signinRequired) || other.signinRequired == signinRequired)&&(identical(other.hasBranch, hasBranch) || other.hasBranch == hasBranch));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,allowCustomerViewStock,allowQtyDecimal,autoCancelOrderHour,blockedCustomerRegistration,checkoutWithoutRegister,defaultCurrencyId,disableCart,dropShipEnabled,inquiryMode,langCode,mobileSplashScreenBackground,onlyInStoreCity,signinRequired,hasBranch);

@override
String toString() {
  return 'Setting(allowCustomerViewStock: $allowCustomerViewStock, allowQtyDecimal: $allowQtyDecimal, autoCancelOrderHour: $autoCancelOrderHour, blockedCustomerRegistration: $blockedCustomerRegistration, checkoutWithoutRegister: $checkoutWithoutRegister, defaultCurrencyId: $defaultCurrencyId, disableCart: $disableCart, dropShipEnabled: $dropShipEnabled, inquiryMode: $inquiryMode, langCode: $langCode, mobileSplashScreenBackground: $mobileSplashScreenBackground, onlyInStoreCity: $onlyInStoreCity, signinRequired: $signinRequired, hasBranch: $hasBranch)';
}


}

/// @nodoc
abstract mixin class _$SettingCopyWith<$Res> implements $SettingCopyWith<$Res> {
  factory _$SettingCopyWith(_Setting value, $Res Function(_Setting) _then) = __$SettingCopyWithImpl;
@override @useResult
$Res call({
 int? allowCustomerViewStock, int? allowQtyDecimal, int? autoCancelOrderHour, int? blockedCustomerRegistration, int? checkoutWithoutRegister, String? defaultCurrencyId, int? disableCart, int? dropShipEnabled, int? inquiryMode, String? langCode, String? mobileSplashScreenBackground, int? onlyInStoreCity, int? signinRequired, int? hasBranch
});




}
/// @nodoc
class __$SettingCopyWithImpl<$Res>
    implements _$SettingCopyWith<$Res> {
  __$SettingCopyWithImpl(this._self, this._then);

  final _Setting _self;
  final $Res Function(_Setting) _then;

/// Create a copy of Setting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? allowCustomerViewStock = freezed,Object? allowQtyDecimal = freezed,Object? autoCancelOrderHour = freezed,Object? blockedCustomerRegistration = freezed,Object? checkoutWithoutRegister = freezed,Object? defaultCurrencyId = freezed,Object? disableCart = freezed,Object? dropShipEnabled = freezed,Object? inquiryMode = freezed,Object? langCode = freezed,Object? mobileSplashScreenBackground = freezed,Object? onlyInStoreCity = freezed,Object? signinRequired = freezed,Object? hasBranch = freezed,}) {
  return _then(_Setting(
allowCustomerViewStock: freezed == allowCustomerViewStock ? _self.allowCustomerViewStock : allowCustomerViewStock // ignore: cast_nullable_to_non_nullable
as int?,allowQtyDecimal: freezed == allowQtyDecimal ? _self.allowQtyDecimal : allowQtyDecimal // ignore: cast_nullable_to_non_nullable
as int?,autoCancelOrderHour: freezed == autoCancelOrderHour ? _self.autoCancelOrderHour : autoCancelOrderHour // ignore: cast_nullable_to_non_nullable
as int?,blockedCustomerRegistration: freezed == blockedCustomerRegistration ? _self.blockedCustomerRegistration : blockedCustomerRegistration // ignore: cast_nullable_to_non_nullable
as int?,checkoutWithoutRegister: freezed == checkoutWithoutRegister ? _self.checkoutWithoutRegister : checkoutWithoutRegister // ignore: cast_nullable_to_non_nullable
as int?,defaultCurrencyId: freezed == defaultCurrencyId ? _self.defaultCurrencyId : defaultCurrencyId // ignore: cast_nullable_to_non_nullable
as String?,disableCart: freezed == disableCart ? _self.disableCart : disableCart // ignore: cast_nullable_to_non_nullable
as int?,dropShipEnabled: freezed == dropShipEnabled ? _self.dropShipEnabled : dropShipEnabled // ignore: cast_nullable_to_non_nullable
as int?,inquiryMode: freezed == inquiryMode ? _self.inquiryMode : inquiryMode // ignore: cast_nullable_to_non_nullable
as int?,langCode: freezed == langCode ? _self.langCode : langCode // ignore: cast_nullable_to_non_nullable
as String?,mobileSplashScreenBackground: freezed == mobileSplashScreenBackground ? _self.mobileSplashScreenBackground : mobileSplashScreenBackground // ignore: cast_nullable_to_non_nullable
as String?,onlyInStoreCity: freezed == onlyInStoreCity ? _self.onlyInStoreCity : onlyInStoreCity // ignore: cast_nullable_to_non_nullable
as int?,signinRequired: freezed == signinRequired ? _self.signinRequired : signinRequired // ignore: cast_nullable_to_non_nullable
as int?,hasBranch: freezed == hasBranch ? _self.hasBranch : hasBranch // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}


/// @nodoc
mixin _$MobileSetting {

 bool get isCrm; bool get isShipper; bool get isDisableQris; bool get isSwitchVariant; bool get isFavorite; bool get isSelfPickup; bool get isGuestMode; bool get isHideShipping; bool get isHideWhitelabel;
/// Create a copy of MobileSetting
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MobileSettingCopyWith<MobileSetting> get copyWith => _$MobileSettingCopyWithImpl<MobileSetting>(this as MobileSetting, _$identity);

  /// Serializes this MobileSetting to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MobileSetting&&(identical(other.isCrm, isCrm) || other.isCrm == isCrm)&&(identical(other.isShipper, isShipper) || other.isShipper == isShipper)&&(identical(other.isDisableQris, isDisableQris) || other.isDisableQris == isDisableQris)&&(identical(other.isSwitchVariant, isSwitchVariant) || other.isSwitchVariant == isSwitchVariant)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.isSelfPickup, isSelfPickup) || other.isSelfPickup == isSelfPickup)&&(identical(other.isGuestMode, isGuestMode) || other.isGuestMode == isGuestMode)&&(identical(other.isHideShipping, isHideShipping) || other.isHideShipping == isHideShipping)&&(identical(other.isHideWhitelabel, isHideWhitelabel) || other.isHideWhitelabel == isHideWhitelabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isCrm,isShipper,isDisableQris,isSwitchVariant,isFavorite,isSelfPickup,isGuestMode,isHideShipping,isHideWhitelabel);

@override
String toString() {
  return 'MobileSetting(isCrm: $isCrm, isShipper: $isShipper, isDisableQris: $isDisableQris, isSwitchVariant: $isSwitchVariant, isFavorite: $isFavorite, isSelfPickup: $isSelfPickup, isGuestMode: $isGuestMode, isHideShipping: $isHideShipping, isHideWhitelabel: $isHideWhitelabel)';
}


}

/// @nodoc
abstract mixin class $MobileSettingCopyWith<$Res>  {
  factory $MobileSettingCopyWith(MobileSetting value, $Res Function(MobileSetting) _then) = _$MobileSettingCopyWithImpl;
@useResult
$Res call({
 bool isCrm, bool isShipper, bool isDisableQris, bool isSwitchVariant, bool isFavorite, bool isSelfPickup, bool isGuestMode, bool isHideShipping, bool isHideWhitelabel
});




}
/// @nodoc
class _$MobileSettingCopyWithImpl<$Res>
    implements $MobileSettingCopyWith<$Res> {
  _$MobileSettingCopyWithImpl(this._self, this._then);

  final MobileSetting _self;
  final $Res Function(MobileSetting) _then;

/// Create a copy of MobileSetting
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isCrm = null,Object? isShipper = null,Object? isDisableQris = null,Object? isSwitchVariant = null,Object? isFavorite = null,Object? isSelfPickup = null,Object? isGuestMode = null,Object? isHideShipping = null,Object? isHideWhitelabel = null,}) {
  return _then(_self.copyWith(
isCrm: null == isCrm ? _self.isCrm : isCrm // ignore: cast_nullable_to_non_nullable
as bool,isShipper: null == isShipper ? _self.isShipper : isShipper // ignore: cast_nullable_to_non_nullable
as bool,isDisableQris: null == isDisableQris ? _self.isDisableQris : isDisableQris // ignore: cast_nullable_to_non_nullable
as bool,isSwitchVariant: null == isSwitchVariant ? _self.isSwitchVariant : isSwitchVariant // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,isSelfPickup: null == isSelfPickup ? _self.isSelfPickup : isSelfPickup // ignore: cast_nullable_to_non_nullable
as bool,isGuestMode: null == isGuestMode ? _self.isGuestMode : isGuestMode // ignore: cast_nullable_to_non_nullable
as bool,isHideShipping: null == isHideShipping ? _self.isHideShipping : isHideShipping // ignore: cast_nullable_to_non_nullable
as bool,isHideWhitelabel: null == isHideWhitelabel ? _self.isHideWhitelabel : isHideWhitelabel // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MobileSetting].
extension MobileSettingPatterns on MobileSetting {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MobileSetting value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MobileSetting() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MobileSetting value)  $default,){
final _that = this;
switch (_that) {
case _MobileSetting():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MobileSetting value)?  $default,){
final _that = this;
switch (_that) {
case _MobileSetting() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isCrm,  bool isShipper,  bool isDisableQris,  bool isSwitchVariant,  bool isFavorite,  bool isSelfPickup,  bool isGuestMode,  bool isHideShipping,  bool isHideWhitelabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MobileSetting() when $default != null:
return $default(_that.isCrm,_that.isShipper,_that.isDisableQris,_that.isSwitchVariant,_that.isFavorite,_that.isSelfPickup,_that.isGuestMode,_that.isHideShipping,_that.isHideWhitelabel);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isCrm,  bool isShipper,  bool isDisableQris,  bool isSwitchVariant,  bool isFavorite,  bool isSelfPickup,  bool isGuestMode,  bool isHideShipping,  bool isHideWhitelabel)  $default,) {final _that = this;
switch (_that) {
case _MobileSetting():
return $default(_that.isCrm,_that.isShipper,_that.isDisableQris,_that.isSwitchVariant,_that.isFavorite,_that.isSelfPickup,_that.isGuestMode,_that.isHideShipping,_that.isHideWhitelabel);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isCrm,  bool isShipper,  bool isDisableQris,  bool isSwitchVariant,  bool isFavorite,  bool isSelfPickup,  bool isGuestMode,  bool isHideShipping,  bool isHideWhitelabel)?  $default,) {final _that = this;
switch (_that) {
case _MobileSetting() when $default != null:
return $default(_that.isCrm,_that.isShipper,_that.isDisableQris,_that.isSwitchVariant,_that.isFavorite,_that.isSelfPickup,_that.isGuestMode,_that.isHideShipping,_that.isHideWhitelabel);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MobileSetting implements MobileSetting {
  const _MobileSetting({this.isCrm = false, this.isShipper = false, this.isDisableQris = false, this.isSwitchVariant = false, this.isFavorite = false, this.isSelfPickup = false, this.isGuestMode = false, this.isHideShipping = false, this.isHideWhitelabel = false});
  factory _MobileSetting.fromJson(Map<String, dynamic> json) => _$MobileSettingFromJson(json);

@override@JsonKey() final  bool isCrm;
@override@JsonKey() final  bool isShipper;
@override@JsonKey() final  bool isDisableQris;
@override@JsonKey() final  bool isSwitchVariant;
@override@JsonKey() final  bool isFavorite;
@override@JsonKey() final  bool isSelfPickup;
@override@JsonKey() final  bool isGuestMode;
@override@JsonKey() final  bool isHideShipping;
@override@JsonKey() final  bool isHideWhitelabel;

/// Create a copy of MobileSetting
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MobileSettingCopyWith<_MobileSetting> get copyWith => __$MobileSettingCopyWithImpl<_MobileSetting>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MobileSettingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MobileSetting&&(identical(other.isCrm, isCrm) || other.isCrm == isCrm)&&(identical(other.isShipper, isShipper) || other.isShipper == isShipper)&&(identical(other.isDisableQris, isDisableQris) || other.isDisableQris == isDisableQris)&&(identical(other.isSwitchVariant, isSwitchVariant) || other.isSwitchVariant == isSwitchVariant)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.isSelfPickup, isSelfPickup) || other.isSelfPickup == isSelfPickup)&&(identical(other.isGuestMode, isGuestMode) || other.isGuestMode == isGuestMode)&&(identical(other.isHideShipping, isHideShipping) || other.isHideShipping == isHideShipping)&&(identical(other.isHideWhitelabel, isHideWhitelabel) || other.isHideWhitelabel == isHideWhitelabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isCrm,isShipper,isDisableQris,isSwitchVariant,isFavorite,isSelfPickup,isGuestMode,isHideShipping,isHideWhitelabel);

@override
String toString() {
  return 'MobileSetting(isCrm: $isCrm, isShipper: $isShipper, isDisableQris: $isDisableQris, isSwitchVariant: $isSwitchVariant, isFavorite: $isFavorite, isSelfPickup: $isSelfPickup, isGuestMode: $isGuestMode, isHideShipping: $isHideShipping, isHideWhitelabel: $isHideWhitelabel)';
}


}

/// @nodoc
abstract mixin class _$MobileSettingCopyWith<$Res> implements $MobileSettingCopyWith<$Res> {
  factory _$MobileSettingCopyWith(_MobileSetting value, $Res Function(_MobileSetting) _then) = __$MobileSettingCopyWithImpl;
@override @useResult
$Res call({
 bool isCrm, bool isShipper, bool isDisableQris, bool isSwitchVariant, bool isFavorite, bool isSelfPickup, bool isGuestMode, bool isHideShipping, bool isHideWhitelabel
});




}
/// @nodoc
class __$MobileSettingCopyWithImpl<$Res>
    implements _$MobileSettingCopyWith<$Res> {
  __$MobileSettingCopyWithImpl(this._self, this._then);

  final _MobileSetting _self;
  final $Res Function(_MobileSetting) _then;

/// Create a copy of MobileSetting
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isCrm = null,Object? isShipper = null,Object? isDisableQris = null,Object? isSwitchVariant = null,Object? isFavorite = null,Object? isSelfPickup = null,Object? isGuestMode = null,Object? isHideShipping = null,Object? isHideWhitelabel = null,}) {
  return _then(_MobileSetting(
isCrm: null == isCrm ? _self.isCrm : isCrm // ignore: cast_nullable_to_non_nullable
as bool,isShipper: null == isShipper ? _self.isShipper : isShipper // ignore: cast_nullable_to_non_nullable
as bool,isDisableQris: null == isDisableQris ? _self.isDisableQris : isDisableQris // ignore: cast_nullable_to_non_nullable
as bool,isSwitchVariant: null == isSwitchVariant ? _self.isSwitchVariant : isSwitchVariant // ignore: cast_nullable_to_non_nullable
as bool,isFavorite: null == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool,isSelfPickup: null == isSelfPickup ? _self.isSelfPickup : isSelfPickup // ignore: cast_nullable_to_non_nullable
as bool,isGuestMode: null == isGuestMode ? _self.isGuestMode : isGuestMode // ignore: cast_nullable_to_non_nullable
as bool,isHideShipping: null == isHideShipping ? _self.isHideShipping : isHideShipping // ignore: cast_nullable_to_non_nullable
as bool,isHideWhitelabel: null == isHideWhitelabel ? _self.isHideWhitelabel : isHideWhitelabel // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
