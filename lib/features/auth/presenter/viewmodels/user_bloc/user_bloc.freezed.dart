// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$UserEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent()';
}


}

/// @nodoc
class $UserEventCopyWith<$Res>  {
$UserEventCopyWith(UserEvent _, $Res Function(UserEvent) __);
}


/// Adds pattern-matching-related methods to [UserEvent].
extension UserEventPatterns on UserEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( UserCheckAuth value)?  userCheckAuth,TResult Function( _UserSuccessVerify value)?  userSuccessVerify,TResult Function( UserLogout value)?  userLogout,TResult Function( UserDeleteAccount value)?  userDeleteAccount,TResult Function( _UserReset value)?  userReset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case UserCheckAuth() when userCheckAuth != null:
return userCheckAuth(_that);case _UserSuccessVerify() when userSuccessVerify != null:
return userSuccessVerify(_that);case UserLogout() when userLogout != null:
return userLogout(_that);case UserDeleteAccount() when userDeleteAccount != null:
return userDeleteAccount(_that);case _UserReset() when userReset != null:
return userReset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( UserCheckAuth value)  userCheckAuth,required TResult Function( _UserSuccessVerify value)  userSuccessVerify,required TResult Function( UserLogout value)  userLogout,required TResult Function( UserDeleteAccount value)  userDeleteAccount,required TResult Function( _UserReset value)  userReset,}){
final _that = this;
switch (_that) {
case UserCheckAuth():
return userCheckAuth(_that);case _UserSuccessVerify():
return userSuccessVerify(_that);case UserLogout():
return userLogout(_that);case UserDeleteAccount():
return userDeleteAccount(_that);case _UserReset():
return userReset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( UserCheckAuth value)?  userCheckAuth,TResult? Function( _UserSuccessVerify value)?  userSuccessVerify,TResult? Function( UserLogout value)?  userLogout,TResult? Function( UserDeleteAccount value)?  userDeleteAccount,TResult? Function( _UserReset value)?  userReset,}){
final _that = this;
switch (_that) {
case UserCheckAuth() when userCheckAuth != null:
return userCheckAuth(_that);case _UserSuccessVerify() when userSuccessVerify != null:
return userSuccessVerify(_that);case UserLogout() when userLogout != null:
return userLogout(_that);case UserDeleteAccount() when userDeleteAccount != null:
return userDeleteAccount(_that);case _UserReset() when userReset != null:
return userReset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( bool forceLogout,  String? errorMessage)?  userCheckAuth,TResult Function( String phone,  DataMap result)?  userSuccessVerify,TResult Function()?  userLogout,TResult Function()?  userDeleteAccount,TResult Function()?  userReset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case UserCheckAuth() when userCheckAuth != null:
return userCheckAuth(_that.forceLogout,_that.errorMessage);case _UserSuccessVerify() when userSuccessVerify != null:
return userSuccessVerify(_that.phone,_that.result);case UserLogout() when userLogout != null:
return userLogout();case UserDeleteAccount() when userDeleteAccount != null:
return userDeleteAccount();case _UserReset() when userReset != null:
return userReset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( bool forceLogout,  String? errorMessage)  userCheckAuth,required TResult Function( String phone,  DataMap result)  userSuccessVerify,required TResult Function()  userLogout,required TResult Function()  userDeleteAccount,required TResult Function()  userReset,}) {final _that = this;
switch (_that) {
case UserCheckAuth():
return userCheckAuth(_that.forceLogout,_that.errorMessage);case _UserSuccessVerify():
return userSuccessVerify(_that.phone,_that.result);case UserLogout():
return userLogout();case UserDeleteAccount():
return userDeleteAccount();case _UserReset():
return userReset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( bool forceLogout,  String? errorMessage)?  userCheckAuth,TResult? Function( String phone,  DataMap result)?  userSuccessVerify,TResult? Function()?  userLogout,TResult? Function()?  userDeleteAccount,TResult? Function()?  userReset,}) {final _that = this;
switch (_that) {
case UserCheckAuth() when userCheckAuth != null:
return userCheckAuth(_that.forceLogout,_that.errorMessage);case _UserSuccessVerify() when userSuccessVerify != null:
return userSuccessVerify(_that.phone,_that.result);case UserLogout() when userLogout != null:
return userLogout();case UserDeleteAccount() when userDeleteAccount != null:
return userDeleteAccount();case _UserReset() when userReset != null:
return userReset();case _:
  return null;

}
}

}

