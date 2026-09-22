// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'avatar_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AvatarListModel {

 List<AvatarsModel>? get data; Meta? get meta; int? get status; int? get error;
/// Create a copy of AvatarListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvatarListModelCopyWith<AvatarListModel> get copyWith => _$AvatarListModelCopyWithImpl<AvatarListModel>(this as AvatarListModel, _$identity);

  /// Serializes this AvatarListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarListModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'AvatarListModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $AvatarListModelCopyWith<$Res>  {
  factory $AvatarListModelCopyWith(AvatarListModel value, $Res Function(AvatarListModel) _then) = _$AvatarListModelCopyWithImpl;
@useResult
$Res call({
 List<AvatarsModel>? data, Meta? meta, int? status, int? error
});


$MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class _$AvatarListModelCopyWithImpl<$Res>
    implements $AvatarListModelCopyWith<$Res> {
  _$AvatarListModelCopyWithImpl(this._self, this._then);

  final AvatarListModel _self;
  final $Res Function(AvatarListModel) _then;

/// Create a copy of AvatarListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = freezed,Object? status = freezed,Object? error = freezed,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<AvatarsModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of AvatarListModel
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


/// Adds pattern-matching-related methods to [AvatarListModel].
extension AvatarListModelPatterns on AvatarListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvatarListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvatarListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvatarListModel value)  $default,){
final _that = this;
switch (_that) {
case _AvatarListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvatarListModel value)?  $default,){
final _that = this;
switch (_that) {
case _AvatarListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AvatarsModel>? data,  Meta? meta,  int? status,  int? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvatarListModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AvatarsModel>? data,  Meta? meta,  int? status,  int? error)  $default,) {final _that = this;
switch (_that) {
case _AvatarListModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AvatarsModel>? data,  Meta? meta,  int? status,  int? error)?  $default,) {final _that = this;
switch (_that) {
case _AvatarListModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AvatarListModel implements AvatarListModel {
  const _AvatarListModel({final  List<AvatarsModel>? data, this.meta, this.status, this.error}): _data = data;
  factory _AvatarListModel.fromJson(Map<String, dynamic> json) => _$AvatarListModelFromJson(json);

 final  List<AvatarsModel>? _data;
@override List<AvatarsModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  Meta? meta;
@override final  int? status;
@override final  int? error;

/// Create a copy of AvatarListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvatarListModelCopyWith<_AvatarListModel> get copyWith => __$AvatarListModelCopyWithImpl<_AvatarListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvatarListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvatarListModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'AvatarListModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$AvatarListModelCopyWith<$Res> implements $AvatarListModelCopyWith<$Res> {
  factory _$AvatarListModelCopyWith(_AvatarListModel value, $Res Function(_AvatarListModel) _then) = __$AvatarListModelCopyWithImpl;
@override @useResult
$Res call({
 List<AvatarsModel>? data, Meta? meta, int? status, int? error
});


@override $MetaCopyWith<$Res>? get meta;

}
/// @nodoc
class __$AvatarListModelCopyWithImpl<$Res>
    implements _$AvatarListModelCopyWith<$Res> {
  __$AvatarListModelCopyWithImpl(this._self, this._then);

  final _AvatarListModel _self;
  final $Res Function(_AvatarListModel) _then;

/// Create a copy of AvatarListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = freezed,Object? status = freezed,Object? error = freezed,}) {
  return _then(_AvatarListModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<AvatarsModel>?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int?,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of AvatarListModel
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
mixin _$AvatarsModel {

 String? get fimg; int? get id; String? get img; String? get name;
/// Create a copy of AvatarsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvatarsModelCopyWith<AvatarsModel> get copyWith => _$AvatarsModelCopyWithImpl<AvatarsModel>(this as AvatarsModel, _$identity);

  /// Serializes this AvatarsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarsModel&&(identical(other.fimg, fimg) || other.fimg == fimg)&&(identical(other.id, id) || other.id == id)&&(identical(other.img, img) || other.img == img)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fimg,id,img,name);

@override
String toString() {
  return 'AvatarsModel(fimg: $fimg, id: $id, img: $img, name: $name)';
}


}

/// @nodoc
abstract mixin class $AvatarsModelCopyWith<$Res>  {
  factory $AvatarsModelCopyWith(AvatarsModel value, $Res Function(AvatarsModel) _then) = _$AvatarsModelCopyWithImpl;
@useResult
$Res call({
 String? fimg, int? id, String? img, String? name
});




}
/// @nodoc
class _$AvatarsModelCopyWithImpl<$Res>
    implements $AvatarsModelCopyWith<$Res> {
  _$AvatarsModelCopyWithImpl(this._self, this._then);

  final AvatarsModel _self;
  final $Res Function(AvatarsModel) _then;

/// Create a copy of AvatarsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fimg = freezed,Object? id = freezed,Object? img = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
fimg: freezed == fimg ? _self.fimg : fimg // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,img: freezed == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AvatarsModel].
extension AvatarsModelPatterns on AvatarsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AvatarsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvatarsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AvatarsModel value)  $default,){
final _that = this;
switch (_that) {
case _AvatarsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AvatarsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AvatarsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? fimg,  int? id,  String? img,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvatarsModel() when $default != null:
return $default(_that.fimg,_that.id,_that.img,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? fimg,  int? id,  String? img,  String? name)  $default,) {final _that = this;
switch (_that) {
case _AvatarsModel():
return $default(_that.fimg,_that.id,_that.img,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? fimg,  int? id,  String? img,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _AvatarsModel() when $default != null:
return $default(_that.fimg,_that.id,_that.img,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AvatarsModel implements AvatarsModel {
  const _AvatarsModel({this.fimg, this.id, this.img, this.name});
  factory _AvatarsModel.fromJson(Map<String, dynamic> json) => _$AvatarsModelFromJson(json);

@override final  String? fimg;
@override final  int? id;
@override final  String? img;
@override final  String? name;

/// Create a copy of AvatarsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvatarsModelCopyWith<_AvatarsModel> get copyWith => __$AvatarsModelCopyWithImpl<_AvatarsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AvatarsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvatarsModel&&(identical(other.fimg, fimg) || other.fimg == fimg)&&(identical(other.id, id) || other.id == id)&&(identical(other.img, img) || other.img == img)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fimg,id,img,name);

@override
String toString() {
  return 'AvatarsModel(fimg: $fimg, id: $id, img: $img, name: $name)';
}


}

/// @nodoc
abstract mixin class _$AvatarsModelCopyWith<$Res> implements $AvatarsModelCopyWith<$Res> {
  factory _$AvatarsModelCopyWith(_AvatarsModel value, $Res Function(_AvatarsModel) _then) = __$AvatarsModelCopyWithImpl;
@override @useResult
$Res call({
 String? fimg, int? id, String? img, String? name
});




}
/// @nodoc
class __$AvatarsModelCopyWithImpl<$Res>
    implements _$AvatarsModelCopyWith<$Res> {
  __$AvatarsModelCopyWithImpl(this._self, this._then);

  final _AvatarsModel _self;
  final $Res Function(_AvatarsModel) _then;

/// Create a copy of AvatarsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fimg = freezed,Object? id = freezed,Object? img = freezed,Object? name = freezed,}) {
  return _then(_AvatarsModel(
fimg: freezed == fimg ? _self.fimg : fimg // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,img: freezed == img ? _self.img : img // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
