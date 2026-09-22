// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_catalog_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuCatalogModel {

 List<ProductsModel> get data; Meta get meta; int get status; int get error;
/// Create a copy of MenuCatalogModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuCatalogModelCopyWith<MenuCatalogModel> get copyWith => _$MenuCatalogModelCopyWithImpl<MenuCatalogModel>(this as MenuCatalogModel, _$identity);

  /// Serializes this MenuCatalogModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuCatalogModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'MenuCatalogModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $MenuCatalogModelCopyWith<$Res>  {
  factory $MenuCatalogModelCopyWith(MenuCatalogModel value, $Res Function(MenuCatalogModel) _then) = _$MenuCatalogModelCopyWithImpl;
@useResult
$Res call({
 List<ProductsModel> data, Meta meta, int status, int error
});


$MetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$MenuCatalogModelCopyWithImpl<$Res>
    implements $MenuCatalogModelCopyWith<$Res> {
  _$MenuCatalogModelCopyWithImpl(this._self, this._then);

  final MenuCatalogModel _self;
  final $Res Function(MenuCatalogModel) _then;

/// Create a copy of MenuCatalogModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ProductsModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of MenuCatalogModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [MenuCatalogModel].
extension MenuCatalogModelPatterns on MenuCatalogModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuCatalogModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuCatalogModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuCatalogModel value)  $default,){
final _that = this;
switch (_that) {
case _MenuCatalogModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuCatalogModel value)?  $default,){
final _that = this;
switch (_that) {
case _MenuCatalogModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ProductsModel> data,  Meta meta,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuCatalogModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ProductsModel> data,  Meta meta,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _MenuCatalogModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ProductsModel> data,  Meta meta,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _MenuCatalogModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MenuCatalogModel implements MenuCatalogModel {
  const _MenuCatalogModel({final  List<ProductsModel> data = const [], this.meta = const Meta(), this.status = 0, this.error = 0}): _data = data;
  factory _MenuCatalogModel.fromJson(Map<String, dynamic> json) => _$MenuCatalogModelFromJson(json);

 final  List<ProductsModel> _data;
@override@JsonKey() List<ProductsModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  Meta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of MenuCatalogModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuCatalogModelCopyWith<_MenuCatalogModel> get copyWith => __$MenuCatalogModelCopyWithImpl<_MenuCatalogModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuCatalogModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuCatalogModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'MenuCatalogModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MenuCatalogModelCopyWith<$Res> implements $MenuCatalogModelCopyWith<$Res> {
  factory _$MenuCatalogModelCopyWith(_MenuCatalogModel value, $Res Function(_MenuCatalogModel) _then) = __$MenuCatalogModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductsModel> data, Meta meta, int status, int error
});


@override $MetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$MenuCatalogModelCopyWithImpl<$Res>
    implements _$MenuCatalogModelCopyWith<$Res> {
  __$MenuCatalogModelCopyWithImpl(this._self, this._then);

  final _MenuCatalogModel _self;
  final $Res Function(_MenuCatalogModel) _then;

/// Create a copy of MenuCatalogModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_MenuCatalogModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductsModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of MenuCatalogModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