/// @nodoc


class UserCheckAuth implements UserEvent {
  const UserCheckAuth({this.forceLogout = false, this.errorMessage});
  

@JsonKey() final  bool forceLogout;
 final  String? errorMessage;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCheckAuthCopyWith<UserCheckAuth> get copyWith => _$UserCheckAuthCopyWithImpl<UserCheckAuth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserCheckAuth&&(identical(other.forceLogout, forceLogout) || other.forceLogout == forceLogout)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,forceLogout,errorMessage);

@override
String toString() {
  return 'UserEvent.userCheckAuth(forceLogout: $forceLogout, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $UserCheckAuthCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory $UserCheckAuthCopyWith(UserCheckAuth value, $Res Function(UserCheckAuth) _then) = _$UserCheckAuthCopyWithImpl;
@useResult
$Res call({
 bool forceLogout, String? errorMessage
});




}
/// @nodoc
class _$UserCheckAuthCopyWithImpl<$Res>
    implements $UserCheckAuthCopyWith<$Res> {
  _$UserCheckAuthCopyWithImpl(this._self, this._then);

  final UserCheckAuth _self;
  final $Res Function(UserCheckAuth) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? forceLogout = null,Object? errorMessage = freezed,}) {
  return _then(UserCheckAuth(
forceLogout: null == forceLogout ? _self.forceLogout : forceLogout // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class _UserSuccessVerify implements UserEvent {
  const _UserSuccessVerify({required this.phone, required final  DataMap result}): _result = result;
  

 final  String phone;
 final  DataMap _result;
 DataMap get result {
  if (_result is EqualUnmodifiableMapView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_result);
}


/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserSuccessVerifyCopyWith<_UserSuccessVerify> get copyWith => __$UserSuccessVerifyCopyWithImpl<_UserSuccessVerify>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserSuccessVerify&&(identical(other.phone, phone) || other.phone == phone)&&const DeepCollectionEquality().equals(other._result, _result));
}


@override
int get hashCode => Object.hash(runtimeType,phone,const DeepCollectionEquality().hash(_result));

@override
String toString() {
  return 'UserEvent.userSuccessVerify(phone: $phone, result: $result)';
}


}

/// @nodoc
abstract mixin class _$UserSuccessVerifyCopyWith<$Res> implements $UserEventCopyWith<$Res> {
  factory _$UserSuccessVerifyCopyWith(_UserSuccessVerify value, $Res Function(_UserSuccessVerify) _then) = __$UserSuccessVerifyCopyWithImpl;
@useResult
$Res call({
 String phone, DataMap result
});




}
/// @nodoc
class __$UserSuccessVerifyCopyWithImpl<$Res>
    implements _$UserSuccessVerifyCopyWith<$Res> {
  __$UserSuccessVerifyCopyWithImpl(this._self, this._then);

  final _UserSuccessVerify _self;
  final $Res Function(_UserSuccessVerify) _then;

/// Create a copy of UserEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? result = null,}) {
  return _then(_UserSuccessVerify(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,result: null == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}


}

/// @nodoc


class UserLogout implements UserEvent {
  const UserLogout();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserLogout);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.userLogout()';
}


}




/// @nodoc


class UserDeleteAccount implements UserEvent {
  const UserDeleteAccount();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserDeleteAccount);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.userDeleteAccount()';
}


}




/// @nodoc


class _UserReset implements UserEvent {
  const _UserReset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'UserEvent.userReset()';
}


}




