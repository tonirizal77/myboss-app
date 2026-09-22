// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamps_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StampsOptionModel {

 List<StampsOption>? get data; Meta get meta; int get status; int get error;
/// Create a copy of StampsOptionModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsOptionModelCopyWith<StampsOptionModel> get copyWith => _$StampsOptionModelCopyWithImpl<StampsOptionModel>(this as StampsOptionModel, _$identity);

  /// Serializes this StampsOptionModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsOptionModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'StampsOptionModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $StampsOptionModelCopyWith<$Res>  {
  factory $StampsOptionModelCopyWith(StampsOptionModel value, $Res Function(StampsOptionModel) _then) = _$StampsOptionModelCopyWithImpl;
@useResult
$Res call({
 List<StampsOption>? data, Meta meta, int status, int error
});


$MetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$StampsOptionModelCopyWithImpl<$Res>
    implements $StampsOptionModelCopyWith<$Res> {
  _$StampsOptionModelCopyWithImpl(this._self, this._then);

  final StampsOptionModel _self;
  final $Res Function(StampsOptionModel) _then;

/// Create a copy of StampsOptionModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<StampsOption>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of StampsOptionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [StampsOptionModel].
extension StampsOptionModelPatterns on StampsOptionModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsOptionModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsOptionModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsOptionModel value)  $default,){
final _that = this;
switch (_that) {
case _StampsOptionModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsOptionModel value)?  $default,){
final _that = this;
switch (_that) {
case _StampsOptionModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StampsOption>? data,  Meta meta,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsOptionModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StampsOption>? data,  Meta meta,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _StampsOptionModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StampsOption>? data,  Meta meta,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _StampsOptionModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StampsOptionModel implements StampsOptionModel {
  const _StampsOptionModel({final  List<StampsOption>? data, this.meta = const Meta(), this.status = 0, this.error = 0}): _data = data;
  factory _StampsOptionModel.fromJson(Map<String, dynamic> json) => _$StampsOptionModelFromJson(json);

 final  List<StampsOption>? _data;
@override List<StampsOption>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  Meta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of StampsOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsOptionModelCopyWith<_StampsOptionModel> get copyWith => __$StampsOptionModelCopyWithImpl<_StampsOptionModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsOptionModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsOptionModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'StampsOptionModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StampsOptionModelCopyWith<$Res> implements $StampsOptionModelCopyWith<$Res> {
  factory _$StampsOptionModelCopyWith(_StampsOptionModel value, $Res Function(_StampsOptionModel) _then) = __$StampsOptionModelCopyWithImpl;
@override @useResult
$Res call({
 List<StampsOption>? data, Meta meta, int status, int error
});


@override $MetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$StampsOptionModelCopyWithImpl<$Res>
    implements _$StampsOptionModelCopyWith<$Res> {
  __$StampsOptionModelCopyWithImpl(this._self, this._then);

  final _StampsOptionModel _self;
  final $Res Function(_StampsOptionModel) _then;

/// Create a copy of StampsOptionModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_StampsOptionModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<StampsOption>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of StampsOptionModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$StampsOption {

 int get id; int get redeemedPoints; String get status; int get storeId; String get type;
/// Create a copy of StampsOption
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsOptionCopyWith<StampsOption> get copyWith => _$StampsOptionCopyWithImpl<StampsOption>(this as StampsOption, _$identity);

  /// Serializes this StampsOption to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsOption&&(identical(other.id, id) || other.id == id)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,redeemedPoints,status,storeId,type);

@override
String toString() {
  return 'StampsOption(id: $id, redeemedPoints: $redeemedPoints, status: $status, storeId: $storeId, type: $type)';
}


}

/// @nodoc
abstract mixin class $StampsOptionCopyWith<$Res>  {
  factory $StampsOptionCopyWith(StampsOption value, $Res Function(StampsOption) _then) = _$StampsOptionCopyWithImpl;
@useResult
$Res call({
 int id, int redeemedPoints, String status, int storeId, String type
});




}
/// @nodoc
class _$StampsOptionCopyWithImpl<$Res>
    implements $StampsOptionCopyWith<$Res> {
  _$StampsOptionCopyWithImpl(this._self, this._then);

  final StampsOption _self;
  final $Res Function(StampsOption) _then;

/// Create a copy of StampsOption
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? redeemedPoints = null,Object? status = null,Object? storeId = null,Object? type = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,redeemedPoints: null == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StampsOption].
extension StampsOptionPatterns on StampsOption {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsOption value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsOption() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsOption value)  $default,){
final _that = this;
switch (_that) {
case _StampsOption():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsOption value)?  $default,){
final _that = this;
switch (_that) {
case _StampsOption() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int redeemedPoints,  String status,  int storeId,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsOption() when $default != null:
return $default(_that.id,_that.redeemedPoints,_that.status,_that.storeId,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int redeemedPoints,  String status,  int storeId,  String type)  $default,) {final _that = this;
switch (_that) {
case _StampsOption():
return $default(_that.id,_that.redeemedPoints,_that.status,_that.storeId,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int redeemedPoints,  String status,  int storeId,  String type)?  $default,) {final _that = this;
switch (_that) {
case _StampsOption() when $default != null:
return $default(_that.id,_that.redeemedPoints,_that.status,_that.storeId,_that.type);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StampsOption implements StampsOption {
  const _StampsOption({this.id = 0, this.redeemedPoints = 0, this.status = "", this.storeId = 0, this.type = ""});
  factory _StampsOption.fromJson(Map<String, dynamic> json) => _$StampsOptionFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int redeemedPoints;
@override@JsonKey() final  String status;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  String type;

/// Create a copy of StampsOption
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsOptionCopyWith<_StampsOption> get copyWith => __$StampsOptionCopyWithImpl<_StampsOption>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsOptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsOption&&(identical(other.id, id) || other.id == id)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,redeemedPoints,status,storeId,type);

@override
String toString() {
  return 'StampsOption(id: $id, redeemedPoints: $redeemedPoints, status: $status, storeId: $storeId, type: $type)';
}


}

/// @nodoc
abstract mixin class _$StampsOptionCopyWith<$Res> implements $StampsOptionCopyWith<$Res> {
  factory _$StampsOptionCopyWith(_StampsOption value, $Res Function(_StampsOption) _then) = __$StampsOptionCopyWithImpl;
@override @useResult
$Res call({
 int id, int redeemedPoints, String status, int storeId, String type
});




}
/// @nodoc
class __$StampsOptionCopyWithImpl<$Res>
    implements _$StampsOptionCopyWith<$Res> {
  __$StampsOptionCopyWithImpl(this._self, this._then);

  final _StampsOption _self;
  final $Res Function(_StampsOption) _then;

/// Create a copy of StampsOption
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? redeemedPoints = null,Object? status = null,Object? storeId = null,Object? type = null,}) {
  return _then(_StampsOption(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,redeemedPoints: null == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
