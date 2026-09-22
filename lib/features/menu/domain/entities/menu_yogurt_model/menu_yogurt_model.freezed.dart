// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_yogurt_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuYogurtModel {

 List<ProductsModel> get data; Meta get meta; int get status; int get error;
/// Create a copy of MenuYogurtModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuYogurtModelCopyWith<MenuYogurtModel> get copyWith => _$MenuYogurtModelCopyWithImpl<MenuYogurtModel>(this as MenuYogurtModel, _$identity);

  /// Serializes this MenuYogurtModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuYogurtModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'MenuYogurtModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $MenuYogurtModelCopyWith<$Res>  {
  factory $MenuYogurtModelCopyWith(MenuYogurtModel value, $Res Function(MenuYogurtModel) _then) = _$MenuYogurtModelCopyWithImpl;
@useResult
$Res call({
 List<ProductsModel> data, Meta meta, int status, int error
});


$MetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$MenuYogurtModelCopyWithImpl<$Res>
    implements $MenuYogurtModelCopyWith<$Res> {
  _$MenuYogurtModelCopyWithImpl(this._self, this._then);

  final MenuYogurtModel _self;
  final $Res Function(MenuYogurtModel) _then;

/// Create a copy of MenuYogurtModel
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
/// Create a copy of MenuYogurtModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [MenuYogurtModel].
extension MenuYogurtModelPatterns on MenuYogurtModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuYogurtModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuYogurtModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuYogurtModel value)  $default,){
final _that = this;
switch (_that) {
case _MenuYogurtModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuYogurtModel value)?  $default,){
final _that = this;
switch (_that) {
case _MenuYogurtModel() when $default != null:
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
case _MenuYogurtModel() when $default != null:
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
case _MenuYogurtModel():
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
case _MenuYogurtModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MenuYogurtModel implements MenuYogurtModel {
  const _MenuYogurtModel({final  List<ProductsModel> data = const [], this.meta = const Meta(), this.status = 0, this.error = 0}): _data = data;
  factory _MenuYogurtModel.fromJson(Map<String, dynamic> json) => _$MenuYogurtModelFromJson(json);

 final  List<ProductsModel> _data;
@override@JsonKey() List<ProductsModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  Meta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of MenuYogurtModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuYogurtModelCopyWith<_MenuYogurtModel> get copyWith => __$MenuYogurtModelCopyWithImpl<_MenuYogurtModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuYogurtModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuYogurtModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'MenuYogurtModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MenuYogurtModelCopyWith<$Res> implements $MenuYogurtModelCopyWith<$Res> {
  factory _$MenuYogurtModelCopyWith(_MenuYogurtModel value, $Res Function(_MenuYogurtModel) _then) = __$MenuYogurtModelCopyWithImpl;
@override @useResult
$Res call({
 List<ProductsModel> data, Meta meta, int status, int error
});


@override $MetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$MenuYogurtModelCopyWithImpl<$Res>
    implements _$MenuYogurtModelCopyWith<$Res> {
  __$MenuYogurtModelCopyWithImpl(this._self, this._then);

  final _MenuYogurtModel _self;
  final $Res Function(_MenuYogurtModel) _then;

/// Create a copy of MenuYogurtModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_MenuYogurtModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ProductsModel>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of MenuYogurtModel
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