/// @nodoc
mixin _$UserState {

 bool get isLoading; Respons get respon; String get errorMessage; Failures get error; bool get isGuest; TokenModel get dataToken; Map<String, dynamic> get errorOtp; Map<String, dynamic> get successOtp; Type get event; String get phoneOtp; ActionConfirm get actionConfirmOtp; FromPage get fromPage; FromPage get verificationTo; LoginModel get dataLogin; RegistrationModel get register;/// Status
///
 Status get statusCheckAuth; Status get statusLogin; Status get statusLogout; Status get statusDeleteAccount; Status get statusRegister; Status get statusSendOtp; Status get statusGetOtp; Status get statusConfirmOtp; Status get statusRefreshToken;
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserStateCopyWith<UserState> get copyWith => _$UserStateCopyWithImpl<UserState>(this as UserState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.error, error) || other.error == error)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.dataToken, dataToken) || other.dataToken == dataToken)&&const DeepCollectionEquality().equals(other.errorOtp, errorOtp)&&const DeepCollectionEquality().equals(other.successOtp, successOtp)&&(identical(other.event, event) || other.event == event)&&(identical(other.phoneOtp, phoneOtp) || other.phoneOtp == phoneOtp)&&(identical(other.actionConfirmOtp, actionConfirmOtp) || other.actionConfirmOtp == actionConfirmOtp)&&(identical(other.fromPage, fromPage) || other.fromPage == fromPage)&&(identical(other.verificationTo, verificationTo) || other.verificationTo == verificationTo)&&(identical(other.dataLogin, dataLogin) || other.dataLogin == dataLogin)&&(identical(other.register, register) || other.register == register)&&(identical(other.statusCheckAuth, statusCheckAuth) || other.statusCheckAuth == statusCheckAuth)&&(identical(other.statusLogin, statusLogin) || other.statusLogin == statusLogin)&&(identical(other.statusLogout, statusLogout) || other.statusLogout == statusLogout)&&(identical(other.statusDeleteAccount, statusDeleteAccount) || other.statusDeleteAccount == statusDeleteAccount)&&(identical(other.statusRegister, statusRegister) || other.statusRegister == statusRegister)&&(identical(other.statusSendOtp, statusSendOtp) || other.statusSendOtp == statusSendOtp)&&(identical(other.statusGetOtp, statusGetOtp) || other.statusGetOtp == statusGetOtp)&&(identical(other.statusConfirmOtp, statusConfirmOtp) || other.statusConfirmOtp == statusConfirmOtp)&&(identical(other.statusRefreshToken, statusRefreshToken) || other.statusRefreshToken == statusRefreshToken));
}


@override
int get hashCode => Object.hashAll([runtimeType,isLoading,respon,errorMessage,error,isGuest,dataToken,const DeepCollectionEquality().hash(errorOtp),const DeepCollectionEquality().hash(successOtp),event,phoneOtp,actionConfirmOtp,fromPage,verificationTo,dataLogin,register,statusCheckAuth,statusLogin,statusLogout,statusDeleteAccount,statusRegister,statusSendOtp,statusGetOtp,statusConfirmOtp,statusRefreshToken]);

@override
String toString() {
  return 'UserState(isLoading: $isLoading, respon: $respon, errorMessage: $errorMessage, error: $error, isGuest: $isGuest, dataToken: $dataToken, errorOtp: $errorOtp, successOtp: $successOtp, event: $event, phoneOtp: $phoneOtp, actionConfirmOtp: $actionConfirmOtp, fromPage: $fromPage, verificationTo: $verificationTo, dataLogin: $dataLogin, register: $register, statusCheckAuth: $statusCheckAuth, statusLogin: $statusLogin, statusLogout: $statusLogout, statusDeleteAccount: $statusDeleteAccount, statusRegister: $statusRegister, statusSendOtp: $statusSendOtp, statusGetOtp: $statusGetOtp, statusConfirmOtp: $statusConfirmOtp, statusRefreshToken: $statusRefreshToken)';
}


}

