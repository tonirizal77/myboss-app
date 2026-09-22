// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'voucher_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VoucherListModel {

 List<VoucherModel>? get data; Meta? get meta; int? get status; int? get error;
/// Create a copy of VoucherListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoucherListModelCopyWith<VoucherListModel> get copyWith => _$VoucherListModelCopyWithImpl<VoucherListModel>(this as VoucherListModel, _$identity);

  /// Serializes this VoucherListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoucherListModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'VoucherListModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $VoucherListModelCopyWith<$Res>  {
  factory $VoucherListModelCopyWith(VoucherListModel value, $Res Function(VoucherListModel) _then) = _$VoucherListModelCopyWithImpl;
@useResult
$Res call({
 List<VoucherModel>? data, Meta? meta, int? status, int? error
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$VoucherListModelCopyWithImpl<$Res>
    implements $VoucherListModelCopyWith<$Res> {
  _$VoucherListModelCopyWithImpl(this._self, this._then);

  final VoucherListModel _self;
  final $Res Function(VoucherListModel) _then;

/// Create a copy of VoucherListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,Object? status = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<VoucherModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of VoucherListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [VoucherListModel].
extension VoucherListModelPatterns on VoucherListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VoucherListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VoucherListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VoucherListModel value)  $default,){
final _that = this;
switch (_that) {
case _VoucherListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VoucherListModel value)?  $default,){
final _that = this;
switch (_that) {
case _VoucherListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<VoucherModel>? data,  Meta? meta,  int? status,  int? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoucherListModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<VoucherModel>? data,  Meta? meta,  int? status,  int? error)  $default,) {final _that = this;
switch (_that) {
case _VoucherListModel():
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<VoucherModel>? data,  Meta? meta,  int? status,  int? error)?  $default,) {final _that = this;
switch (_that) {
case _VoucherListModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _VoucherListModel implements VoucherListModel {
  const _VoucherListModel({final  List<VoucherModel>? data, this.meta, this.status, this.error}): _data = data;
  factory _VoucherListModel.fromJson(Map<String, dynamic> json) => _$VoucherListModelFromJson(json);

 final  List<VoucherModel>? _data;
@override List<VoucherModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Meta? meta;
@override final  int? status;
@override final  int? error;

/// Create a copy of VoucherListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoucherListModelCopyWith<_VoucherListModel> get copyWith => __$VoucherListModelCopyWithImpl<_VoucherListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VoucherListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoucherListModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'VoucherListModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$VoucherListModelCopyWith<$Res> implements $VoucherListModelCopyWith<$Res> {
  factory _$VoucherListModelCopyWith(_VoucherListModel value, $Res Function(_VoucherListModel) _then) = __$VoucherListModelCopyWithImpl;
@override @useResult
$Res call({
 List<VoucherModel>? data, Meta? meta, int? status, int? error
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$VoucherListModelCopyWithImpl<$Res>
    implements _$VoucherListModelCopyWith<$Res> {
  __$VoucherListModelCopyWithImpl(this._self, this._then);

  final _VoucherListModel _self;
  final $Res Function(_VoucherListModel) _then;

/// Create a copy of VoucherListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,Object? status = freezed,Object? error = freezed,}) {
  return _then(_VoucherListModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<VoucherModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of VoucherListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$VoucherModel {

 String get activeDate; String get code; int get dailyResetUsage; int get discountAmount; double get discountRate; String get expiryDate; String get hasBeenUsedByCustomer; int get id; String get isUseable; int get maxDiscountAmount; int get minOrderAmount; int get noExpiry; int get noUsageLimit; int get oncePerCustomer; int get promoValidAnyDay; int get promoValidDays; String get status; int get storeId; String get storeName; String get title; int get usageLimit; int get validCustomerTypeMembership; int get validForAllCustomers; int get validForAllProductBrands; int get validForAllProductCombos; int get validForAllProducts;
/// Create a copy of VoucherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VoucherModelCopyWith<VoucherModel> get copyWith => _$VoucherModelCopyWithImpl<VoucherModel>(this as VoucherModel, _$identity);

  /// Serializes this VoucherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VoucherModel&&(identical(other.activeDate, activeDate) || other.activeDate == activeDate)&&(identical(other.code, code) || other.code == code)&&(identical(other.dailyResetUsage, dailyResetUsage) || other.dailyResetUsage == dailyResetUsage)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.discountRate, discountRate) || other.discountRate == discountRate)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.hasBeenUsedByCustomer, hasBeenUsedByCustomer) || other.hasBeenUsedByCustomer == hasBeenUsedByCustomer)&&(identical(other.id, id) || other.id == id)&&(identical(other.isUseable, isUseable) || other.isUseable == isUseable)&&(identical(other.maxDiscountAmount, maxDiscountAmount) || other.maxDiscountAmount == maxDiscountAmount)&&(identical(other.minOrderAmount, minOrderAmount) || other.minOrderAmount == minOrderAmount)&&(identical(other.noExpiry, noExpiry) || other.noExpiry == noExpiry)&&(identical(other.noUsageLimit, noUsageLimit) || other.noUsageLimit == noUsageLimit)&&(identical(other.oncePerCustomer, oncePerCustomer) || other.oncePerCustomer == oncePerCustomer)&&(identical(other.promoValidAnyDay, promoValidAnyDay) || other.promoValidAnyDay == promoValidAnyDay)&&(identical(other.promoValidDays, promoValidDays) || other.promoValidDays == promoValidDays)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.title, title) || other.title == title)&&(identical(other.usageLimit, usageLimit) || other.usageLimit == usageLimit)&&(identical(other.validCustomerTypeMembership, validCustomerTypeMembership) || other.validCustomerTypeMembership == validCustomerTypeMembership)&&(identical(other.validForAllCustomers, validForAllCustomers) || other.validForAllCustomers == validForAllCustomers)&&(identical(other.validForAllProductBrands, validForAllProductBrands) || other.validForAllProductBrands == validForAllProductBrands)&&(identical(other.validForAllProductCombos, validForAllProductCombos) || other.validForAllProductCombos == validForAllProductCombos)&&(identical(other.validForAllProducts, validForAllProducts) || other.validForAllProducts == validForAllProducts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,activeDate,code,dailyResetUsage,discountAmount,discountRate,expiryDate,hasBeenUsedByCustomer,id,isUseable,maxDiscountAmount,minOrderAmount,noExpiry,noUsageLimit,oncePerCustomer,promoValidAnyDay,promoValidDays,status,storeId,storeName,title,usageLimit,validCustomerTypeMembership,validForAllCustomers,validForAllProductBrands,validForAllProductCombos,validForAllProducts]);

@override
String toString() {
  return 'VoucherModel(activeDate: $activeDate, code: $code, dailyResetUsage: $dailyResetUsage, discountAmount: $discountAmount, discountRate: $discountRate, expiryDate: $expiryDate, hasBeenUsedByCustomer: $hasBeenUsedByCustomer, id: $id, isUseable: $isUseable, maxDiscountAmount: $maxDiscountAmount, minOrderAmount: $minOrderAmount, noExpiry: $noExpiry, noUsageLimit: $noUsageLimit, oncePerCustomer: $oncePerCustomer, promoValidAnyDay: $promoValidAnyDay, promoValidDays: $promoValidDays, status: $status, storeId: $storeId, storeName: $storeName, title: $title, usageLimit: $usageLimit, validCustomerTypeMembership: $validCustomerTypeMembership, validForAllCustomers: $validForAllCustomers, validForAllProductBrands: $validForAllProductBrands, validForAllProductCombos: $validForAllProductCombos, validForAllProducts: $validForAllProducts)';
}


}

/// @nodoc
abstract mixin class $VoucherModelCopyWith<$Res>  {
  factory $VoucherModelCopyWith(VoucherModel value, $Res Function(VoucherModel) _then) = _$VoucherModelCopyWithImpl;
@useResult
$Res call({
 String activeDate, String code, int dailyResetUsage, int discountAmount, double discountRate, String expiryDate, String hasBeenUsedByCustomer, int id, String isUseable, int maxDiscountAmount, int minOrderAmount, int noExpiry, int noUsageLimit, int oncePerCustomer, int promoValidAnyDay, int promoValidDays, String status, int storeId, String storeName, String title, int usageLimit, int validCustomerTypeMembership, int validForAllCustomers, int validForAllProductBrands, int validForAllProductCombos, int validForAllProducts
});




}
/// @nodoc
class _$VoucherModelCopyWithImpl<$Res>
    implements $VoucherModelCopyWith<$Res> {
  _$VoucherModelCopyWithImpl(this._self, this._then);

  final VoucherModel _self;
  final $Res Function(VoucherModel) _then;

/// Create a copy of VoucherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeDate = null,Object? code = null,Object? dailyResetUsage = null,Object? discountAmount = null,Object? discountRate = null,Object? expiryDate = null,Object? hasBeenUsedByCustomer = null,Object? id = null,Object? isUseable = null,Object? maxDiscountAmount = null,Object? minOrderAmount = null,Object? noExpiry = null,Object? noUsageLimit = null,Object? oncePerCustomer = null,Object? promoValidAnyDay = null,Object? promoValidDays = null,Object? status = null,Object? storeId = null,Object? storeName = null,Object? title = null,Object? usageLimit = null,Object? validCustomerTypeMembership = null,Object? validForAllCustomers = null,Object? validForAllProductBrands = null,Object? validForAllProductCombos = null,Object? validForAllProducts = null,}) {
  return _then(_self.copyWith(
activeDate: null == activeDate ? _self.activeDate : activeDate // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,dailyResetUsage: null == dailyResetUsage ? _self.dailyResetUsage : dailyResetUsage // ignore: cast_nullable_to_non_nullable
as int,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,discountRate: null == discountRate ? _self.discountRate : discountRate // ignore: cast_nullable_to_non_nullable
as double,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,hasBeenUsedByCustomer: null == hasBeenUsedByCustomer ? _self.hasBeenUsedByCustomer : hasBeenUsedByCustomer // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isUseable: null == isUseable ? _self.isUseable : isUseable // ignore: cast_nullable_to_non_nullable
as String,maxDiscountAmount: null == maxDiscountAmount ? _self.maxDiscountAmount : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
as int,minOrderAmount: null == minOrderAmount ? _self.minOrderAmount : minOrderAmount // ignore: cast_nullable_to_non_nullable
as int,noExpiry: null == noExpiry ? _self.noExpiry : noExpiry // ignore: cast_nullable_to_non_nullable
as int,noUsageLimit: null == noUsageLimit ? _self.noUsageLimit : noUsageLimit // ignore: cast_nullable_to_non_nullable
as int,oncePerCustomer: null == oncePerCustomer ? _self.oncePerCustomer : oncePerCustomer // ignore: cast_nullable_to_non_nullable
as int,promoValidAnyDay: null == promoValidAnyDay ? _self.promoValidAnyDay : promoValidAnyDay // ignore: cast_nullable_to_non_nullable
as int,promoValidDays: null == promoValidDays ? _self.promoValidDays : promoValidDays // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,usageLimit: null == usageLimit ? _self.usageLimit : usageLimit // ignore: cast_nullable_to_non_nullable
as int,validCustomerTypeMembership: null == validCustomerTypeMembership ? _self.validCustomerTypeMembership : validCustomerTypeMembership // ignore: cast_nullable_to_non_nullable
as int,validForAllCustomers: null == validForAllCustomers ? _self.validForAllCustomers : validForAllCustomers // ignore: cast_nullable_to_non_nullable
as int,validForAllProductBrands: null == validForAllProductBrands ? _self.validForAllProductBrands : validForAllProductBrands // ignore: cast_nullable_to_non_nullable
as int,validForAllProductCombos: null == validForAllProductCombos ? _self.validForAllProductCombos : validForAllProductCombos // ignore: cast_nullable_to_non_nullable
as int,validForAllProducts: null == validForAllProducts ? _self.validForAllProducts : validForAllProducts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VoucherModel].
extension VoucherModelPatterns on VoucherModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VoucherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VoucherModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VoucherModel value)  $default,){
final _that = this;
switch (_that) {
case _VoucherModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VoucherModel value)?  $default,){
final _that = this;
switch (_that) {
case _VoucherModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String activeDate,  String code,  int dailyResetUsage,  int discountAmount,  double discountRate,  String expiryDate,  String hasBeenUsedByCustomer,  int id,  String isUseable,  int maxDiscountAmount,  int minOrderAmount,  int noExpiry,  int noUsageLimit,  int oncePerCustomer,  int promoValidAnyDay,  int promoValidDays,  String status,  int storeId,  String storeName,  String title,  int usageLimit,  int validCustomerTypeMembership,  int validForAllCustomers,  int validForAllProductBrands,  int validForAllProductCombos,  int validForAllProducts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VoucherModel() when $default != null:
return $default(_that.activeDate,_that.code,_that.dailyResetUsage,_that.discountAmount,_that.discountRate,_that.expiryDate,_that.hasBeenUsedByCustomer,_that.id,_that.isUseable,_that.maxDiscountAmount,_that.minOrderAmount,_that.noExpiry,_that.noUsageLimit,_that.oncePerCustomer,_that.promoValidAnyDay,_that.promoValidDays,_that.status,_that.storeId,_that.storeName,_that.title,_that.usageLimit,_that.validCustomerTypeMembership,_that.validForAllCustomers,_that.validForAllProductBrands,_that.validForAllProductCombos,_that.validForAllProducts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String activeDate,  String code,  int dailyResetUsage,  int discountAmount,  double discountRate,  String expiryDate,  String hasBeenUsedByCustomer,  int id,  String isUseable,  int maxDiscountAmount,  int minOrderAmount,  int noExpiry,  int noUsageLimit,  int oncePerCustomer,  int promoValidAnyDay,  int promoValidDays,  String status,  int storeId,  String storeName,  String title,  int usageLimit,  int validCustomerTypeMembership,  int validForAllCustomers,  int validForAllProductBrands,  int validForAllProductCombos,  int validForAllProducts)  $default,) {final _that = this;
switch (_that) {
case _VoucherModel():
return $default(_that.activeDate,_that.code,_that.dailyResetUsage,_that.discountAmount,_that.discountRate,_that.expiryDate,_that.hasBeenUsedByCustomer,_that.id,_that.isUseable,_that.maxDiscountAmount,_that.minOrderAmount,_that.noExpiry,_that.noUsageLimit,_that.oncePerCustomer,_that.promoValidAnyDay,_that.promoValidDays,_that.status,_that.storeId,_that.storeName,_that.title,_that.usageLimit,_that.validCustomerTypeMembership,_that.validForAllCustomers,_that.validForAllProductBrands,_that.validForAllProductCombos,_that.validForAllProducts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String activeDate,  String code,  int dailyResetUsage,  int discountAmount,  double discountRate,  String expiryDate,  String hasBeenUsedByCustomer,  int id,  String isUseable,  int maxDiscountAmount,  int minOrderAmount,  int noExpiry,  int noUsageLimit,  int oncePerCustomer,  int promoValidAnyDay,  int promoValidDays,  String status,  int storeId,  String storeName,  String title,  int usageLimit,  int validCustomerTypeMembership,  int validForAllCustomers,  int validForAllProductBrands,  int validForAllProductCombos,  int validForAllProducts)?  $default,) {final _that = this;
switch (_that) {
case _VoucherModel() when $default != null:
return $default(_that.activeDate,_that.code,_that.dailyResetUsage,_that.discountAmount,_that.discountRate,_that.expiryDate,_that.hasBeenUsedByCustomer,_that.id,_that.isUseable,_that.maxDiscountAmount,_that.minOrderAmount,_that.noExpiry,_that.noUsageLimit,_that.oncePerCustomer,_that.promoValidAnyDay,_that.promoValidDays,_that.status,_that.storeId,_that.storeName,_that.title,_that.usageLimit,_that.validCustomerTypeMembership,_that.validForAllCustomers,_that.validForAllProductBrands,_that.validForAllProductCombos,_that.validForAllProducts);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _VoucherModel implements VoucherModel {
  const _VoucherModel({this.activeDate = "", this.code = "", this.dailyResetUsage = 0, this.discountAmount = 0, this.discountRate = 0.0, this.expiryDate = "", this.hasBeenUsedByCustomer = "", this.id = 0, this.isUseable = "", this.maxDiscountAmount = 0, this.minOrderAmount = 0, this.noExpiry = 0, this.noUsageLimit = 0, this.oncePerCustomer = 0, this.promoValidAnyDay = 0, this.promoValidDays = 0, this.status = "", this.storeId = 0, this.storeName = "", this.title = "", this.usageLimit = 0, this.validCustomerTypeMembership = 0, this.validForAllCustomers = 0, this.validForAllProductBrands = 0, this.validForAllProductCombos = 0, this.validForAllProducts = 0});
  factory _VoucherModel.fromJson(Map<String, dynamic> json) => _$VoucherModelFromJson(json);

@override@JsonKey() final  String activeDate;
@override@JsonKey() final  String code;
@override@JsonKey() final  int dailyResetUsage;
@override@JsonKey() final  int discountAmount;
@override@JsonKey() final  double discountRate;
@override@JsonKey() final  String expiryDate;
@override@JsonKey() final  String hasBeenUsedByCustomer;
@override@JsonKey() final  int id;
@override@JsonKey() final  String isUseable;
@override@JsonKey() final  int maxDiscountAmount;
@override@JsonKey() final  int minOrderAmount;
@override@JsonKey() final  int noExpiry;
@override@JsonKey() final  int noUsageLimit;
@override@JsonKey() final  int oncePerCustomer;
@override@JsonKey() final  int promoValidAnyDay;
@override@JsonKey() final  int promoValidDays;
@override@JsonKey() final  String status;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  String storeName;
@override@JsonKey() final  String title;
@override@JsonKey() final  int usageLimit;
@override@JsonKey() final  int validCustomerTypeMembership;
@override@JsonKey() final  int validForAllCustomers;
@override@JsonKey() final  int validForAllProductBrands;
@override@JsonKey() final  int validForAllProductCombos;
@override@JsonKey() final  int validForAllProducts;

/// Create a copy of VoucherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VoucherModelCopyWith<_VoucherModel> get copyWith => __$VoucherModelCopyWithImpl<_VoucherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VoucherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VoucherModel&&(identical(other.activeDate, activeDate) || other.activeDate == activeDate)&&(identical(other.code, code) || other.code == code)&&(identical(other.dailyResetUsage, dailyResetUsage) || other.dailyResetUsage == dailyResetUsage)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.discountRate, discountRate) || other.discountRate == discountRate)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.hasBeenUsedByCustomer, hasBeenUsedByCustomer) || other.hasBeenUsedByCustomer == hasBeenUsedByCustomer)&&(identical(other.id, id) || other.id == id)&&(identical(other.isUseable, isUseable) || other.isUseable == isUseable)&&(identical(other.maxDiscountAmount, maxDiscountAmount) || other.maxDiscountAmount == maxDiscountAmount)&&(identical(other.minOrderAmount, minOrderAmount) || other.minOrderAmount == minOrderAmount)&&(identical(other.noExpiry, noExpiry) || other.noExpiry == noExpiry)&&(identical(other.noUsageLimit, noUsageLimit) || other.noUsageLimit == noUsageLimit)&&(identical(other.oncePerCustomer, oncePerCustomer) || other.oncePerCustomer == oncePerCustomer)&&(identical(other.promoValidAnyDay, promoValidAnyDay) || other.promoValidAnyDay == promoValidAnyDay)&&(identical(other.promoValidDays, promoValidDays) || other.promoValidDays == promoValidDays)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.title, title) || other.title == title)&&(identical(other.usageLimit, usageLimit) || other.usageLimit == usageLimit)&&(identical(other.validCustomerTypeMembership, validCustomerTypeMembership) || other.validCustomerTypeMembership == validCustomerTypeMembership)&&(identical(other.validForAllCustomers, validForAllCustomers) || other.validForAllCustomers == validForAllCustomers)&&(identical(other.validForAllProductBrands, validForAllProductBrands) || other.validForAllProductBrands == validForAllProductBrands)&&(identical(other.validForAllProductCombos, validForAllProductCombos) || other.validForAllProductCombos == validForAllProductCombos)&&(identical(other.validForAllProducts, validForAllProducts) || other.validForAllProducts == validForAllProducts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,activeDate,code,dailyResetUsage,discountAmount,discountRate,expiryDate,hasBeenUsedByCustomer,id,isUseable,maxDiscountAmount,minOrderAmount,noExpiry,noUsageLimit,oncePerCustomer,promoValidAnyDay,promoValidDays,status,storeId,storeName,title,usageLimit,validCustomerTypeMembership,validForAllCustomers,validForAllProductBrands,validForAllProductCombos,validForAllProducts]);

@override
String toString() {
  return 'VoucherModel(activeDate: $activeDate, code: $code, dailyResetUsage: $dailyResetUsage, discountAmount: $discountAmount, discountRate: $discountRate, expiryDate: $expiryDate, hasBeenUsedByCustomer: $hasBeenUsedByCustomer, id: $id, isUseable: $isUseable, maxDiscountAmount: $maxDiscountAmount, minOrderAmount: $minOrderAmount, noExpiry: $noExpiry, noUsageLimit: $noUsageLimit, oncePerCustomer: $oncePerCustomer, promoValidAnyDay: $promoValidAnyDay, promoValidDays: $promoValidDays, status: $status, storeId: $storeId, storeName: $storeName, title: $title, usageLimit: $usageLimit, validCustomerTypeMembership: $validCustomerTypeMembership, validForAllCustomers: $validForAllCustomers, validForAllProductBrands: $validForAllProductBrands, validForAllProductCombos: $validForAllProductCombos, validForAllProducts: $validForAllProducts)';
}


}

/// @nodoc
abstract mixin class _$VoucherModelCopyWith<$Res> implements $VoucherModelCopyWith<$Res> {
  factory _$VoucherModelCopyWith(_VoucherModel value, $Res Function(_VoucherModel) _then) = __$VoucherModelCopyWithImpl;
@override @useResult
$Res call({
 String activeDate, String code, int dailyResetUsage, int discountAmount, double discountRate, String expiryDate, String hasBeenUsedByCustomer, int id, String isUseable, int maxDiscountAmount, int minOrderAmount, int noExpiry, int noUsageLimit, int oncePerCustomer, int promoValidAnyDay, int promoValidDays, String status, int storeId, String storeName, String title, int usageLimit, int validCustomerTypeMembership, int validForAllCustomers, int validForAllProductBrands, int validForAllProductCombos, int validForAllProducts
});




}
/// @nodoc
class __$VoucherModelCopyWithImpl<$Res>
    implements _$VoucherModelCopyWith<$Res> {
  __$VoucherModelCopyWithImpl(this._self, this._then);

  final _VoucherModel _self;
  final $Res Function(_VoucherModel) _then;

/// Create a copy of VoucherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeDate = null,Object? code = null,Object? dailyResetUsage = null,Object? discountAmount = null,Object? discountRate = null,Object? expiryDate = null,Object? hasBeenUsedByCustomer = null,Object? id = null,Object? isUseable = null,Object? maxDiscountAmount = null,Object? minOrderAmount = null,Object? noExpiry = null,Object? noUsageLimit = null,Object? oncePerCustomer = null,Object? promoValidAnyDay = null,Object? promoValidDays = null,Object? status = null,Object? storeId = null,Object? storeName = null,Object? title = null,Object? usageLimit = null,Object? validCustomerTypeMembership = null,Object? validForAllCustomers = null,Object? validForAllProductBrands = null,Object? validForAllProductCombos = null,Object? validForAllProducts = null,}) {
  return _then(_VoucherModel(
activeDate: null == activeDate ? _self.activeDate : activeDate // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,dailyResetUsage: null == dailyResetUsage ? _self.dailyResetUsage : dailyResetUsage // ignore: cast_nullable_to_non_nullable
as int,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as int,discountRate: null == discountRate ? _self.discountRate : discountRate // ignore: cast_nullable_to_non_nullable
as double,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,hasBeenUsedByCustomer: null == hasBeenUsedByCustomer ? _self.hasBeenUsedByCustomer : hasBeenUsedByCustomer // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isUseable: null == isUseable ? _self.isUseable : isUseable // ignore: cast_nullable_to_non_nullable
as String,maxDiscountAmount: null == maxDiscountAmount ? _self.maxDiscountAmount : maxDiscountAmount // ignore: cast_nullable_to_non_nullable
as int,minOrderAmount: null == minOrderAmount ? _self.minOrderAmount : minOrderAmount // ignore: cast_nullable_to_non_nullable
as int,noExpiry: null == noExpiry ? _self.noExpiry : noExpiry // ignore: cast_nullable_to_non_nullable
as int,noUsageLimit: null == noUsageLimit ? _self.noUsageLimit : noUsageLimit // ignore: cast_nullable_to_non_nullable
as int,oncePerCustomer: null == oncePerCustomer ? _self.oncePerCustomer : oncePerCustomer // ignore: cast_nullable_to_non_nullable
as int,promoValidAnyDay: null == promoValidAnyDay ? _self.promoValidAnyDay : promoValidAnyDay // ignore: cast_nullable_to_non_nullable
as int,promoValidDays: null == promoValidDays ? _self.promoValidDays : promoValidDays // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,storeName: null == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,usageLimit: null == usageLimit ? _self.usageLimit : usageLimit // ignore: cast_nullable_to_non_nullable
as int,validCustomerTypeMembership: null == validCustomerTypeMembership ? _self.validCustomerTypeMembership : validCustomerTypeMembership // ignore: cast_nullable_to_non_nullable
as int,validForAllCustomers: null == validForAllCustomers ? _self.validForAllCustomers : validForAllCustomers // ignore: cast_nullable_to_non_nullable
as int,validForAllProductBrands: null == validForAllProductBrands ? _self.validForAllProductBrands : validForAllProductBrands // ignore: cast_nullable_to_non_nullable
as int,validForAllProductCombos: null == validForAllProductCombos ? _self.validForAllProductCombos : validForAllProductCombos // ignore: cast_nullable_to_non_nullable
as int,validForAllProducts: null == validForAllProducts ? _self.validForAllProducts : validForAllProducts // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
