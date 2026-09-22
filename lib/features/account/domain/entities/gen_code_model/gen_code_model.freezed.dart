// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gen_code_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GenCodeModel {

 int get id; String get codeExpiry; String get code;
/// Create a copy of GenCodeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GenCodeModelCopyWith<GenCodeModel> get copyWith => _$GenCodeModelCopyWithImpl<GenCodeModel>(this as GenCodeModel, _$identity);

  /// Serializes this GenCodeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GenCodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.codeExpiry, codeExpiry) || other.codeExpiry == codeExpiry)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codeExpiry,code);

@override
String toString() {
  return 'GenCodeModel(id: $id, codeExpiry: $codeExpiry, code: $code)';
}


}

/// @nodoc
abstract mixin class $GenCodeModelCopyWith<$Res>  {
  factory $GenCodeModelCopyWith(GenCodeModel value, $Res Function(GenCodeModel) _then) = _$GenCodeModelCopyWithImpl;
@useResult
$Res call({
 int id, String codeExpiry, String code
});




}
/// @nodoc
class _$GenCodeModelCopyWithImpl<$Res>
    implements $GenCodeModelCopyWith<$Res> {
  _$GenCodeModelCopyWithImpl(this._self, this._then);

  final GenCodeModel _self;
  final $Res Function(GenCodeModel) _then;

/// Create a copy of GenCodeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? codeExpiry = null,Object? code = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codeExpiry: null == codeExpiry ? _self.codeExpiry : codeExpiry // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [GenCodeModel].
extension GenCodeModelPatterns on GenCodeModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GenCodeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GenCodeModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GenCodeModel value)  $default,){
final _that = this;
switch (_that) {
case _GenCodeModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GenCodeModel value)?  $default,){
final _that = this;
switch (_that) {
case _GenCodeModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String codeExpiry,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GenCodeModel() when $default != null:
return $default(_that.id,_that.codeExpiry,_that.code);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String codeExpiry,  String code)  $default,) {final _that = this;
switch (_that) {
case _GenCodeModel():
return $default(_that.id,_that.codeExpiry,_that.code);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String codeExpiry,  String code)?  $default,) {final _that = this;
switch (_that) {
case _GenCodeModel() when $default != null:
return $default(_that.id,_that.codeExpiry,_that.code);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _GenCodeModel implements GenCodeModel {
  const _GenCodeModel({this.id = 0, this.codeExpiry = "", this.code = ""});
  factory _GenCodeModel.fromJson(Map<String, dynamic> json) => _$GenCodeModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String codeExpiry;
@override@JsonKey() final  String code;

/// Create a copy of GenCodeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GenCodeModelCopyWith<_GenCodeModel> get copyWith => __$GenCodeModelCopyWithImpl<_GenCodeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GenCodeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GenCodeModel&&(identical(other.id, id) || other.id == id)&&(identical(other.codeExpiry, codeExpiry) || other.codeExpiry == codeExpiry)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,codeExpiry,code);

@override
String toString() {
  return 'GenCodeModel(id: $id, codeExpiry: $codeExpiry, code: $code)';
}


}

/// @nodoc
abstract mixin class _$GenCodeModelCopyWith<$Res> implements $GenCodeModelCopyWith<$Res> {
  factory _$GenCodeModelCopyWith(_GenCodeModel value, $Res Function(_GenCodeModel) _then) = __$GenCodeModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String codeExpiry, String code
});




}
/// @nodoc
class __$GenCodeModelCopyWithImpl<$Res>
    implements _$GenCodeModelCopyWith<$Res> {
  __$GenCodeModelCopyWithImpl(this._self, this._then);

  final _GenCodeModel _self;
  final $Res Function(_GenCodeModel) _then;

/// Create a copy of GenCodeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? codeExpiry = null,Object? code = null,}) {
  return _then(_GenCodeModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,codeExpiry: null == codeExpiry ? _self.codeExpiry : codeExpiry // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