/// @nodoc
abstract mixin class $UserStateCopyWith<$Res>  {
  factory $UserStateCopyWith(UserState value, $Res Function(UserState) _then) = _$UserStateCopyWithImpl;
@useResult
$Res call({
 bool isLoading, Respons respon, String errorMessage, Failures error, bool isGuest, TokenModel dataToken, Map<String, dynamic> errorOtp, Map<String, dynamic> successOtp, Type event, String phoneOtp, ActionConfirm actionConfirmOtp, FromPage fromPage, FromPage verificationTo, LoginModel dataLogin, RegistrationModel register, Status statusCheckAuth, Status statusLogin, Status statusLogout, Status statusDeleteAccount, Status statusRegister, Status statusSendOtp, Status statusGetOtp, Status statusConfirmOtp, Status statusRefreshToken
});


$FailuresCopyWith<$Res> get error;$TokenModelCopyWith<$Res> get dataToken;$LoginModelCopyWith<$Res> get dataLogin;$RegistrationModelCopyWith<$Res> get register;

}
/// @nodoc
class _$UserStateCopyWithImpl<$Res>
    implements $UserStateCopyWith<$Res> {
  _$UserStateCopyWithImpl(this._self, this._then);

  final UserState _self;
  final $Res Function(UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isLoading = null,Object? respon = null,Object? errorMessage = null,Object? error = null,Object? isGuest = null,Object? dataToken = null,Object? errorOtp = null,Object? successOtp = null,Object? event = null,Object? phoneOtp = null,Object? actionConfirmOtp = null,Object? fromPage = null,Object? verificationTo = null,Object? dataLogin = null,Object? register = null,Object? statusCheckAuth = null,Object? statusLogin = null,Object? statusLogout = null,Object? statusDeleteAccount = null,Object? statusRegister = null,Object? statusSendOtp = null,Object? statusGetOtp = null,Object? statusConfirmOtp = null,Object? statusRefreshToken = null,}) {
  return _then(_self.copyWith(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failures,isGuest: null == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool,dataToken: null == dataToken ? _self.dataToken : dataToken // ignore: cast_nullable_to_non_nullable
as TokenModel,errorOtp: null == errorOtp ? _self.errorOtp : errorOtp // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,successOtp: null == successOtp ? _self.successOtp : successOtp // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type,phoneOtp: null == phoneOtp ? _self.phoneOtp : phoneOtp // ignore: cast_nullable_to_non_nullable
as String,actionConfirmOtp: null == actionConfirmOtp ? _self.actionConfirmOtp : actionConfirmOtp // ignore: cast_nullable_to_non_nullable
as ActionConfirm,fromPage: null == fromPage ? _self.fromPage : fromPage // ignore: cast_nullable_to_non_nullable
as FromPage,verificationTo: null == verificationTo ? _self.verificationTo : verificationTo // ignore: cast_nullable_to_non_nullable
as FromPage,dataLogin: null == dataLogin ? _self.dataLogin : dataLogin // ignore: cast_nullable_to_non_nullable
as LoginModel,register: null == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as RegistrationModel,statusCheckAuth: null == statusCheckAuth ? _self.statusCheckAuth : statusCheckAuth // ignore: cast_nullable_to_non_nullable
as Status,statusLogin: null == statusLogin ? _self.statusLogin : statusLogin // ignore: cast_nullable_to_non_nullable
as Status,statusLogout: null == statusLogout ? _self.statusLogout : statusLogout // ignore: cast_nullable_to_non_nullable
as Status,statusDeleteAccount: null == statusDeleteAccount ? _self.statusDeleteAccount : statusDeleteAccount // ignore: cast_nullable_to_non_nullable
as Status,statusRegister: null == statusRegister ? _self.statusRegister : statusRegister // ignore: cast_nullable_to_non_nullable
as Status,statusSendOtp: null == statusSendOtp ? _self.statusSendOtp : statusSendOtp // ignore: cast_nullable_to_non_nullable
as Status,statusGetOtp: null == statusGetOtp ? _self.statusGetOtp : statusGetOtp // ignore: cast_nullable_to_non_nullable
as Status,statusConfirmOtp: null == statusConfirmOtp ? _self.statusConfirmOtp : statusConfirmOtp // ignore: cast_nullable_to_non_nullable
as Status,statusRefreshToken: null == statusRefreshToken ? _self.statusRefreshToken : statusRefreshToken // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}
/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailuresCopyWith<$Res> get error {
  
  return $FailuresCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenModelCopyWith<$Res> get dataToken {
  
  return $TokenModelCopyWith<$Res>(_self.dataToken, (value) {
    return _then(_self.copyWith(dataToken: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginModelCopyWith<$Res> get dataLogin {
  
  return $LoginModelCopyWith<$Res>(_self.dataLogin, (value) {
    return _then(_self.copyWith(dataLogin: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$RegistrationModelCopyWith<$Res> get register {
  
  return $RegistrationModelCopyWith<$Res>(_self.register, (value) {
    return _then(_self.copyWith(register: value));
  });
}
}


/// Adds pattern-matching-related methods to [UserState].
extension UserStatePatterns on UserState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserState value)  $default,){
final _that = this;
switch (_that) {
case _UserState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserState value)?  $default,){
final _that = this;
switch (_that) {
case _UserState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool isLoading,  Respons respon,  String errorMessage,  Failures error,  bool isGuest,  TokenModel dataToken,  Map<String, dynamic> errorOtp,  Map<String, dynamic> successOtp,  Type event,  String phoneOtp,  ActionConfirm actionConfirmOtp,  FromPage fromPage,  FromPage verificationTo,  LoginModel dataLogin,  RegistrationModel register,  Status statusCheckAuth,  Status statusLogin,  Status statusLogout,  Status statusDeleteAccount,  Status statusRegister,  Status statusSendOtp,  Status statusGetOtp,  Status statusConfirmOtp,  Status statusRefreshToken)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.isLoading,_that.respon,_that.errorMessage,_that.error,_that.isGuest,_that.dataToken,_that.errorOtp,_that.successOtp,_that.event,_that.phoneOtp,_that.actionConfirmOtp,_that.fromPage,_that.verificationTo,_that.dataLogin,_that.register,_that.statusCheckAuth,_that.statusLogin,_that.statusLogout,_that.statusDeleteAccount,_that.statusRegister,_that.statusSendOtp,_that.statusGetOtp,_that.statusConfirmOtp,_that.statusRefreshToken);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool isLoading,  Respons respon,  String errorMessage,  Failures error,  bool isGuest,  TokenModel dataToken,  Map<String, dynamic> errorOtp,  Map<String, dynamic> successOtp,  Type event,  String phoneOtp,  ActionConfirm actionConfirmOtp,  FromPage fromPage,  FromPage verificationTo,  LoginModel dataLogin,  RegistrationModel register,  Status statusCheckAuth,  Status statusLogin,  Status statusLogout,  Status statusDeleteAccount,  Status statusRegister,  Status statusSendOtp,  Status statusGetOtp,  Status statusConfirmOtp,  Status statusRefreshToken)  $default,) {final _that = this;
switch (_that) {
case _UserState():
return $default(_that.isLoading,_that.respon,_that.errorMessage,_that.error,_that.isGuest,_that.dataToken,_that.errorOtp,_that.successOtp,_that.event,_that.phoneOtp,_that.actionConfirmOtp,_that.fromPage,_that.verificationTo,_that.dataLogin,_that.register,_that.statusCheckAuth,_that.statusLogin,_that.statusLogout,_that.statusDeleteAccount,_that.statusRegister,_that.statusSendOtp,_that.statusGetOtp,_that.statusConfirmOtp,_that.statusRefreshToken);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool isLoading,  Respons respon,  String errorMessage,  Failures error,  bool isGuest,  TokenModel dataToken,  Map<String, dynamic> errorOtp,  Map<String, dynamic> successOtp,  Type event,  String phoneOtp,  ActionConfirm actionConfirmOtp,  FromPage fromPage,  FromPage verificationTo,  LoginModel dataLogin,  RegistrationModel register,  Status statusCheckAuth,  Status statusLogin,  Status statusLogout,  Status statusDeleteAccount,  Status statusRegister,  Status statusSendOtp,  Status statusGetOtp,  Status statusConfirmOtp,  Status statusRefreshToken)?  $default,) {final _that = this;
switch (_that) {
case _UserState() when $default != null:
return $default(_that.isLoading,_that.respon,_that.errorMessage,_that.error,_that.isGuest,_that.dataToken,_that.errorOtp,_that.successOtp,_that.event,_that.phoneOtp,_that.actionConfirmOtp,_that.fromPage,_that.verificationTo,_that.dataLogin,_that.register,_that.statusCheckAuth,_that.statusLogin,_that.statusLogout,_that.statusDeleteAccount,_that.statusRegister,_that.statusSendOtp,_that.statusGetOtp,_that.statusConfirmOtp,_that.statusRefreshToken);case _:
  return null;

}
}

}

/// @nodoc


class _UserState implements UserState {
  const _UserState({this.isLoading = false, this.respon = Respons.initial, this.errorMessage = "", this.error = const Failures(), this.isGuest = false, this.dataToken = const TokenModel(), final  Map<String, dynamic> errorOtp = const {}, final  Map<String, dynamic> successOtp = const {}, this.event = UserCheckAuth, this.phoneOtp = "", this.actionConfirmOtp = ActionConfirm.login, this.fromPage = FromPage.login, this.verificationTo = FromPage.login, this.dataLogin = const LoginModel(), this.register = const RegistrationModel(), this.statusCheckAuth = Status.initial, this.statusLogin = Status.initial, this.statusLogout = Status.initial, this.statusDeleteAccount = Status.initial, this.statusRegister = Status.initial, this.statusSendOtp = Status.initial, this.statusGetOtp = Status.initial, this.statusConfirmOtp = Status.initial, this.statusRefreshToken = Status.initial}): _errorOtp = errorOtp,_successOtp = successOtp;
  

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  Respons respon;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  Failures error;
@override@JsonKey() final  bool isGuest;
@override@JsonKey() final  TokenModel dataToken;
 final  Map<String, dynamic> _errorOtp;
@override@JsonKey() Map<String, dynamic> get errorOtp {
  if (_errorOtp is EqualUnmodifiableMapView) return _errorOtp;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_errorOtp);
}

 final  Map<String, dynamic> _successOtp;
@override@JsonKey() Map<String, dynamic> get successOtp {
  if (_successOtp is EqualUnmodifiableMapView) return _successOtp;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_successOtp);
}

@override@JsonKey() final  Type event;
@override@JsonKey() final  String phoneOtp;
@override@JsonKey() final  ActionConfirm actionConfirmOtp;
@override@JsonKey() final  FromPage fromPage;
@override@JsonKey() final  FromPage verificationTo;
@override@JsonKey() final  LoginModel dataLogin;
@override@JsonKey() final  RegistrationModel register;
/// Status
///
@override@JsonKey() final  Status statusCheckAuth;
@override@JsonKey() final  Status statusLogin;
@override@JsonKey() final  Status statusLogout;
@override@JsonKey() final  Status statusDeleteAccount;
@override@JsonKey() final  Status statusRegister;
@override@JsonKey() final  Status statusSendOtp;
@override@JsonKey() final  Status statusGetOtp;
@override@JsonKey() final  Status statusConfirmOtp;
@override@JsonKey() final  Status statusRefreshToken;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserStateCopyWith<_UserState> get copyWith => __$UserStateCopyWithImpl<_UserState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserState&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.respon, respon) || other.respon == respon)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.error, error) || other.error == error)&&(identical(other.isGuest, isGuest) || other.isGuest == isGuest)&&(identical(other.dataToken, dataToken) || other.dataToken == dataToken)&&const DeepCollectionEquality().equals(other._errorOtp, _errorOtp)&&const DeepCollectionEquality().equals(other._successOtp, _successOtp)&&(identical(other.event, event) || other.event == event)&&(identical(other.phoneOtp, phoneOtp) || other.phoneOtp == phoneOtp)&&(identical(other.actionConfirmOtp, actionConfirmOtp) || other.actionConfirmOtp == actionConfirmOtp)&&(identical(other.fromPage, fromPage) || other.fromPage == fromPage)&&(identical(other.verificationTo, verificationTo) || other.verificationTo == verificationTo)&&(identical(other.dataLogin, dataLogin) || other.dataLogin == dataLogin)&&(identical(other.register, register) || other.register == register)&&(identical(other.statusCheckAuth, statusCheckAuth) || other.statusCheckAuth == statusCheckAuth)&&(identical(other.statusLogin, statusLogin) || other.statusLogin == statusLogin)&&(identical(other.statusLogout, statusLogout) || other.statusLogout == statusLogout)&&(identical(other.statusDeleteAccount, statusDeleteAccount) || other.statusDeleteAccount == statusDeleteAccount)&&(identical(other.statusRegister, statusRegister) || other.statusRegister == statusRegister)&&(identical(other.statusSendOtp, statusSendOtp) || other.statusSendOtp == statusSendOtp)&&(identical(other.statusGetOtp, statusGetOtp) || other.statusGetOtp == statusGetOtp)&&(identical(other.statusConfirmOtp, statusConfirmOtp) || other.statusConfirmOtp == statusConfirmOtp)&&(identical(other.statusRefreshToken, statusRefreshToken) || other.statusRefreshToken == statusRefreshToken));
}


@override
int get hashCode => Object.hashAll([runtimeType,isLoading,respon,errorMessage,error,isGuest,dataToken,const DeepCollectionEquality().hash(_errorOtp),const DeepCollectionEquality().hash(_successOtp),event,phoneOtp,actionConfirmOtp,fromPage,verificationTo,dataLogin,register,statusCheckAuth,statusLogin,statusLogout,statusDeleteAccount,statusRegister,statusSendOtp,statusGetOtp,statusConfirmOtp,statusRefreshToken]);

@override
String toString() {
  return 'UserState(isLoading: $isLoading, respon: $respon, errorMessage: $errorMessage, error: $error, isGuest: $isGuest, dataToken: $dataToken, errorOtp: $errorOtp, successOtp: $successOtp, event: $event, phoneOtp: $phoneOtp, actionConfirmOtp: $actionConfirmOtp, fromPage: $fromPage, verificationTo: $verificationTo, dataLogin: $dataLogin, register: $register, statusCheckAuth: $statusCheckAuth, statusLogin: $statusLogin, statusLogout: $statusLogout, statusDeleteAccount: $statusDeleteAccount, statusRegister: $statusRegister, statusSendOtp: $statusSendOtp, statusGetOtp: $statusGetOtp, statusConfirmOtp: $statusConfirmOtp, statusRefreshToken: $statusRefreshToken)';
}


}

