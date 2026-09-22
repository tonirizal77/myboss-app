// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_StoreModel _$StoreModelFromJson(Map<String, dynamic> json) => _StoreModel(
  address: json['address'] as String?,
  allowCustomerViewStock: (json['allow_customer_view_stock'] as num?)?.toInt(),
  allowQtyDecimal: (json['allow_qty_decimal'] as num?)?.toInt(),
  androidAppStatus: (json['android_app_status'] as num?)?.toInt(),
  appStatus: json['app_status'] == null
      ? null
      : AppStatus.fromJson(json['app_status'] as Map<String, dynamic>),
  autoCancelOrderHour: (json['auto_cancel_order_hour'] as num?)?.toInt(),
  blockedCustomerRegistration: (json['blocked_customer_registration'] as num?)
      ?.toInt(),
  chatBbm: json['chat_bbm'] as String?,
  chatKakao: json['chat_kakao'] as String?,
  chatLine: json['chat_line'] as String?,
  chatSkype: json['chat_skype'] as String?,
  chatWechat: json['chat_wechat'] as String?,
  chatWhatsapp: json['chat_whatsapp'] as String?,
  chatWidget: json['chat_widget'] as String?,
  chatYm: json['chat_ym'] as String?,
  checkoutWithoutRegister: (json['checkout_without_register'] as num?)?.toInt(),
  cityId: (json['city_id'] as num?)?.toInt(),
  cityName: json['city_name'] as String?,
  contact: json['contact'] == null
      ? null
      : Contact.fromJson(json['contact'] as Map<String, dynamic>),
  copyrightYear: json['copyright_year'] as String?,
  countryId: json['country_id'] as String?,
  countryName: json['country_name'] as String?,
  createdYear: json['created_year'] as String?,
  currency: json['currency'] == null
      ? null
      : Currency.fromJson(json['currency'] as Map<String, dynamic>),
  currencyId: json['currency_id'] as String?,
  currencyName: json['currency_name'] as String?,
  decDigit: (json['dec_digit'] as num?)?.toInt(),
  decPoint: json['dec_point'] as String?,
  defaultCurrencyId: json['default_currency_id'] as String?,
  disableCart: (json['disable_cart'] as num?)?.toInt(),
  dropShipEnabled: (json['drop_ship_enabled'] as num?)?.toInt(),
  email: json['email'] as String?,
  expiryDate: json['expiry_date'] as String?,
  extDomain: json['ext_domain'] as String?,
  favicon: json['favicon'] as String?,
  fbAppId: json['fb_app_id'] as String?,
  fbAppSecret: json['fb_app_secret'] as String?,
  gAnalytics: json['g_analytics'] as String?,
  header: json['header'] as List<dynamic>?,
  id: (json['id'] as num?)?.toInt(),
  inquiryMode: (json['inquiry_mode'] as num?)?.toInt(),
  iosAppStatus: (json['ios_app_status'] as num?)?.toInt(),
  isReseller: json['is_reseller'] as bool?,
  langCode: json['lang_code'] as String?,
  linkAndroidApp: json['link_android_app'] as String?,
  linkBlog: json['link_blog'] as String?,
  linkFacebook: json['link_facebook'] as String?,
  linkGoogleplus: json['link_googleplus'] as String?,
  linkInstagram: json['link_instagram'] as String?,
  linkIosApp: json['link_ios_app'] as String?,
  linkPinterest: json['link_pinterest'] as String?,
  linkTumblr: json['link_tumblr'] as String?,
  linkTwitter: json['link_twitter'] as String?,
  linkVimeo: json['link_vimeo'] as String?,
  linkYoutube: json['link_youtube'] as String?,
  locationLat: json['location_lat'] as String?,
  locationLon: json['location_lon'] as String?,
  logo: json['logo'] as String?,
  logoHeight: (json['logo_height'] as num?)?.toInt(),
  logoWidth: (json['logo_width'] as num?)?.toInt(),
  metaDescription: json['meta_description'] as String?,
  metaKeywords: json['meta_keywords'] as String?,
  mobileSetting: json['mobile_setting'] == null
      ? null
      : MobileSetting.fromJson(json['mobile_setting'] as Map<String, dynamic>),
  name: json['name'] as String?,
  olsWhitelabel: (json['ols_whitelabel'] as num?)?.toInt(),
  onlyInStoreCity: (json['only_in_store_city'] as num?)?.toInt(),
  parentStoreId: (json['parent_store_id'] as num?)?.toInt(),
  partnerId: (json['partner_id'] as num?)?.toInt(),
  phone1: json['phone1'] as String?,
  phone2: json['phone2'] as String?,
  phone3: json['phone3'] as String?,
  planTypeId: json['plan_type_id'] as String?,
  postalCode: json['postal_code'] as String?,
  poweredBy: json['powered_by'] as String?,
  remark: json['remark'] as String?,
  setting: json['setting'] == null
      ? null
      : Setting.fromJson(json['setting'] as Map<String, dynamic>),
  signinRequired: (json['signin_required'] as num?)?.toInt(),
  stateId: (json['state_id'] as num?)?.toInt(),
  stateName: json['state_name'] as String?,
  status: json['status'] as String?,
  storeStatus: (json['store_status'] as num?)?.toInt(),
  subdistrictId: (json['subdistrict_id'] as num?)?.toInt(),
  thousandsSep: json['thousands_sep'] as String?,
  urlId: json['url_id'] as String?,
);

