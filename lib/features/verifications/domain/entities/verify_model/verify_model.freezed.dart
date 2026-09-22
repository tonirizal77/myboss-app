// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyModel {

 FromPage get fromPage; String get phone; String get newPhone; String get email; String get newEmail; String get otp; String get newOtp; RegistrationModel get register;
/// Create a copy of VerifyModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyModelCopyWith<VerifyModel> get copyWith => _$VerifyModelCopyWithImpl<VerifyModel>(this as VerifyModel, _$identity);

  /// Serializes this VerifyModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyModel&&(identical(other.fromPage, fromPage) || other.fromPage == fromPage)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.newPhone, newPhone) || other.newPhone == newPhone)&&(identical(other.email, email) || other.email == email)&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.newOtp, newOtp) || other.newOtp == newOtp)&&(identical(other.register, register) || other.register == register));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fromPage,phone,newPhone,email,newEmail,otp,newOtp,register);

@override
String toString() {
  return 'VerifyModel(fromPage: $fromPage, phone: $phone, newPhone: $newPhone, email: $email, newEmail: $newEmail, otp: $otp, newOtp: $newOtp, register: $register)';
}


}

/// @nodoc
abstract mixin class $VerifyModelCopyWith<$Res>  {
  factory $VerifyModelCopyWith(VerifyModel value, $Res Function(VerifyModel) _then) = _$VerifyModelCopyWithImpl;
@useResult
$Res call({
 FromPage fromPage, String phone, String newPhone, String email, String newEmail, String otp, String newOtp, RegistrationModel register
});


$RegistrationModelCopyWith<$Res> get register;

}
/// @nodoc
class _$VerifyModelCopyWithImpl<$Res>
    implements $VerifyModelCopyWith<$Res> {
  _$VerifyModelCopyWithImpl(this._self, this._then);

  final VerifyModel _self;
  final $Res Function(VerifyModel) _then;

/// Create a copy of VerifyModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromPage = null,Object? phone = null,Object? newPhone = null,Object? email = null,Object? newEmail = null,Object? otp = null,Object? newOtp = null,Object? register = null,}) {
  return _then(_self.copyWith(
fromPage: null == fromPage ? _self.fromPage : fromPage // ignore: cast_nullable_to_non_nullable
as FromPage,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,newPhone: null == newPhone ? _self.newPhone : newPhone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,newOtp: null == newOtp ? _self.newOtp : newOtp // ignore: cast_nullable_to_non_nullable
as String,register: null == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as RegistrationModel,
  ));
}
/// Create a copy of VerifyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegistrationModelCopyWith<$Res> get register {
  
  return $RegistrationModelCopyWith<$Res>(_self.register, (value) {
    return _then(_self.copyWith(register: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyModel].
extension VerifyModelPatterns on VerifyModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyModel value)  $default,){
final _that = this;
switch (_that) {
case _VerifyModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyModel value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FromPage fromPage,  String phone,  String newPhone,  String email,  String newEmail,  String otp,  String newOtp,  RegistrationModel register)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyModel() when $default != null:
return $default(_that.fromPage,_that.phone,_that.newPhone,_that.email,_that.newEmail,_that.otp,_that.newOtp,_that.register);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FromPage fromPage,  String phone,  String newPhone,  String email,  String newEmail,  String otp,  String newOtp,  RegistrationModel register)  $default,) {final _that = this;
switch (_that) {
case _VerifyModel():
return $default(_that.fromPage,_that.phone,_that.newPhone,_that.email,_that.newEmail,_that.otp,_that.newOtp,_that.register);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FromPage fromPage,  String phone,  String newPhone,  String email,  String newEmail,  String otp,  String newOtp,  RegistrationModel register)?  $default,) {final _that = this;
switch (_that) {
case _VerifyModel() when $default != null:
return $default(_that.fromPage,_that.phone,_that.newPhone,_that.email,_that.newEmail,_that.otp,_that.newOtp,_that.register);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _VerifyModel implements VerifyModel {
  const _VerifyModel({this.fromPage = FromPage.initial, this.phone = "", this.newPhone = "", this.email = "", this.newEmail = "", this.otp = "", this.newOtp = "", this.register = const RegistrationModel()});
  factory _VerifyModel.fromJson(Map<String, dynamic> json) => _$VerifyModelFromJson(json);

@override@JsonKey() final  FromPage fromPage;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String newPhone;
@override@JsonKey() final  String email;
@override@JsonKey() final  String newEmail;
@override@JsonKey() final  String otp;
@override@JsonKey() final  String newOtp;
@override@JsonKey() final  RegistrationModel register;

/// Create a copy of VerifyModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyModelCopyWith<_VerifyModel> get copyWith => __$VerifyModelCopyWithImpl<_VerifyModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyModel&&(identical(other.fromPage, fromPage) || other.fromPage == fromPage)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.newPhone, newPhone) || other.newPhone == newPhone)&&(identical(other.email, email) || other.email == email)&&(identical(other.newEmail, newEmail) || other.newEmail == newEmail)&&(identical(other.otp, otp) || other.otp == otp)&&(identical(other.newOtp, newOtp) || other.newOtp == newOtp)&&(identical(other.register, register) || other.register == register));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fromPage,phone,newPhone,email,newEmail,otp,newOtp,register);

@override
String toString() {
  return 'VerifyModel(fromPage: $fromPage, phone: $phone, newPhone: $newPhone, email: $email, newEmail: $newEmail, otp: $otp, newOtp: $newOtp, register: $register)';
}


}

/// @nodoc
abstract mixin class _$VerifyModelCopyWith<$Res> implements $VerifyModelCopyWith<$Res> {
  factory _$VerifyModelCopyWith(_VerifyModel value, $Res Function(_VerifyModel) _then) = __$VerifyModelCopyWithImpl;
@override @useResult
$Res call({
 FromPage fromPage, String phone, String newPhone, String email, String newEmail, String otp, String newOtp, RegistrationModel register
});


@override $RegistrationModelCopyWith<$Res> get register;

}
/// @nodoc
class __$VerifyModelCopyWithImpl<$Res>
    implements _$VerifyModelCopyWith<$Res> {
  __$VerifyModelCopyWithImpl(this._self, this._then);

  final _VerifyModel _self;
  final $Res Function(_VerifyModel) _then;

/// Create a copy of VerifyModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromPage = null,Object? phone = null,Object? newPhone = null,Object? email = null,Object? newEmail = null,Object? otp = null,Object? newOtp = null,Object? register = null,}) {
  return _then(_VerifyModel(
fromPage: null == fromPage ? _self.fromPage : fromPage // ignore: cast_nullable_to_non_nullable
as FromPage,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,newPhone: null == newPhone ? _self.newPhone : newPhone // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,newEmail: null == newEmail ? _self.newEmail : newEmail // ignore: cast_nullable_to_non_nullable
as String,otp: null == otp ? _self.otp : otp // ignore: cast_nullable_to_non_nullable
as String,newOtp: null == newOtp ? _self.newOtp : newOtp // ignore: cast_nullable_to_non_nullable
as String,register: null == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as RegistrationModel,
  ));
}

/// Create a copy of VerifyModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegistrationModelCopyWith<$Res> get register {
  
  return $RegistrationModelCopyWith<$Res>(_self.register, (value) {
    return _then(_self.copyWith(register: value));
  });
}
}

// dart format on
