// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CatalogGroupsModel {

 List<CatalogGroup> get data; CatalogMeta get meta; int get status; int get error;
/// Create a copy of CatalogGroupsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogGroupsModelCopyWith<CatalogGroupsModel> get copyWith => _$CatalogGroupsModelCopyWithImpl<CatalogGroupsModel>(this as CatalogGroupsModel, _$identity);

  /// Serializes this CatalogGroupsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogGroupsModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'CatalogGroupsModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $CatalogGroupsModelCopyWith<$Res>  {
  factory $CatalogGroupsModelCopyWith(CatalogGroupsModel value, $Res Function(CatalogGroupsModel) _then) = _$CatalogGroupsModelCopyWithImpl;
@useResult
$Res call({
 List<CatalogGroup> data, CatalogMeta meta, int status, int error
});


$CatalogMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$CatalogGroupsModelCopyWithImpl<$Res>
    implements $CatalogGroupsModelCopyWith<$Res> {
  _$CatalogGroupsModelCopyWithImpl(this._self, this._then);

  final CatalogGroupsModel _self;
  final $Res Function(CatalogGroupsModel) _then;

/// Create a copy of CatalogGroupsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CatalogGroup>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CatalogMeta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CatalogGroupsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogMetaCopyWith<$Res> get meta {
  
  return $CatalogMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CatalogGroupsModel].