Map<String, dynamic> _$StoreModelToJson(_StoreModel instance) =>
    <String, dynamic>{
      'address': instance.address,
      'allow_customer_view_stock': instance.allowCustomerViewStock,
      'allow_qty_decimal': instance.allowQtyDecimal,
      'android_app_status': instance.androidAppStatus,
      'app_status': instance.appStatus,
      'auto_cancel_order_hour': instance.autoCancelOrderHour,
      'blocked_customer_registration': instance.blockedCustomerRegistration,
      'chat_bbm': instance.chatBbm,
      'chat_kakao': instance.chatKakao,
      'chat_line': instance.chatLine,
      'chat_skype': instance.chatSkype,
      'chat_wechat': instance.chatWechat,
      'chat_whatsapp': instance.chatWhatsapp,
      'chat_widget': instance.chatWidget,
      'chat_ym': instance.chatYm,
      'checkout_without_register': instance.checkoutWithoutRegister,
      'city_id': instance.cityId,
      'city_name': instance.cityName,
      'contact': instance.contact,
      'copyright_year': instance.copyrightYear,
      'country_id': instance.countryId,
      'country_name': instance.countryName,
      'created_year': instance.createdYear,
      'currency': instance.currency,
      'currency_id': instance.currencyId,
      'currency_name': instance.currencyName,
      'dec_digit': instance.decDigit,
      'dec_point': instance.decPoint,
      'default_currency_id': instance.defaultCurrencyId,
      'disable_cart': instance.disableCart,
      'drop_ship_enabled': instance.dropShipEnabled,
      'email': instance.email,
      'expiry_date': instance.expiryDate,
      'ext_domain': instance.extDomain,
      'favicon': instance.favicon,
      'fb_app_id': instance.fbAppId,
      'fb_app_secret': instance.fbAppSecret,
      'g_analytics': instance.gAnalytics,
      'header': instance.header,
      'id': instance.id,
      'inquiry_mode': instance.inquiryMode,
      'ios_app_status': instance.iosAppStatus,
      'is_reseller': instance.isReseller,
      'lang_code': instance.langCode,
      'link_android_app': instance.linkAndroidApp,
      'link_blog': instance.linkBlog,
      'link_facebook': instance.linkFacebook,
      'link_googleplus': instance.linkGoogleplus,
      'link_instagram': instance.linkInstagram,
      'link_ios_app': instance.linkIosApp,
      'link_pinterest': instance.linkPinterest,
      'link_tumblr': instance.linkTumblr,
      'link_twitter': instance.linkTwitter,
      'link_vimeo': instance.linkVimeo,
      'link_youtube': instance.linkYoutube,
      'location_lat': instance.locationLat,
      'location_lon': instance.locationLon,
      'logo': instance.logo,
      'logo_height': instance.logoHeight,
      'logo_width': instance.logoWidth,
      'meta_description': instance.metaDescription,
      'meta_keywords': instance.metaKeywords,
      'mobile_setting': instance.mobileSetting,
      'name': instance.name,
      'ols_whitelabel': instance.olsWhitelabel,
      'only_in_store_city': instance.onlyInStoreCity,
      'parent_store_id': instance.parentStoreId,
      'partner_id': instance.partnerId,
      'phone1': instance.phone1,
      'phone2': instance.phone2,
      'phone3': instance.phone3,
      'plan_type_id': instance.planTypeId,
      'postal_code': instance.postalCode,
      'powered_by': instance.poweredBy,
      'remark': instance.remark,
      'setting': instance.setting,
      'signin_required': instance.signinRequired,
      'state_id': instance.stateId,
      'state_name': instance.stateName,
      'status': instance.status,
      'store_status': instance.storeStatus,
      'subdistrict_id': instance.subdistrictId,
      'thousands_sep': instance.thousandsSep,
      'url_id': instance.urlId,
    };

