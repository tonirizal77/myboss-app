// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reasons_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReasonsModel {

 List<ReasonModel>? get data; int get status; int get error;
/// Create a copy of ReasonsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReasonsModelCopyWith<ReasonsModel> get copyWith => _$ReasonsModelCopyWithImpl<ReasonsModel>(this as ReasonsModel, _$identity);

  /// Serializes this ReasonsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReasonsModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),status,error);

@override
String toString() {
  return 'ReasonsModel(data: $data, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $ReasonsModelCopyWith<$Res>  {
  factory $ReasonsModelCopyWith(ReasonsModel value, $Res Function(ReasonsModel) _then) = _$ReasonsModelCopyWithImpl;
@useResult
$Res call({
 List<ReasonModel>? data, int status, int error
});




}
/// @nodoc
class _$ReasonsModelCopyWithImpl<$Res>
    implements $ReasonsModelCopyWith<$Res> {
  _$ReasonsModelCopyWithImpl(this._self, this._then);

  final ReasonsModel _self;
  final $Res Function(ReasonsModel) _then;

/// Create a copy of ReasonsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<ReasonModel>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ReasonsModel].
extension ReasonsModelPatterns on ReasonsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReasonsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReasonsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReasonsModel value)  $default,){
final _that = this;
switch (_that) {
case _ReasonsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReasonsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReasonsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReasonModel>? data,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReasonsModel() when $default != null:
return $default(_that.data,_that.status,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReasonModel>? data,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _ReasonsModel():
return $default(_that.data,_that.status,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReasonModel>? data,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _ReasonsModel() when $default != null:
return $default(_that.data,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ReasonsModel implements ReasonsModel {
  const _ReasonsModel({final  List<ReasonModel>? data, this.status = 0, this.error = 0}): _data = data;
  factory _ReasonsModel.fromJson(Map<String, dynamic> json) => _$ReasonsModelFromJson(json);

 final  List<ReasonModel>? _data;
@override List<ReasonModel>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of ReasonsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReasonsModelCopyWith<_ReasonsModel> get copyWith => __$ReasonsModelCopyWithImpl<_ReasonsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReasonsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReasonsModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),status,error);

@override
String toString() {
  return 'ReasonsModel(data: $data, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$ReasonsModelCopyWith<$Res> implements $ReasonsModelCopyWith<$Res> {
  factory _$ReasonsModelCopyWith(_ReasonsModel value, $Res Function(_ReasonsModel) _then) = __$ReasonsModelCopyWithImpl;
@override @useResult
$Res call({
 List<ReasonModel>? data, int status, int error
});




}
/// @nodoc
class __$ReasonsModelCopyWithImpl<$Res>
    implements _$ReasonsModelCopyWith<$Res> {
  __$ReasonsModelCopyWithImpl(this._self, this._then);

  final _ReasonsModel _self;
  final $Res Function(_ReasonsModel) _then;

/// Create a copy of ReasonsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? status = null,Object? error = null,}) {
  return _then(_ReasonsModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<ReasonModel>?,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$ReasonModel {

 int get reasonId; String get label;
/// Create a copy of ReasonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReasonModelCopyWith<ReasonModel> get copyWith => _$ReasonModelCopyWithImpl<ReasonModel>(this as ReasonModel, _$identity);

  /// Serializes this ReasonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReasonModel&&(identical(other.reasonId, reasonId) || other.reasonId == reasonId)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reasonId,label);

@override
String toString() {
  return 'ReasonModel(reasonId: $reasonId, label: $label)';
}


}

/// @nodoc
abstract mixin class $ReasonModelCopyWith<$Res>  {
  factory $ReasonModelCopyWith(ReasonModel value, $Res Function(ReasonModel) _then) = _$ReasonModelCopyWithImpl;
@useResult
$Res call({
 int reasonId, String label
});




}
/// @nodoc
class _$ReasonModelCopyWithImpl<$Res>
    implements $ReasonModelCopyWith<$Res> {
  _$ReasonModelCopyWithImpl(this._self, this._then);

  final ReasonModel _self;
  final $Res Function(ReasonModel) _then;

/// Create a copy of ReasonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reasonId = null,Object? label = null,}) {
  return _then(_self.copyWith(
reasonId: null == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ReasonModel].
extension ReasonModelPatterns on ReasonModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReasonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReasonModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReasonModel value)  $default,){
final _that = this;
switch (_that) {
case _ReasonModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReasonModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReasonModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int reasonId,  String label)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReasonModel() when $default != null:
return $default(_that.reasonId,_that.label);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int reasonId,  String label)  $default,) {final _that = this;
switch (_that) {
case _ReasonModel():
return $default(_that.reasonId,_that.label);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int reasonId,  String label)?  $default,) {final _that = this;
switch (_that) {
case _ReasonModel() when $default != null:
return $default(_that.reasonId,_that.label);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ReasonModel implements ReasonModel {
  const _ReasonModel({this.reasonId = 0, this.label = ""});
  factory _ReasonModel.fromJson(Map<String, dynamic> json) => _$ReasonModelFromJson(json);

@override@JsonKey() final  int reasonId;
@override@JsonKey() final  String label;

/// Create a copy of ReasonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReasonModelCopyWith<_ReasonModel> get copyWith => __$ReasonModelCopyWithImpl<_ReasonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReasonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReasonModel&&(identical(other.reasonId, reasonId) || other.reasonId == reasonId)&&(identical(other.label, label) || other.label == label));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,reasonId,label);

@override
String toString() {
  return 'ReasonModel(reasonId: $reasonId, label: $label)';
}


}

/// @nodoc
abstract mixin class _$ReasonModelCopyWith<$Res> implements $ReasonModelCopyWith<$Res> {
  factory _$ReasonModelCopyWith(_ReasonModel value, $Res Function(_ReasonModel) _then) = __$ReasonModelCopyWithImpl;
@override @useResult
$Res call({
 int reasonId, String label
});




}
/// @nodoc
class __$ReasonModelCopyWithImpl<$Res>
    implements _$ReasonModelCopyWith<$Res> {
  __$ReasonModelCopyWithImpl(this._self, this._then);

  final _ReasonModel _self;
  final $Res Function(_ReasonModel) _then;

/// Create a copy of ReasonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reasonId = null,Object? label = null,}) {
  return _then(_ReasonModel(
reasonId: null == reasonId ? _self.reasonId : reasonId // ignore: cast_nullable_to_non_nullable
as int,label: null == label ? _self.label : label // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
