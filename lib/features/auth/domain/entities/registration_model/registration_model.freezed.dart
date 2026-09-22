// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RegistrationModel {

 String get email; String get name; String get phone; int get avatarId; String get otpCode;
/// Create a copy of RegistrationModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegistrationModelCopyWith<RegistrationModel> get copyWith => _$RegistrationModelCopyWithImpl<RegistrationModel>(this as RegistrationModel, _$identity);

  /// Serializes this RegistrationModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegistrationModel&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatarId, avatarId) || other.avatarId == avatarId)&&(identical(other.otpCode, otpCode) || other.otpCode == otpCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name,phone,avatarId,otpCode);

@override
String toString() {
  return 'RegistrationModel(email: $email, name: $name, phone: $phone, avatarId: $avatarId, otpCode: $otpCode)';
}


}

/// @nodoc
abstract mixin class $RegistrationModelCopyWith<$Res>  {
  factory $RegistrationModelCopyWith(RegistrationModel value, $Res Function(RegistrationModel) _then) = _$RegistrationModelCopyWithImpl;
@useResult
$Res call({
 String email, String name, String phone, int avatarId, String otpCode
});




}
/// @nodoc
class _$RegistrationModelCopyWithImpl<$Res>
    implements $RegistrationModelCopyWith<$Res> {
  _$RegistrationModelCopyWithImpl(this._self, this._then);

  final RegistrationModel _self;
  final $Res Function(RegistrationModel) _then;

/// Create a copy of RegistrationModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? email = null,Object? name = null,Object? phone = null,Object? avatarId = null,Object? otpCode = null,}) {
  return _then(_self.copyWith(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,avatarId: null == avatarId ? _self.avatarId : avatarId // ignore: cast_nullable_to_non_nullable
as int,otpCode: null == otpCode ? _self.otpCode : otpCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [RegistrationModel].
extension RegistrationModelPatterns on RegistrationModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RegistrationModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RegistrationModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RegistrationModel value)  $default,){
final _that = this;
switch (_that) {
case _RegistrationModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RegistrationModel value)?  $default,){
final _that = this;
switch (_that) {
case _RegistrationModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String email,  String name,  String phone,  int avatarId,  String otpCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RegistrationModel() when $default != null:
return $default(_that.email,_that.name,_that.phone,_that.avatarId,_that.otpCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String email,  String name,  String phone,  int avatarId,  String otpCode)  $default,) {final _that = this;
switch (_that) {
case _RegistrationModel():
return $default(_that.email,_that.name,_that.phone,_that.avatarId,_that.otpCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String email,  String name,  String phone,  int avatarId,  String otpCode)?  $default,) {final _that = this;
switch (_that) {
case _RegistrationModel() when $default != null:
return $default(_that.email,_that.name,_that.phone,_that.avatarId,_that.otpCode);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _RegistrationModel implements RegistrationModel {
  const _RegistrationModel({this.email = "", this.name = "", this.phone = "", this.avatarId = 0, this.otpCode = ""});
  factory _RegistrationModel.fromJson(Map<String, dynamic> json) => _$RegistrationModelFromJson(json);

@override@JsonKey() final  String email;
@override@JsonKey() final  String name;
@override@JsonKey() final  String phone;
@override@JsonKey() final  int avatarId;
@override@JsonKey() final  String otpCode;

/// Create a copy of RegistrationModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegistrationModelCopyWith<_RegistrationModel> get copyWith => __$RegistrationModelCopyWithImpl<_RegistrationModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RegistrationModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegistrationModel&&(identical(other.email, email) || other.email == email)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.avatarId, avatarId) || other.avatarId == avatarId)&&(identical(other.otpCode, otpCode) || other.otpCode == otpCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,email,name,phone,avatarId,otpCode);

@override
String toString() {
  return 'RegistrationModel(email: $email, name: $name, phone: $phone, avatarId: $avatarId, otpCode: $otpCode)';
}


}

/// @nodoc
abstract mixin class _$RegistrationModelCopyWith<$Res> implements $RegistrationModelCopyWith<$Res> {
  factory _$RegistrationModelCopyWith(_RegistrationModel value, $Res Function(_RegistrationModel) _then) = __$RegistrationModelCopyWithImpl;
@override @useResult
$Res call({
 String email, String name, String phone, int avatarId, String otpCode
});




}
/// @nodoc
class __$RegistrationModelCopyWithImpl<$Res>
    implements _$RegistrationModelCopyWith<$Res> {
  __$RegistrationModelCopyWithImpl(this._self, this._then);

  final _RegistrationModel _self;
  final $Res Function(_RegistrationModel) _then;

/// Create a copy of RegistrationModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? email = null,Object? name = null,Object? phone = null,Object? avatarId = null,Object? otpCode = null,}) {
  return _then(_RegistrationModel(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,avatarId: null == avatarId ? _self.avatarId : avatarId // ignore: cast_nullable_to_non_nullable
as int,otpCode: null == otpCode ? _self.otpCode : otpCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