_AppStatus _$AppStatusFromJson(Map<String, dynamic> json) => _AppStatus(
  storeStatus: json['store_status'] as String?,
  androidAppStatus: json['android_app_status'] as String?,
  iosAppStatus: json['ios_app_status'] as String?,
);

Map<String, dynamic> _$AppStatusToJson(_AppStatus instance) =>
    <String, dynamic>{
      'store_status': instance.storeStatus,
      'android_app_status': instance.androidAppStatus,
      'ios_app_status': instance.iosAppStatus,
    };

_Contact _$ContactFromJson(Map<String, dynamic> json) => _Contact(
  location: json['location'] == null
      ? null
      : LocationStore.fromJson(json['location'] as Map<String, dynamic>),
  chat: json['chat'] == null
      ? null
      : Chat.fromJson(json['chat'] as Map<String, dynamic>),
  links: json['links'] == null
      ? null
      : Links.fromJson(json['links'] as Map<String, dynamic>),
  email: json['email'] as String?,
  phone: (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList(),
);

Map<String, dynamic> _$ContactToJson(_Contact instance) => <String, dynamic>{
  'location': instance.location,
  'chat': instance.chat,
  'links': instance.links,
  'email': instance.email,
  'phone': instance.phone,
};

_LocationStore _$LocationStoreFromJson(Map<String, dynamic> json) =>
    _LocationStore(
      address: json['address'] as String?,
      postalCode: json['postal_code'] as String?,
      cityId: (json['city_id'] as num?)?.toInt(),
      cityName: json['city_name'] as String?,
      countryId: json['country_id'] as String?,
      countryName: json['country_name'] as String?,
      stateId: (json['state_id'] as num?)?.toInt(),
      stateName: json['state_name'] as String?,
      subdistrictId: (json['subdistrict_id'] as num?)?.toInt(),
      locationLat: json['location_lat'] as String?,
      locationLon: json['location_lon'] as String?,
    );

Map<String, dynamic> _$LocationStoreToJson(_LocationStore instance) =>
    <String, dynamic>{
      'address': instance.address,
      'postal_code': instance.postalCode,
      'city_id': instance.cityId,
      'city_name': instance.cityName,
      'country_id': instance.countryId,
      'country_name': instance.countryName,
      'state_id': instance.stateId,
      'state_name': instance.stateName,
      'subdistrict_id': instance.subdistrictId,
      'location_lat': instance.locationLat,
      'location_lon': instance.locationLon,
    };

_Chat _$ChatFromJson(Map<String, dynamic> json) => _Chat(
  chatBbm: json['chat_bbm'] as String?,
  chatKakao: json['chat_kakao'] as String?,
  chatLine: json['chat_line'] as String?,
  chatSkype: json['chat_skype'] as String?,
  chatWhatsapp: json['chat_whatsapp'] as String?,
  chatWechat: json['chat_wechat'] as String?,
  chatWidget: json['chat_widget'] as String?,
  chatYms: json['chat_yms'] as List<dynamic>?,
);

Map<String, dynamic> _$ChatToJson(_Chat instance) => <String, dynamic>{
  'chat_bbm': instance.chatBbm,
  'chat_kakao': instance.chatKakao,
  'chat_line': instance.chatLine,
  'chat_skype': instance.chatSkype,
  'chat_whatsapp': instance.chatWhatsapp,
  'chat_wechat': instance.chatWechat,
  'chat_widget': instance.chatWidget,
  'chat_yms': instance.chatYms,
};

_Links _$LinksFromJson(Map<String, dynamic> json) => _Links(
  linkAndroidApp: json['link_android_app'] as String?,
  linkWeChat: json['link_we_chat'] as String?,
  linkFacebook: json['link_facebook'] as String?,
  linkGoogleplus: json['link_googleplus'] as String?,
  linkInstagram: json['link_instagram'] as String?,
  linkIosApp: json['link_ios_app'] as String?,
  linkPinterest: json['link_pinterest'] as String?,
  linkTumbler: json['link_tumbler'] as String?,
  linkTwitter: json['link_twitter'] as String?,
  linkVimeo: json['link_vimeo'] as String?,
  linkYoutube: json['link_youtube'] as String?,
  linkBlog: json['link_blog'] as String?,
);

Map<String, dynamic> _$LinksToJson(_Links instance) => <String, dynamic>{
  'link_android_app': instance.linkAndroidApp,
  'link_we_chat': instance.linkWeChat,
  'link_facebook': instance.linkFacebook,
  'link_googleplus': instance.linkGoogleplus,
  'link_instagram': instance.linkInstagram,
  'link_ios_app': instance.linkIosApp,
  'link_pinterest': instance.linkPinterest,
  'link_tumbler': instance.linkTumbler,
  'link_twitter': instance.linkTwitter,
  'link_vimeo': instance.linkVimeo,
  'link_youtube': instance.linkYoutube,
  'link_blog': instance.linkBlog,
};

_Currency _$CurrencyFromJson(Map<String, dynamic> json) => _Currency(
  decDigit: (json['dec_digit'] as num?)?.toInt(),
  decPoint: json['dec_point'] as String?,
  id: json['id'] as String?,
  name: json['name'] as String?,
  thousandsSep: json['thousands_sep'] as String?,
);

Map<String, dynamic> _$CurrencyToJson(_Currency instance) => <String, dynamic>{
  'dec_digit': instance.decDigit,
  'dec_point': instance.decPoint,
  'id': instance.id,
  'name': instance.name,
  'thousands_sep': instance.thousandsSep,
};

_Setting _$SettingFromJson(Map<String, dynamic> json) => _Setting(
  allowCustomerViewStock: (json['allow_customer_view_stock'] as num?)?.toInt(),
  allowQtyDecimal: (json['allow_qty_decimal'] as num?)?.toInt(),
  autoCancelOrderHour: (json['auto_cancel_order_hour'] as num?)?.toInt(),
  blockedCustomerRegistration: (json['blocked_customer_registration'] as num?)
      ?.toInt(),
  checkoutWithoutRegister: (json['checkout_without_register'] as num?)?.toInt(),
  defaultCurrencyId: json['default_currency_id'] as String?,
  disableCart: (json['disable_cart'] as num?)?.toInt(),
  dropShipEnabled: (json['drop_ship_enabled'] as num?)?.toInt(),
  inquiryMode: (json['inquiry_mode'] as num?)?.toInt(),
  langCode: json['lang_code'] as String?,
  mobileSplashScreenBackground:
      json['mobile_splash_screen_background'] as String?,
  onlyInStoreCity: (json['only_in_store_city'] as num?)?.toInt(),
  signinRequired: (json['signin_required'] as num?)?.toInt(),
  hasBranch: (json['has_branch'] as num?)?.toInt(),
);

Map<String, dynamic> _$SettingToJson(_Setting instance) => <String, dynamic>{
  'allow_customer_view_stock': instance.allowCustomerViewStock,
  'allow_qty_decimal': instance.allowQtyDecimal,
  'auto_cancel_order_hour': instance.autoCancelOrderHour,
  'blocked_customer_registration': instance.blockedCustomerRegistration,
  'checkout_without_register': instance.checkoutWithoutRegister,
  'default_currency_id': instance.defaultCurrencyId,
  'disable_cart': instance.disableCart,
  'drop_ship_enabled': instance.dropShipEnabled,
  'inquiry_mode': instance.inquiryMode,
  'lang_code': instance.langCode,
  'mobile_splash_screen_background': instance.mobileSplashScreenBackground,
  'only_in_store_city': instance.onlyInStoreCity,
  'signin_required': instance.signinRequired,
  'has_branch': instance.hasBranch,
};

_MobileSetting _$MobileSettingFromJson(Map<String, dynamic> json) =>
    _MobileSetting(
      isCrm: json['is_crm'] as bool? ?? false,
      isShipper: json['is_shipper'] as bool? ?? false,
      isDisableQris: json['is_disable_qris'] as bool? ?? false,
      isSwitchVariant: json['is_switch_variant'] as bool? ?? false,
      isFavorite: json['is_favorite'] as bool? ?? false,
      isSelfPickup: json['is_self_pickup'] as bool? ?? false,
      isGuestMode: json['is_guest_mode'] as bool? ?? false,
      isHideShipping: json['is_hide_shipping'] as bool? ?? false,
      isHideWhitelabel: json['is_hide_whitelabel'] as bool? ?? false,
    );

Map<String, dynamic> _$MobileSettingToJson(_MobileSetting instance) =>
    <String, dynamic>{
      'is_crm': instance.isCrm,
      'is_shipper': instance.isShipper,
      'is_disable_qris': instance.isDisableQris,
      'is_switch_variant': instance.isSwitchVariant,
      'is_favorite': instance.isFavorite,
      'is_self_pickup': instance.isSelfPickup,
      'is_guest_mode': instance.isGuestMode,
      'is_hide_shipping': instance.isHideShipping,
      'is_hide_whitelabel': instance.isHideWhitelabel,
    };