extension CatalogGroupsModelPatterns on CatalogGroupsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogGroupsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogGroupsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogGroupsModel value)  $default,){
final _that = this;
switch (_that) {
case _CatalogGroupsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogGroupsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogGroupsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CatalogGroup> data,  CatalogMeta meta,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogGroupsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CatalogGroup> data,  CatalogMeta meta,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _CatalogGroupsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CatalogGroup> data,  CatalogMeta meta,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _CatalogGroupsModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CatalogGroupsModel implements CatalogGroupsModel {
  const _CatalogGroupsModel({final  List<CatalogGroup> data = const [], this.meta = const CatalogMeta(), this.status = 0, this.error = 0}): _data = data;
  factory _CatalogGroupsModel.fromJson(Map<String, dynamic> json) => _$CatalogGroupsModelFromJson(json);

 final  List<CatalogGroup> _data;
@override@JsonKey() List<CatalogGroup> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  CatalogMeta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of CatalogGroupsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogGroupsModelCopyWith<_CatalogGroupsModel> get copyWith => __$CatalogGroupsModelCopyWithImpl<_CatalogGroupsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogGroupsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogGroupsModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'CatalogGroupsModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CatalogGroupsModelCopyWith<$Res> implements $CatalogGroupsModelCopyWith<$Res> {
  factory _$CatalogGroupsModelCopyWith(_CatalogGroupsModel value, $Res Function(_CatalogGroupsModel) _then) = __$CatalogGroupsModelCopyWithImpl;
@override @useResult
$Res call({
 List<CatalogGroup> data, CatalogMeta meta, int status, int error
});


@override $CatalogMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$CatalogGroupsModelCopyWithImpl<$Res>
    implements _$CatalogGroupsModelCopyWith<$Res> {
  __$CatalogGroupsModelCopyWithImpl(this._self, this._then);

  final _CatalogGroupsModel _self;
  final $Res Function(_CatalogGroupsModel) _then;

/// Create a copy of CatalogGroupsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_CatalogGroupsModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CatalogGroup>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CatalogMeta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CatalogGroupsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogMetaCopyWith<$Res> get meta {
  
  return $CatalogMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$CatalogGroup {

 int get id; String? get nameEn; String? get nameId;/// Category icon; the server placeholder (`no_photo`) when not set.
 String? get photoMd;/// `/catalog/lists/group` only.
 int get totalProduct; List<CatalogItem> get products;
/// Create a copy of CatalogGroup
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogGroupCopyWith<CatalogGroup> get copyWith => _$CatalogGroupCopyWithImpl<CatalogGroup>(this as CatalogGroup, _$identity);

  /// Serializes this CatalogGroup to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameId, nameId) || other.nameId == nameId)&&(identical(other.photoMd, photoMd) || other.photoMd == photoMd)&&(identical(other.totalProduct, totalProduct) || other.totalProduct == totalProduct)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameEn,nameId,photoMd,totalProduct,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'CatalogGroup(id: $id, nameEn: $nameEn, nameId: $nameId, photoMd: $photoMd, totalProduct: $totalProduct, products: $products)';
}


}

/// @nodoc
abstract mixin class $CatalogGroupCopyWith<$Res>  {
  factory $CatalogGroupCopyWith(CatalogGroup value, $Res Function(CatalogGroup) _then) = _$CatalogGroupCopyWithImpl;
@useResult
$Res call({
 int id, String? nameEn, String? nameId, String? photoMd, int totalProduct, List<CatalogItem> products
});




}
/// @nodoc
class _$CatalogGroupCopyWithImpl<$Res>
    implements $CatalogGroupCopyWith<$Res> {
  _$CatalogGroupCopyWithImpl(this._self, this._then);

  final CatalogGroup _self;
  final $Res Function(CatalogGroup) _then;

/// Create a copy of CatalogGroup
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? nameEn = freezed,Object? nameId = freezed,Object? photoMd = freezed,Object? totalProduct = null,Object? products = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameId: freezed == nameId ? _self.nameId : nameId // ignore: cast_nullable_to_non_nullable
as String?,photoMd: freezed == photoMd ? _self.photoMd : photoMd // ignore: cast_nullable_to_non_nullable
as String?,totalProduct: null == totalProduct ? _self.totalProduct : totalProduct // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<CatalogItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogGroup].
extension CatalogGroupPatterns on CatalogGroup {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogGroup value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogGroup() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogGroup value)  $default,){
final _that = this;
switch (_that) {
case _CatalogGroup():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogGroup value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogGroup() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? nameEn,  String? nameId,  String? photoMd,  int totalProduct,  List<CatalogItem> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogGroup() when $default != null:
return $default(_that.id,_that.nameEn,_that.nameId,_that.photoMd,_that.totalProduct,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? nameEn,  String? nameId,  String? photoMd,  int totalProduct,  List<CatalogItem> products)  $default,) {final _that = this;
switch (_that) {
case _CatalogGroup():
return $default(_that.id,_that.nameEn,_that.nameId,_that.photoMd,_that.totalProduct,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? nameEn,  String? nameId,  String? photoMd,  int totalProduct,  List<CatalogItem> products)?  $default,) {final _that = this;
switch (_that) {
case _CatalogGroup() when $default != null:
return $default(_that.id,_that.nameEn,_that.nameId,_that.photoMd,_that.totalProduct,_that.products);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CatalogGroup implements CatalogGroup {
  const _CatalogGroup({this.id = 0, this.nameEn, this.nameId, this.photoMd, this.totalProduct = 0, final  List<CatalogItem> products = const []}): _products = products;
  factory _CatalogGroup.fromJson(Map<String, dynamic> json) => _$CatalogGroupFromJson(json);

@override@JsonKey() final  int id;
@override final  String? nameEn;
@override final  String? nameId;
/// Category icon; the server placeholder (`no_photo`) when not set.
@override final  String? photoMd;
/// `/catalog/lists/group` only.
@override@JsonKey() final  int totalProduct;
 final  List<CatalogItem> _products;
@override@JsonKey() List<CatalogItem> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of CatalogGroup
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogGroupCopyWith<_CatalogGroup> get copyWith => __$CatalogGroupCopyWithImpl<_CatalogGroup>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogGroupToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogGroup&&(identical(other.id, id) || other.id == id)&&(identical(other.nameEn, nameEn) || other.nameEn == nameEn)&&(identical(other.nameId, nameId) || other.nameId == nameId)&&(identical(other.photoMd, photoMd) || other.photoMd == photoMd)&&(identical(other.totalProduct, totalProduct) || other.totalProduct == totalProduct)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,nameEn,nameId,photoMd,totalProduct,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'CatalogGroup(id: $id, nameEn: $nameEn, nameId: $nameId, photoMd: $photoMd, totalProduct: $totalProduct, products: $products)';
}


}

/// @nodoc
abstract mixin class _$CatalogGroupCopyWith<$Res> implements $CatalogGroupCopyWith<$Res> {
  factory _$CatalogGroupCopyWith(_CatalogGroup value, $Res Function(_CatalogGroup) _then) = __$CatalogGroupCopyWithImpl;
@override @useResult
$Res call({
 int id, String? nameEn, String? nameId, String? photoMd, int totalProduct, List<CatalogItem> products
});




}
/// @nodoc
class __$CatalogGroupCopyWithImpl<$Res>
    implements _$CatalogGroupCopyWith<$Res> {
  __$CatalogGroupCopyWithImpl(this._self, this._then);

  final _CatalogGroup _self;
  final $Res Function(_CatalogGroup) _then;

/// Create a copy of CatalogGroup
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? nameEn = freezed,Object? nameId = freezed,Object? photoMd = freezed,Object? totalProduct = null,Object? products = null,}) {
  return _then(_CatalogGroup(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,nameEn: freezed == nameEn ? _self.nameEn : nameEn // ignore: cast_nullable_to_non_nullable
as String?,nameId: freezed == nameId ? _self.nameId : nameId // ignore: cast_nullable_to_non_nullable
as String?,photoMd: freezed == photoMd ? _self.photoMd : photoMd // ignore: cast_nullable_to_non_nullable
as String?,totalProduct: null == totalProduct ? _self.totalProduct : totalProduct // ignore: cast_nullable_to_non_nullable
as int,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<CatalogItem>,
  ));
}


}


/// @nodoc
mixin _$CatalogListModel {

 List<CatalogItem> get data; CatalogMeta get meta; int get status; int get error;
/// Create a copy of CatalogListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogListModelCopyWith<CatalogListModel> get copyWith => _$CatalogListModelCopyWithImpl<CatalogListModel>(this as CatalogListModel, _$identity);

  /// Serializes this CatalogListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogListModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'CatalogListModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $CatalogListModelCopyWith<$Res>  {
  factory $CatalogListModelCopyWith(CatalogListModel value, $Res Function(CatalogListModel) _then) = _$CatalogListModelCopyWithImpl;
@useResult
$Res call({
 List<CatalogItem> data, CatalogMeta meta, int status, int error
});


$CatalogMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$CatalogListModelCopyWithImpl<$Res>
    implements $CatalogListModelCopyWith<$Res> {
  _$CatalogListModelCopyWithImpl(this._self, this._then);

  final CatalogListModel _self;
  final $Res Function(CatalogListModel) _then;

/// Create a copy of CatalogListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CatalogItem>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CatalogMeta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CatalogListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogMetaCopyWith<$Res> get meta {
  
  return $CatalogMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CatalogListModel].
extension CatalogListModelPatterns on CatalogListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogListModel value)  $default,){
final _that = this;
switch (_that) {
case _CatalogListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogListModel value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CatalogItem> data,  CatalogMeta meta,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogListModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CatalogItem> data,  CatalogMeta meta,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _CatalogListModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CatalogItem> data,  CatalogMeta meta,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _CatalogListModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CatalogListModel implements CatalogListModel {
  const _CatalogListModel({final  List<CatalogItem> data = const [], this.meta = const CatalogMeta(), this.status = 0, this.error = 0}): _data = data;
  factory _CatalogListModel.fromJson(Map<String, dynamic> json) => _$CatalogListModelFromJson(json);

 final  List<CatalogItem> _data;
@override@JsonKey() List<CatalogItem> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  CatalogMeta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of CatalogListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogListModelCopyWith<_CatalogListModel> get copyWith => __$CatalogListModelCopyWithImpl<_CatalogListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogListModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'CatalogListModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CatalogListModelCopyWith<$Res> implements $CatalogListModelCopyWith<$Res> {
  factory _$CatalogListModelCopyWith(_CatalogListModel value, $Res Function(_CatalogListModel) _then) = __$CatalogListModelCopyWithImpl;
@override @useResult
$Res call({
 List<CatalogItem> data, CatalogMeta meta, int status, int error
});


@override $CatalogMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$CatalogListModelCopyWithImpl<$Res>
    implements _$CatalogListModelCopyWith<$Res> {
  __$CatalogListModelCopyWithImpl(this._self, this._then);

  final _CatalogListModel _self;
  final $Res Function(_CatalogListModel) _then;

/// Create a copy of CatalogListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_CatalogListModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CatalogItem>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CatalogMeta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CatalogListModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogMetaCopyWith<$Res> get meta {
  
  return $CatalogMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$CatalogItem {

 int get id; String get name; String? get photoMd;/// `/catalog/lists` only.
 int? get productGroupId; String? get productGroupName;
/// Create a copy of CatalogItem
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogItemCopyWith<CatalogItem> get copyWith => _$CatalogItemCopyWithImpl<CatalogItem>(this as CatalogItem, _$identity);

  /// Serializes this CatalogItem to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoMd, photoMd) || other.photoMd == photoMd)&&(identical(other.productGroupId, productGroupId) || other.productGroupId == productGroupId)&&(identical(other.productGroupName, productGroupName) || other.productGroupName == productGroupName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photoMd,productGroupId,productGroupName);

@override
String toString() {
  return 'CatalogItem(id: $id, name: $name, photoMd: $photoMd, productGroupId: $productGroupId, productGroupName: $productGroupName)';
}


}

/// @nodoc
abstract mixin class $CatalogItemCopyWith<$Res>  {
  factory $CatalogItemCopyWith(CatalogItem value, $Res Function(CatalogItem) _then) = _$CatalogItemCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? photoMd, int? productGroupId, String? productGroupName
});




}
/// @nodoc
class _$CatalogItemCopyWithImpl<$Res>
    implements $CatalogItemCopyWith<$Res> {
  _$CatalogItemCopyWithImpl(this._self, this._then);

  final CatalogItem _self;
  final $Res Function(CatalogItem) _then;

/// Create a copy of CatalogItem
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photoMd = freezed,Object? productGroupId = freezed,Object? productGroupName = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoMd: freezed == photoMd ? _self.photoMd : photoMd // ignore: cast_nullable_to_non_nullable
as String?,productGroupId: freezed == productGroupId ? _self.productGroupId : productGroupId // ignore: cast_nullable_to_non_nullable
as int?,productGroupName: freezed == productGroupName ? _self.productGroupName : productGroupName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogItem].
extension CatalogItemPatterns on CatalogItem {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogItem value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogItem() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogItem value)  $default,){
final _that = this;
switch (_that) {
case _CatalogItem():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogItem value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogItem() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? photoMd,  int? productGroupId,  String? productGroupName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogItem() when $default != null:
return $default(_that.id,_that.name,_that.photoMd,_that.productGroupId,_that.productGroupName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? photoMd,  int? productGroupId,  String? productGroupName)  $default,) {final _that = this;
switch (_that) {
case _CatalogItem():
return $default(_that.id,_that.name,_that.photoMd,_that.productGroupId,_that.productGroupName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? photoMd,  int? productGroupId,  String? productGroupName)?  $default,) {final _that = this;
switch (_that) {
case _CatalogItem() when $default != null:
return $default(_that.id,_that.name,_that.photoMd,_that.productGroupId,_that.productGroupName);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CatalogItem implements CatalogItem {
  const _CatalogItem({this.id = 0, this.name = '', this.photoMd, this.productGroupId, this.productGroupName});
  factory _CatalogItem.fromJson(Map<String, dynamic> json) => _$CatalogItemFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override final  String? photoMd;
/// `/catalog/lists` only.
@override final  int? productGroupId;
@override final  String? productGroupName;

/// Create a copy of CatalogItem
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogItemCopyWith<_CatalogItem> get copyWith => __$CatalogItemCopyWithImpl<_CatalogItem>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogItemToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogItem&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photoMd, photoMd) || other.photoMd == photoMd)&&(identical(other.productGroupId, productGroupId) || other.productGroupId == productGroupId)&&(identical(other.productGroupName, productGroupName) || other.productGroupName == productGroupName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photoMd,productGroupId,productGroupName);

@override
String toString() {
  return 'CatalogItem(id: $id, name: $name, photoMd: $photoMd, productGroupId: $productGroupId, productGroupName: $productGroupName)';
}


}

/// @nodoc
abstract mixin class _$CatalogItemCopyWith<$Res> implements $CatalogItemCopyWith<$Res> {
  factory _$CatalogItemCopyWith(_CatalogItem value, $Res Function(_CatalogItem) _then) = __$CatalogItemCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? photoMd, int? productGroupId, String? productGroupName
});




}
/// @nodoc
class __$CatalogItemCopyWithImpl<$Res>
    implements _$CatalogItemCopyWith<$Res> {
  __$CatalogItemCopyWithImpl(this._self, this._then);

  final _CatalogItem _self;
  final $Res Function(_CatalogItem) _then;

/// Create a copy of CatalogItem
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photoMd = freezed,Object? productGroupId = freezed,Object? productGroupName = freezed,}) {
  return _then(_CatalogItem(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photoMd: freezed == photoMd ? _self.photoMd : photoMd // ignore: cast_nullable_to_non_nullable
as String?,productGroupId: freezed == productGroupId ? _self.productGroupId : productGroupId // ignore: cast_nullable_to_non_nullable
as int?,productGroupName: freezed == productGroupName ? _self.productGroupName : productGroupName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$CatalogBrandsModel {

 List<CatalogBrand> get data; CatalogMeta get meta; int get status; int get error;
/// Create a copy of CatalogBrandsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogBrandsModelCopyWith<CatalogBrandsModel> get copyWith => _$CatalogBrandsModelCopyWithImpl<CatalogBrandsModel>(this as CatalogBrandsModel, _$identity);

  /// Serializes this CatalogBrandsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogBrandsModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'CatalogBrandsModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $CatalogBrandsModelCopyWith<$Res>  {
  factory $CatalogBrandsModelCopyWith(CatalogBrandsModel value, $Res Function(CatalogBrandsModel) _then) = _$CatalogBrandsModelCopyWithImpl;
@useResult
$Res call({
 List<CatalogBrand> data, CatalogMeta meta, int status, int error
});


$CatalogMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$CatalogBrandsModelCopyWithImpl<$Res>
    implements $CatalogBrandsModelCopyWith<$Res> {
  _$CatalogBrandsModelCopyWithImpl(this._self, this._then);

  final CatalogBrandsModel _self;
  final $Res Function(CatalogBrandsModel) _then;

/// Create a copy of CatalogBrandsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<CatalogBrand>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CatalogMeta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of CatalogBrandsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogMetaCopyWith<$Res> get meta {
  
  return $CatalogMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [CatalogBrandsModel].
extension CatalogBrandsModelPatterns on CatalogBrandsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogBrandsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogBrandsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogBrandsModel value)  $default,){
final _that = this;
switch (_that) {
case _CatalogBrandsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogBrandsModel value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogBrandsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CatalogBrand> data,  CatalogMeta meta,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogBrandsModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CatalogBrand> data,  CatalogMeta meta,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _CatalogBrandsModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CatalogBrand> data,  CatalogMeta meta,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _CatalogBrandsModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CatalogBrandsModel implements CatalogBrandsModel {
  const _CatalogBrandsModel({final  List<CatalogBrand> data = const [], this.meta = const CatalogMeta(), this.status = 0, this.error = 0}): _data = data;
  factory _CatalogBrandsModel.fromJson(Map<String, dynamic> json) => _$CatalogBrandsModelFromJson(json);

 final  List<CatalogBrand> _data;
@override@JsonKey() List<CatalogBrand> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  CatalogMeta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of CatalogBrandsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogBrandsModelCopyWith<_CatalogBrandsModel> get copyWith => __$CatalogBrandsModelCopyWithImpl<_CatalogBrandsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogBrandsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogBrandsModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'CatalogBrandsModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$CatalogBrandsModelCopyWith<$Res> implements $CatalogBrandsModelCopyWith<$Res> {
  factory _$CatalogBrandsModelCopyWith(_CatalogBrandsModel value, $Res Function(_CatalogBrandsModel) _then) = __$CatalogBrandsModelCopyWithImpl;
@override @useResult
$Res call({
 List<CatalogBrand> data, CatalogMeta meta, int status, int error
});


@override $CatalogMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$CatalogBrandsModelCopyWithImpl<$Res>
    implements _$CatalogBrandsModelCopyWith<$Res> {
  __$CatalogBrandsModelCopyWithImpl(this._self, this._then);

  final _CatalogBrandsModel _self;
  final $Res Function(_CatalogBrandsModel) _then;

/// Create a copy of CatalogBrandsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_CatalogBrandsModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<CatalogBrand>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as CatalogMeta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of CatalogBrandsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CatalogMetaCopyWith<$Res> get meta {
  
  return $CatalogMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$CatalogBrand {

 int get id; String get name;
/// Create a copy of CatalogBrand
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogBrandCopyWith<CatalogBrand> get copyWith => _$CatalogBrandCopyWithImpl<CatalogBrand>(this as CatalogBrand, _$identity);

  /// Serializes this CatalogBrand to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogBrand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CatalogBrand(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CatalogBrandCopyWith<$Res>  {
  factory $CatalogBrandCopyWith(CatalogBrand value, $Res Function(CatalogBrand) _then) = _$CatalogBrandCopyWithImpl;
@useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class _$CatalogBrandCopyWithImpl<$Res>
    implements $CatalogBrandCopyWith<$Res> {
  _$CatalogBrandCopyWithImpl(this._self, this._then);

  final CatalogBrand _self;
  final $Res Function(CatalogBrand) _then;

/// Create a copy of CatalogBrand
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogBrand].
extension CatalogBrandPatterns on CatalogBrand {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogBrand value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogBrand() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogBrand value)  $default,){
final _that = this;
switch (_that) {
case _CatalogBrand():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogBrand value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogBrand() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogBrand() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name)  $default,) {final _that = this;
switch (_that) {
case _CatalogBrand():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name)?  $default,) {final _that = this;
switch (_that) {
case _CatalogBrand() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogBrand implements CatalogBrand {
  const _CatalogBrand({this.id = 0, this.name = ''});
  factory _CatalogBrand.fromJson(Map<String, dynamic> json) => _$CatalogBrandFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;

/// Create a copy of CatalogBrand
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogBrandCopyWith<_CatalogBrand> get copyWith => __$CatalogBrandCopyWithImpl<_CatalogBrand>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogBrandToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogBrand&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CatalogBrand(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CatalogBrandCopyWith<$Res> implements $CatalogBrandCopyWith<$Res> {
  factory _$CatalogBrandCopyWith(_CatalogBrand value, $Res Function(_CatalogBrand) _then) = __$CatalogBrandCopyWithImpl;
@override @useResult
$Res call({
 int id, String name
});




}
/// @nodoc
class __$CatalogBrandCopyWithImpl<$Res>
    implements _$CatalogBrandCopyWith<$Res> {
  __$CatalogBrandCopyWithImpl(this._self, this._then);

  final _CatalogBrand _self;
  final $Res Function(_CatalogBrand) _then;

/// Create a copy of CatalogBrand
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_CatalogBrand(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CatalogDetail {

 int get id; String get name; int? get labelId;/// Free label shown as a badge: "New Release", "Sale", ...
 String? get labelTag; String get description;/// Element shape not confirmed by backend yet (always empty so far):
/// kept raw, resolved by `CatalogDetailX.photos`.
 List<Object?> get productPhotos; List<CatalogSpec> get specifications; List<CatalogItem> get relatedProducts;
/// Create a copy of CatalogDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogDetailCopyWith<CatalogDetail> get copyWith => _$CatalogDetailCopyWithImpl<CatalogDetail>(this as CatalogDetail, _$identity);

  /// Serializes this CatalogDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.labelId, labelId) || other.labelId == labelId)&&(identical(other.labelTag, labelTag) || other.labelTag == labelTag)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.productPhotos, productPhotos)&&const DeepCollectionEquality().equals(other.specifications, specifications)&&const DeepCollectionEquality().equals(other.relatedProducts, relatedProducts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,labelId,labelTag,description,const DeepCollectionEquality().hash(productPhotos),const DeepCollectionEquality().hash(specifications),const DeepCollectionEquality().hash(relatedProducts));

@override
String toString() {
  return 'CatalogDetail(id: $id, name: $name, labelId: $labelId, labelTag: $labelTag, description: $description, productPhotos: $productPhotos, specifications: $specifications, relatedProducts: $relatedProducts)';
}


}

/// @nodoc
abstract mixin class $CatalogDetailCopyWith<$Res>  {
  factory $CatalogDetailCopyWith(CatalogDetail value, $Res Function(CatalogDetail) _then) = _$CatalogDetailCopyWithImpl;
@useResult
$Res call({
 int id, String name, int? labelId, String? labelTag, String description, List<Object?> productPhotos, List<CatalogSpec> specifications, List<CatalogItem> relatedProducts
});




}
/// @nodoc
class _$CatalogDetailCopyWithImpl<$Res>
    implements $CatalogDetailCopyWith<$Res> {
  _$CatalogDetailCopyWithImpl(this._self, this._then);

  final CatalogDetail _self;
  final $Res Function(CatalogDetail) _then;

/// Create a copy of CatalogDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? labelId = freezed,Object? labelTag = freezed,Object? description = null,Object? productPhotos = null,Object? specifications = null,Object? relatedProducts = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,labelId: freezed == labelId ? _self.labelId : labelId // ignore: cast_nullable_to_non_nullable
as int?,labelTag: freezed == labelTag ? _self.labelTag : labelTag // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,productPhotos: null == productPhotos ? _self.productPhotos : productPhotos // ignore: cast_nullable_to_non_nullable
as List<Object?>,specifications: null == specifications ? _self.specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<CatalogSpec>,relatedProducts: null == relatedProducts ? _self.relatedProducts : relatedProducts // ignore: cast_nullable_to_non_nullable
as List<CatalogItem>,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogDetail].
extension CatalogDetailPatterns on CatalogDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogDetail value)  $default,){
final _that = this;
switch (_that) {
case _CatalogDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogDetail value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int? labelId,  String? labelTag,  String description,  List<Object?> productPhotos,  List<CatalogSpec> specifications,  List<CatalogItem> relatedProducts)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogDetail() when $default != null:
return $default(_that.id,_that.name,_that.labelId,_that.labelTag,_that.description,_that.productPhotos,_that.specifications,_that.relatedProducts);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int? labelId,  String? labelTag,  String description,  List<Object?> productPhotos,  List<CatalogSpec> specifications,  List<CatalogItem> relatedProducts)  $default,) {final _that = this;
switch (_that) {
case _CatalogDetail():
return $default(_that.id,_that.name,_that.labelId,_that.labelTag,_that.description,_that.productPhotos,_that.specifications,_that.relatedProducts);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int? labelId,  String? labelTag,  String description,  List<Object?> productPhotos,  List<CatalogSpec> specifications,  List<CatalogItem> relatedProducts)?  $default,) {final _that = this;
switch (_that) {
case _CatalogDetail() when $default != null:
return $default(_that.id,_that.name,_that.labelId,_that.labelTag,_that.description,_that.productPhotos,_that.specifications,_that.relatedProducts);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CatalogDetail implements CatalogDetail {
  const _CatalogDetail({this.id = 0, this.name = '', this.labelId, this.labelTag, this.description = '', final  List<Object?> productPhotos = const [], final  List<CatalogSpec> specifications = const [], final  List<CatalogItem> relatedProducts = const []}): _productPhotos = productPhotos,_specifications = specifications,_relatedProducts = relatedProducts;
  factory _CatalogDetail.fromJson(Map<String, dynamic> json) => _$CatalogDetailFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override final  int? labelId;
/// Free label shown as a badge: "New Release", "Sale", ...
@override final  String? labelTag;
@override@JsonKey() final  String description;
/// Element shape not confirmed by backend yet (always empty so far):
/// kept raw, resolved by `CatalogDetailX.photos`.
 final  List<Object?> _productPhotos;
/// Element shape not confirmed by backend yet (always empty so far):
/// kept raw, resolved by `CatalogDetailX.photos`.
@override@JsonKey() List<Object?> get productPhotos {
  if (_productPhotos is EqualUnmodifiableListView) return _productPhotos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_productPhotos);
}

 final  List<CatalogSpec> _specifications;
@override@JsonKey() List<CatalogSpec> get specifications {
  if (_specifications is EqualUnmodifiableListView) return _specifications;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_specifications);
}

 final  List<CatalogItem> _relatedProducts;
@override@JsonKey() List<CatalogItem> get relatedProducts {
  if (_relatedProducts is EqualUnmodifiableListView) return _relatedProducts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_relatedProducts);
}


/// Create a copy of CatalogDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogDetailCopyWith<_CatalogDetail> get copyWith => __$CatalogDetailCopyWithImpl<_CatalogDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogDetail&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.labelId, labelId) || other.labelId == labelId)&&(identical(other.labelTag, labelTag) || other.labelTag == labelTag)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other._productPhotos, _productPhotos)&&const DeepCollectionEquality().equals(other._specifications, _specifications)&&const DeepCollectionEquality().equals(other._relatedProducts, _relatedProducts));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,labelId,labelTag,description,const DeepCollectionEquality().hash(_productPhotos),const DeepCollectionEquality().hash(_specifications),const DeepCollectionEquality().hash(_relatedProducts));

@override
String toString() {
  return 'CatalogDetail(id: $id, name: $name, labelId: $labelId, labelTag: $labelTag, description: $description, productPhotos: $productPhotos, specifications: $specifications, relatedProducts: $relatedProducts)';
}


}

/// @nodoc
abstract mixin class _$CatalogDetailCopyWith<$Res> implements $CatalogDetailCopyWith<$Res> {
  factory _$CatalogDetailCopyWith(_CatalogDetail value, $Res Function(_CatalogDetail) _then) = __$CatalogDetailCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int? labelId, String? labelTag, String description, List<Object?> productPhotos, List<CatalogSpec> specifications, List<CatalogItem> relatedProducts
});




}
/// @nodoc
class __$CatalogDetailCopyWithImpl<$Res>
    implements _$CatalogDetailCopyWith<$Res> {
  __$CatalogDetailCopyWithImpl(this._self, this._then);

  final _CatalogDetail _self;
  final $Res Function(_CatalogDetail) _then;

/// Create a copy of CatalogDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? labelId = freezed,Object? labelTag = freezed,Object? description = null,Object? productPhotos = null,Object? specifications = null,Object? relatedProducts = null,}) {
  return _then(_CatalogDetail(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,labelId: freezed == labelId ? _self.labelId : labelId // ignore: cast_nullable_to_non_nullable
as int?,labelTag: freezed == labelTag ? _self.labelTag : labelTag // ignore: cast_nullable_to_non_nullable
as String?,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,productPhotos: null == productPhotos ? _self._productPhotos : productPhotos // ignore: cast_nullable_to_non_nullable
as List<Object?>,specifications: null == specifications ? _self._specifications : specifications // ignore: cast_nullable_to_non_nullable
as List<CatalogSpec>,relatedProducts: null == relatedProducts ? _self._relatedProducts : relatedProducts // ignore: cast_nullable_to_non_nullable
as List<CatalogItem>,
  ));
}


}


/// @nodoc
mixin _$CatalogSpec {

 int? get id; String get name; String get value;
/// Create a copy of CatalogSpec
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogSpecCopyWith<CatalogSpec> get copyWith => _$CatalogSpecCopyWithImpl<CatalogSpec>(this as CatalogSpec, _$identity);

  /// Serializes this CatalogSpec to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogSpec&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,value);

@override
String toString() {
  return 'CatalogSpec(id: $id, name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class $CatalogSpecCopyWith<$Res>  {
  factory $CatalogSpecCopyWith(CatalogSpec value, $Res Function(CatalogSpec) _then) = _$CatalogSpecCopyWithImpl;
@useResult
$Res call({
 int? id, String name, String value
});




}
/// @nodoc
class _$CatalogSpecCopyWithImpl<$Res>
    implements $CatalogSpecCopyWith<$Res> {
  _$CatalogSpecCopyWithImpl(this._self, this._then);

  final CatalogSpec _self;
  final $Res Function(CatalogSpec) _then;

/// Create a copy of CatalogSpec
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = null,Object? value = null,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogSpec].
extension CatalogSpecPatterns on CatalogSpec {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogSpec value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogSpec() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogSpec value)  $default,){
final _that = this;
switch (_that) {
case _CatalogSpec():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogSpec value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogSpec() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String name,  String value)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogSpec() when $default != null:
return $default(_that.id,_that.name,_that.value);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String name,  String value)  $default,) {final _that = this;
switch (_that) {
case _CatalogSpec():
return $default(_that.id,_that.name,_that.value);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String name,  String value)?  $default,) {final _that = this;
switch (_that) {
case _CatalogSpec() when $default != null:
return $default(_that.id,_that.name,_that.value);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CatalogSpec implements CatalogSpec {
  const _CatalogSpec({this.id, this.name = '', this.value = ''});
  factory _CatalogSpec.fromJson(Map<String, dynamic> json) => _$CatalogSpecFromJson(json);

@override final  int? id;
@override@JsonKey() final  String name;
@override@JsonKey() final  String value;

/// Create a copy of CatalogSpec
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogSpecCopyWith<_CatalogSpec> get copyWith => __$CatalogSpecCopyWithImpl<_CatalogSpec>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogSpecToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogSpec&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.value, value) || other.value == value));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,value);

@override
String toString() {
  return 'CatalogSpec(id: $id, name: $name, value: $value)';
}


}

/// @nodoc
abstract mixin class _$CatalogSpecCopyWith<$Res> implements $CatalogSpecCopyWith<$Res> {
  factory _$CatalogSpecCopyWith(_CatalogSpec value, $Res Function(_CatalogSpec) _then) = __$CatalogSpecCopyWithImpl;
@override @useResult
$Res call({
 int? id, String name, String value
});




}
/// @nodoc
class __$CatalogSpecCopyWithImpl<$Res>
    implements _$CatalogSpecCopyWith<$Res> {
  __$CatalogSpecCopyWithImpl(this._self, this._then);

  final _CatalogSpec _self;
  final $Res Function(_CatalogSpec) _then;

/// Create a copy of CatalogSpec
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = null,Object? value = null,}) {
  return _then(_CatalogSpec(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,value: null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$CatalogMeta {

 int get total; int get page; int get offset; int get perPage; int get totalPage;
/// Create a copy of CatalogMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogMetaCopyWith<CatalogMeta> get copyWith => _$CatalogMetaCopyWithImpl<CatalogMeta>(this as CatalogMeta, _$identity);

  /// Serializes this CatalogMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,offset,perPage,totalPage);

@override
String toString() {
  return 'CatalogMeta(total: $total, page: $page, offset: $offset, perPage: $perPage, totalPage: $totalPage)';
}


}

/// @nodoc
abstract mixin class $CatalogMetaCopyWith<$Res>  {
  factory $CatalogMetaCopyWith(CatalogMeta value, $Res Function(CatalogMeta) _then) = _$CatalogMetaCopyWithImpl;
@useResult
$Res call({
 int total, int page, int offset, int perPage, int totalPage
});




}
/// @nodoc
class _$CatalogMetaCopyWithImpl<$Res>
    implements $CatalogMetaCopyWith<$Res> {
  _$CatalogMetaCopyWithImpl(this._self, this._then);

  final CatalogMeta _self;
  final $Res Function(CatalogMeta) _then;

/// Create a copy of CatalogMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? offset = null,Object? perPage = null,Object? totalPage = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogMeta].
extension CatalogMetaPatterns on CatalogMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogMeta value)  $default,){
final _that = this;
switch (_that) {
case _CatalogMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogMeta value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int offset,  int perPage,  int totalPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogMeta() when $default != null:
return $default(_that.total,_that.page,_that.offset,_that.perPage,_that.totalPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int offset,  int perPage,  int totalPage)  $default,) {final _that = this;
switch (_that) {
case _CatalogMeta():
return $default(_that.total,_that.page,_that.offset,_that.perPage,_that.totalPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int offset,  int perPage,  int totalPage)?  $default,) {final _that = this;
switch (_that) {
case _CatalogMeta() when $default != null:
return $default(_that.total,_that.page,_that.offset,_that.perPage,_that.totalPage);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CatalogMeta implements CatalogMeta {
  const _CatalogMeta({this.total = 0, this.page = 1, this.offset = 0, this.perPage = 15, this.totalPage = 1});
  factory _CatalogMeta.fromJson(Map<String, dynamic> json) => _$CatalogMetaFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int offset;
@override@JsonKey() final  int perPage;
@override@JsonKey() final  int totalPage;

/// Create a copy of CatalogMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogMetaCopyWith<_CatalogMeta> get copyWith => __$CatalogMetaCopyWithImpl<_CatalogMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CatalogMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,offset,perPage,totalPage);

@override
String toString() {
  return 'CatalogMeta(total: $total, page: $page, offset: $offset, perPage: $perPage, totalPage: $totalPage)';
}


}

/// @nodoc
abstract mixin class _$CatalogMetaCopyWith<$Res> implements $CatalogMetaCopyWith<$Res> {
  factory _$CatalogMetaCopyWith(_CatalogMeta value, $Res Function(_CatalogMeta) _then) = __$CatalogMetaCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int offset, int perPage, int totalPage
});




}
/// @nodoc
class __$CatalogMetaCopyWithImpl<$Res>
    implements _$CatalogMetaCopyWith<$Res> {
  __$CatalogMetaCopyWithImpl(this._self, this._then);

  final _CatalogMeta _self;
  final $Res Function(_CatalogMeta) _then;

/// Create a copy of CatalogMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? offset = null,Object? perPage = null,Object? totalPage = null,}) {
  return _then(_CatalogMeta(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
