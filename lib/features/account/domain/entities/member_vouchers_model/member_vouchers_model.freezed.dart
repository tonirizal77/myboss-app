// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'member_vouchers_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MemberVouchersModel {

 List<MemberVoucherModel> get data; MemberVouchersMeta? get meta;
/// Create a copy of MemberVouchersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberVouchersModelCopyWith<MemberVouchersModel> get copyWith => _$MemberVouchersModelCopyWithImpl<MemberVouchersModel>(this as MemberVouchersModel, _$identity);

  /// Serializes this MemberVouchersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberVouchersModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'MemberVouchersModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $MemberVouchersModelCopyWith<$Res>  {
  factory $MemberVouchersModelCopyWith(MemberVouchersModel value, $Res Function(MemberVouchersModel) _then) = _$MemberVouchersModelCopyWithImpl;
@useResult
$Res call({
 List<MemberVoucherModel> data, MemberVouchersMeta? meta
});


$MemberVouchersMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$MemberVouchersModelCopyWithImpl<$Res>
    implements $MemberVouchersModelCopyWith<$Res> {
  _$MemberVouchersModelCopyWithImpl(this._self, this._then);

  final MemberVouchersModel _self;
  final $Res Function(MemberVouchersModel) _then;

/// Create a copy of MemberVouchersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = freezed,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<MemberVoucherModel>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MemberVouchersMeta?,
  ));
}
/// Create a copy of MemberVouchersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberVouchersMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MemberVouchersMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [MemberVouchersModel].
extension MemberVouchersModelPatterns on MemberVouchersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberVouchersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberVouchersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberVouchersModel value)  $default,){
final _that = this;
switch (_that) {
case _MemberVouchersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberVouchersModel value)?  $default,){
final _that = this;
switch (_that) {
case _MemberVouchersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MemberVoucherModel> data,  MemberVouchersMeta? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberVouchersModel() when $default != null:
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MemberVoucherModel> data,  MemberVouchersMeta? meta)  $default,) {final _that = this;
switch (_that) {
case _MemberVouchersModel():
return $default(_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MemberVoucherModel> data,  MemberVouchersMeta? meta)?  $default,) {final _that = this;
switch (_that) {
case _MemberVouchersModel() when $default != null:
return $default(_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MemberVouchersModel implements MemberVouchersModel {
  const _MemberVouchersModel({final  List<MemberVoucherModel> data = const [], this.meta}): _data = data;
  factory _MemberVouchersModel.fromJson(Map<String, dynamic> json) => _$MemberVouchersModelFromJson(json);

 final  List<MemberVoucherModel> _data;
@override@JsonKey() List<MemberVoucherModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override final  MemberVouchersMeta? meta;

/// Create a copy of MemberVouchersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberVouchersModelCopyWith<_MemberVouchersModel> get copyWith => __$MemberVouchersModelCopyWithImpl<_MemberVouchersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberVouchersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberVouchersModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta);

@override
String toString() {
  return 'MemberVouchersModel(data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$MemberVouchersModelCopyWith<$Res> implements $MemberVouchersModelCopyWith<$Res> {
  factory _$MemberVouchersModelCopyWith(_MemberVouchersModel value, $Res Function(_MemberVouchersModel) _then) = __$MemberVouchersModelCopyWithImpl;
@override @useResult
$Res call({
 List<MemberVoucherModel> data, MemberVouchersMeta? meta
});


@override $MemberVouchersMetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$MemberVouchersModelCopyWithImpl<$Res>
    implements _$MemberVouchersModelCopyWith<$Res> {
  __$MemberVouchersModelCopyWithImpl(this._self, this._then);

  final _MemberVouchersModel _self;
  final $Res Function(_MemberVouchersModel) _then;

/// Create a copy of MemberVouchersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = freezed,}) {
  return _then(_MemberVouchersModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<MemberVoucherModel>,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as MemberVouchersMeta?,
  ));
}

/// Create a copy of MemberVouchersModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MemberVouchersMetaCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $MemberVouchersMetaCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$MemberVoucherModel {

 int get id; String get title; String get discountLabel;/// `yyyy-MM-dd`; null = no expiry.
 String? get expiryDate;/// Voucher code to show / copy (`code` or `voucher_code`).
@JsonKey(readValue: _readCode) String? get code;/// When it was used (`used_at` or `used_date`); null = still active.
@JsonKey(readValue: _readUsedAt) String? get usedAt;/// Terms, numbered by the server ("1. Discount 10%") - same item shape
/// as `/promotion/discount-vouchers/list`.
 List<String?> get tnc;/// Older/alternative terms field; read by `MemberVoucherRemote.terms`
/// when [tnc] is empty.
 Object? get detailVoucher;
/// Create a copy of MemberVoucherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberVoucherModelCopyWith<MemberVoucherModel> get copyWith => _$MemberVoucherModelCopyWithImpl<MemberVoucherModel>(this as MemberVoucherModel, _$identity);

  /// Serializes this MemberVoucherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberVoucherModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.discountLabel, discountLabel) || other.discountLabel == discountLabel)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.code, code) || other.code == code)&&(identical(other.usedAt, usedAt) || other.usedAt == usedAt)&&const DeepCollectionEquality().equals(other.tnc, tnc)&&const DeepCollectionEquality().equals(other.detailVoucher, detailVoucher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,discountLabel,expiryDate,code,usedAt,const DeepCollectionEquality().hash(tnc),const DeepCollectionEquality().hash(detailVoucher));

@override
String toString() {
  return 'MemberVoucherModel(id: $id, title: $title, discountLabel: $discountLabel, expiryDate: $expiryDate, code: $code, usedAt: $usedAt, tnc: $tnc, detailVoucher: $detailVoucher)';
}


}

/// @nodoc
abstract mixin class $MemberVoucherModelCopyWith<$Res>  {
  factory $MemberVoucherModelCopyWith(MemberVoucherModel value, $Res Function(MemberVoucherModel) _then) = _$MemberVoucherModelCopyWithImpl;
@useResult
$Res call({
 int id, String title, String discountLabel, String? expiryDate,@JsonKey(readValue: _readCode) String? code,@JsonKey(readValue: _readUsedAt) String? usedAt, List<String?> tnc, Object? detailVoucher
});




}
/// @nodoc
class _$MemberVoucherModelCopyWithImpl<$Res>
    implements $MemberVoucherModelCopyWith<$Res> {
  _$MemberVoucherModelCopyWithImpl(this._self, this._then);

  final MemberVoucherModel _self;
  final $Res Function(MemberVoucherModel) _then;

/// Create a copy of MemberVoucherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? discountLabel = null,Object? expiryDate = freezed,Object? code = freezed,Object? usedAt = freezed,Object? tnc = null,Object? detailVoucher = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,discountLabel: null == discountLabel ? _self.discountLabel : discountLabel // ignore: cast_nullable_to_non_nullable
as String,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,usedAt: freezed == usedAt ? _self.usedAt : usedAt // ignore: cast_nullable_to_non_nullable
as String?,tnc: null == tnc ? _self.tnc : tnc // ignore: cast_nullable_to_non_nullable
as List<String?>,detailVoucher: freezed == detailVoucher ? _self.detailVoucher : detailVoucher ,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberVoucherModel].
extension MemberVoucherModelPatterns on MemberVoucherModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberVoucherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberVoucherModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberVoucherModel value)  $default,){
final _that = this;
switch (_that) {
case _MemberVoucherModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberVoucherModel value)?  $default,){
final _that = this;
switch (_that) {
case _MemberVoucherModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String discountLabel,  String? expiryDate, @JsonKey(readValue: _readCode)  String? code, @JsonKey(readValue: _readUsedAt)  String? usedAt,  List<String?> tnc,  Object? detailVoucher)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberVoucherModel() when $default != null:
return $default(_that.id,_that.title,_that.discountLabel,_that.expiryDate,_that.code,_that.usedAt,_that.tnc,_that.detailVoucher);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String discountLabel,  String? expiryDate, @JsonKey(readValue: _readCode)  String? code, @JsonKey(readValue: _readUsedAt)  String? usedAt,  List<String?> tnc,  Object? detailVoucher)  $default,) {final _that = this;
switch (_that) {
case _MemberVoucherModel():
return $default(_that.id,_that.title,_that.discountLabel,_that.expiryDate,_that.code,_that.usedAt,_that.tnc,_that.detailVoucher);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String discountLabel,  String? expiryDate, @JsonKey(readValue: _readCode)  String? code, @JsonKey(readValue: _readUsedAt)  String? usedAt,  List<String?> tnc,  Object? detailVoucher)?  $default,) {final _that = this;
switch (_that) {
case _MemberVoucherModel() when $default != null:
return $default(_that.id,_that.title,_that.discountLabel,_that.expiryDate,_that.code,_that.usedAt,_that.tnc,_that.detailVoucher);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MemberVoucherModel implements MemberVoucherModel {
  const _MemberVoucherModel({this.id = 0, this.title = '', this.discountLabel = '', this.expiryDate, @JsonKey(readValue: _readCode) this.code, @JsonKey(readValue: _readUsedAt) this.usedAt, final  List<String?> tnc = const [], this.detailVoucher}): _tnc = tnc;
  factory _MemberVoucherModel.fromJson(Map<String, dynamic> json) => _$MemberVoucherModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String discountLabel;
/// `yyyy-MM-dd`; null = no expiry.
@override final  String? expiryDate;
/// Voucher code to show / copy (`code` or `voucher_code`).
@override@JsonKey(readValue: _readCode) final  String? code;
/// When it was used (`used_at` or `used_date`); null = still active.
@override@JsonKey(readValue: _readUsedAt) final  String? usedAt;
/// Terms, numbered by the server ("1. Discount 10%") - same item shape
/// as `/promotion/discount-vouchers/list`.
 final  List<String?> _tnc;
/// Terms, numbered by the server ("1. Discount 10%") - same item shape
/// as `/promotion/discount-vouchers/list`.
@override@JsonKey() List<String?> get tnc {
  if (_tnc is EqualUnmodifiableListView) return _tnc;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tnc);
}

/// Older/alternative terms field; read by `MemberVoucherRemote.terms`
/// when [tnc] is empty.
@override final  Object? detailVoucher;

/// Create a copy of MemberVoucherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberVoucherModelCopyWith<_MemberVoucherModel> get copyWith => __$MemberVoucherModelCopyWithImpl<_MemberVoucherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberVoucherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberVoucherModel&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.discountLabel, discountLabel) || other.discountLabel == discountLabel)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.code, code) || other.code == code)&&(identical(other.usedAt, usedAt) || other.usedAt == usedAt)&&const DeepCollectionEquality().equals(other._tnc, _tnc)&&const DeepCollectionEquality().equals(other.detailVoucher, detailVoucher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,discountLabel,expiryDate,code,usedAt,const DeepCollectionEquality().hash(_tnc),const DeepCollectionEquality().hash(detailVoucher));

@override
String toString() {
  return 'MemberVoucherModel(id: $id, title: $title, discountLabel: $discountLabel, expiryDate: $expiryDate, code: $code, usedAt: $usedAt, tnc: $tnc, detailVoucher: $detailVoucher)';
}


}

/// @nodoc
abstract mixin class _$MemberVoucherModelCopyWith<$Res> implements $MemberVoucherModelCopyWith<$Res> {
  factory _$MemberVoucherModelCopyWith(_MemberVoucherModel value, $Res Function(_MemberVoucherModel) _then) = __$MemberVoucherModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String discountLabel, String? expiryDate,@JsonKey(readValue: _readCode) String? code,@JsonKey(readValue: _readUsedAt) String? usedAt, List<String?> tnc, Object? detailVoucher
});




}
/// @nodoc
class __$MemberVoucherModelCopyWithImpl<$Res>
    implements _$MemberVoucherModelCopyWith<$Res> {
  __$MemberVoucherModelCopyWithImpl(this._self, this._then);

  final _MemberVoucherModel _self;
  final $Res Function(_MemberVoucherModel) _then;

/// Create a copy of MemberVoucherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? discountLabel = null,Object? expiryDate = freezed,Object? code = freezed,Object? usedAt = freezed,Object? tnc = null,Object? detailVoucher = freezed,}) {
  return _then(_MemberVoucherModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,discountLabel: null == discountLabel ? _self.discountLabel : discountLabel // ignore: cast_nullable_to_non_nullable
as String,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,usedAt: freezed == usedAt ? _self.usedAt : usedAt // ignore: cast_nullable_to_non_nullable
as String?,tnc: null == tnc ? _self._tnc : tnc // ignore: cast_nullable_to_non_nullable
as List<String?>,detailVoucher: freezed == detailVoucher ? _self.detailVoucher : detailVoucher ,
  ));
}


}