/// @nodoc
abstract mixin class _$UserStateCopyWith<$Res> implements $UserStateCopyWith<$Res> {
  factory _$UserStateCopyWith(_UserState value, $Res Function(_UserState) _then) = __$UserStateCopyWithImpl;
@override @useResult
$Res call({
 bool isLoading, Respons respon, String errorMessage, Failures error, bool isGuest, TokenModel dataToken, Map<String, dynamic> errorOtp, Map<String, dynamic> successOtp, Type event, String phoneOtp, ActionConfirm actionConfirmOtp, FromPage fromPage, FromPage verificationTo, LoginModel dataLogin, RegistrationModel register, Status statusCheckAuth, Status statusLogin, Status statusLogout, Status statusDeleteAccount, Status statusRegister, Status statusSendOtp, Status statusGetOtp, Status statusConfirmOtp, Status statusRefreshToken
});


@override $FailuresCopyWith<$Res> get error;@override $TokenModelCopyWith<$Res> get dataToken;@override $LoginModelCopyWith<$Res> get dataLogin;@override $RegistrationModelCopyWith<$Res> get register;

}
/// @nodoc
class __$UserStateCopyWithImpl<$Res>
    implements _$UserStateCopyWith<$Res> {
  __$UserStateCopyWithImpl(this._self, this._then);

  final _UserState _self;
  final $Res Function(_UserState) _then;

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isLoading = null,Object? respon = null,Object? errorMessage = null,Object? error = null,Object? isGuest = null,Object? dataToken = null,Object? errorOtp = null,Object? successOtp = null,Object? event = null,Object? phoneOtp = null,Object? actionConfirmOtp = null,Object? fromPage = null,Object? verificationTo = null,Object? dataLogin = null,Object? register = null,Object? statusCheckAuth = null,Object? statusLogin = null,Object? statusLogout = null,Object? statusDeleteAccount = null,Object? statusRegister = null,Object? statusSendOtp = null,Object? statusGetOtp = null,Object? statusConfirmOtp = null,Object? statusRefreshToken = null,}) {
  return _then(_UserState(
isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,respon: null == respon ? _self.respon : respon // ignore: cast_nullable_to_non_nullable
as Respons,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as Failures,isGuest: null == isGuest ? _self.isGuest : isGuest // ignore: cast_nullable_to_non_nullable
as bool,dataToken: null == dataToken ? _self.dataToken : dataToken // ignore: cast_nullable_to_non_nullable
as TokenModel,errorOtp: null == errorOtp ? _self._errorOtp : errorOtp // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,successOtp: null == successOtp ? _self._successOtp : successOtp // ignore: cast_nullable_to_non_nullable
as Map<String, dynamic>,event: null == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type,phoneOtp: null == phoneOtp ? _self.phoneOtp : phoneOtp // ignore: cast_nullable_to_non_nullable
as String,actionConfirmOtp: null == actionConfirmOtp ? _self.actionConfirmOtp : actionConfirmOtp // ignore: cast_nullable_to_non_nullable
as ActionConfirm,fromPage: null == fromPage ? _self.fromPage : fromPage // ignore: cast_nullable_to_non_nullable
as FromPage,verificationTo: null == verificationTo ? _self.verificationTo : verificationTo // ignore: cast_nullable_to_non_nullable
as FromPage,dataLogin: null == dataLogin ? _self.dataLogin : dataLogin // ignore: cast_nullable_to_non_nullable
as LoginModel,register: null == register ? _self.register : register // ignore: cast_nullable_to_non_nullable
as RegistrationModel,statusCheckAuth: null == statusCheckAuth ? _self.statusCheckAuth : statusCheckAuth // ignore: cast_nullable_to_non_nullable
as Status,statusLogin: null == statusLogin ? _self.statusLogin : statusLogin // ignore: cast_nullable_to_non_nullable
as Status,statusLogout: null == statusLogout ? _self.statusLogout : statusLogout // ignore: cast_nullable_to_non_nullable
as Status,statusDeleteAccount: null == statusDeleteAccount ? _self.statusDeleteAccount : statusDeleteAccount // ignore: cast_nullable_to_non_nullable
as Status,statusRegister: null == statusRegister ? _self.statusRegister : statusRegister // ignore: cast_nullable_to_non_nullable
as Status,statusSendOtp: null == statusSendOtp ? _self.statusSendOtp : statusSendOtp // ignore: cast_nullable_to_non_nullable
as Status,statusGetOtp: null == statusGetOtp ? _self.statusGetOtp : statusGetOtp // ignore: cast_nullable_to_non_nullable
as Status,statusConfirmOtp: null == statusConfirmOtp ? _self.statusConfirmOtp : statusConfirmOtp // ignore: cast_nullable_to_non_nullable
as Status,statusRefreshToken: null == statusRefreshToken ? _self.statusRefreshToken : statusRefreshToken // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FailuresCopyWith<$Res> get error {
  
  return $FailuresCopyWith<$Res>(_self.error, (value) {
    return _then(_self.copyWith(error: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenModelCopyWith<$Res> get dataToken {
  
  return $TokenModelCopyWith<$Res>(_self.dataToken, (value) {
    return _then(_self.copyWith(dataToken: value));
  });
}/// Create a copy of UserState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginModelCopyWith<$Res> get dataLogin {
  
  return $LoginModelCopyWith<$Res>(_self.dataLogin, (value) {
    return _then(_self.copyWith(dataLogin: value));
  });
}/// Create a copy of UserState
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