/// @nodoc
mixin _$MemberVouchersMeta {

 int get total; int get page; int get perPage; int get totalPage;
/// Create a copy of MemberVouchersMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MemberVouchersMetaCopyWith<MemberVouchersMeta> get copyWith => _$MemberVouchersMetaCopyWithImpl<MemberVouchersMeta>(this as MemberVouchersMeta, _$identity);

  /// Serializes this MemberVouchersMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MemberVouchersMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,perPage,totalPage);

@override
String toString() {
  return 'MemberVouchersMeta(total: $total, page: $page, perPage: $perPage, totalPage: $totalPage)';
}


}

/// @nodoc
abstract mixin class $MemberVouchersMetaCopyWith<$Res>  {
  factory $MemberVouchersMetaCopyWith(MemberVouchersMeta value, $Res Function(MemberVouchersMeta) _then) = _$MemberVouchersMetaCopyWithImpl;
@useResult
$Res call({
 int total, int page, int perPage, int totalPage
});




}
/// @nodoc
class _$MemberVouchersMetaCopyWithImpl<$Res>
    implements $MemberVouchersMetaCopyWith<$Res> {
  _$MemberVouchersMetaCopyWithImpl(this._self, this._then);

  final MemberVouchersMeta _self;
  final $Res Function(MemberVouchersMeta) _then;

/// Create a copy of MemberVouchersMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? perPage = null,Object? totalPage = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MemberVouchersMeta].
extension MemberVouchersMetaPatterns on MemberVouchersMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MemberVouchersMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MemberVouchersMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MemberVouchersMeta value)  $default,){
final _that = this;
switch (_that) {
case _MemberVouchersMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MemberVouchersMeta value)?  $default,){
final _that = this;
switch (_that) {
case _MemberVouchersMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int perPage,  int totalPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MemberVouchersMeta() when $default != null:
return $default(_that.total,_that.page,_that.perPage,_that.totalPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int perPage,  int totalPage)  $default,) {final _that = this;
switch (_that) {
case _MemberVouchersMeta():
return $default(_that.total,_that.page,_that.perPage,_that.totalPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int perPage,  int totalPage)?  $default,) {final _that = this;
switch (_that) {
case _MemberVouchersMeta() when $default != null:
return $default(_that.total,_that.page,_that.perPage,_that.totalPage);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MemberVouchersMeta implements MemberVouchersMeta {
  const _MemberVouchersMeta({this.total = 0, this.page = 1, this.perPage = 15, this.totalPage = 1});
  factory _MemberVouchersMeta.fromJson(Map<String, dynamic> json) => _$MemberVouchersMetaFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int perPage;
@override@JsonKey() final  int totalPage;

/// Create a copy of MemberVouchersMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MemberVouchersMetaCopyWith<_MemberVouchersMeta> get copyWith => __$MemberVouchersMetaCopyWithImpl<_MemberVouchersMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MemberVouchersMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MemberVouchersMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,perPage,totalPage);

@override
String toString() {
  return 'MemberVouchersMeta(total: $total, page: $page, perPage: $perPage, totalPage: $totalPage)';
}


}

/// @nodoc
abstract mixin class _$MemberVouchersMetaCopyWith<$Res> implements $MemberVouchersMetaCopyWith<$Res> {
  factory _$MemberVouchersMetaCopyWith(_MemberVouchersMeta value, $Res Function(_MemberVouchersMeta) _then) = __$MemberVouchersMetaCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int perPage, int totalPage
});




}
/// @nodoc
class __$MemberVouchersMetaCopyWithImpl<$Res>
    implements _$MemberVouchersMetaCopyWith<$Res> {
  __$MemberVouchersMetaCopyWithImpl(this._self, this._then);

  final _MemberVouchersMeta _self;
  final $Res Function(_MemberVouchersMeta) _then;

/// Create a copy of MemberVouchersMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? perPage = null,Object? totalPage = null,}) {
  return _then(_MemberVouchersMeta(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
