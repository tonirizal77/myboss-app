// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetClientToken value)?  clientToken,TResult Function( CheckAuth value)?  checkAuth,TResult Function( RefreshToken value)?  refreshToken,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetClientToken() when clientToken != null:
return clientToken(_that);case CheckAuth() when checkAuth != null:
return checkAuth(_that);case RefreshToken() when refreshToken != null:
return refreshToken(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetClientToken value)  clientToken,required TResult Function( CheckAuth value)  checkAuth,required TResult Function( RefreshToken value)  refreshToken,}){
final _that = this;
switch (_that) {
case GetClientToken():
return clientToken(_that);case CheckAuth():
return checkAuth(_that);case RefreshToken():
return refreshToken(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetClientToken value)?  clientToken,TResult? Function( CheckAuth value)?  checkAuth,TResult? Function( RefreshToken value)?  refreshToken,}){
final _that = this;
switch (_that) {
case GetClientToken() when clientToken != null:
return clientToken(_that);case CheckAuth() when checkAuth != null:
return checkAuth(_that);case RefreshToken() when refreshToken != null:
return refreshToken(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  clientToken,TResult Function( bool forceLogout)?  checkAuth,TResult Function()?  refreshToken,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetClientToken() when clientToken != null:
return clientToken();case CheckAuth() when checkAuth != null:
return checkAuth(_that.forceLogout);case RefreshToken() when refreshToken != null:
return refreshToken();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  clientToken,required TResult Function( bool forceLogout)  checkAuth,required TResult Function()  refreshToken,}) {final _that = this;
switch (_that) {
case GetClientToken():
return clientToken();case CheckAuth():
return checkAuth(_that.forceLogout);case RefreshToken():
return refreshToken();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  clientToken,TResult? Function( bool forceLogout)?  checkAuth,TResult? Function()?  refreshToken,}) {final _that = this;
switch (_that) {
case GetClientToken() when clientToken != null:
return clientToken();case CheckAuth() when checkAuth != null:
return checkAuth(_that.forceLogout);case RefreshToken() when refreshToken != null:
return refreshToken();case _:
  return null;

}
}

}

/// @nodoc


class GetClientToken implements AuthEvent {
  const GetClientToken();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetClientToken);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.clientToken()';
}


}




/// @nodoc


class CheckAuth implements AuthEvent {
  const CheckAuth({this.forceLogout = false});
  

@JsonKey() final  bool forceLogout;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CheckAuthCopyWith<CheckAuth> get copyWith => _$CheckAuthCopyWithImpl<CheckAuth>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CheckAuth&&(identical(other.forceLogout, forceLogout) || other.forceLogout == forceLogout));
}


@override
int get hashCode => Object.hash(runtimeType,forceLogout);

@override
String toString() {
  return 'AuthEvent.checkAuth(forceLogout: $forceLogout)';
}


}

/// @nodoc
abstract mixin class $CheckAuthCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $CheckAuthCopyWith(CheckAuth value, $Res Function(CheckAuth) _then) = _$CheckAuthCopyWithImpl;
@useResult
$Res call({
 bool forceLogout
});




}
/// @nodoc
class _$CheckAuthCopyWithImpl<$Res>
    implements $CheckAuthCopyWith<$Res> {
  _$CheckAuthCopyWithImpl(this._self, this._then);

  final CheckAuth _self;
  final $Res Function(CheckAuth) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? forceLogout = null,}) {
  return _then(CheckAuth(
forceLogout: null == forceLogout ? _self.forceLogout : forceLogout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class RefreshToken implements AuthEvent {
  const RefreshToken();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RefreshToken);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.refreshToken()';
}


}




/// @nodoc
mixin _$AuthState {

 Status get status;// initial & success
 Status get statusLogin; AuthStatus get authStatus; TokenModel? get dataToken; Type? get event; String get errorMessage; bool get forceLogout;
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthStateCopyWith<AuthState> get copyWith => _$AuthStateCopyWithImpl<AuthState>(this as AuthState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLogin, statusLogin) || other.statusLogin == statusLogin)&&(identical(other.authStatus, authStatus) || other.authStatus == authStatus)&&(identical(other.dataToken, dataToken) || other.dataToken == dataToken)&&(identical(other.event, event) || other.event == event)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.forceLogout, forceLogout) || other.forceLogout == forceLogout));
}


@override
int get hashCode => Object.hash(runtimeType,status,statusLogin,authStatus,dataToken,event,errorMessage,forceLogout);

@override
String toString() {
  return 'AuthState(status: $status, statusLogin: $statusLogin, authStatus: $authStatus, dataToken: $dataToken, event: $event, errorMessage: $errorMessage, forceLogout: $forceLogout)';
}


}

/// @nodoc
abstract mixin class $AuthStateCopyWith<$Res>  {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) _then) = _$AuthStateCopyWithImpl;
@useResult
$Res call({
 Status status, Status statusLogin, AuthStatus authStatus, TokenModel? dataToken, Type? event, String errorMessage, bool forceLogout
});


$TokenModelCopyWith<$Res>? get dataToken;

}
/// @nodoc
class _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._self, this._then);

  final AuthState _self;
  final $Res Function(AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? statusLogin = null,Object? authStatus = null,Object? dataToken = freezed,Object? event = freezed,Object? errorMessage = null,Object? forceLogout = null,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,statusLogin: null == statusLogin ? _self.statusLogin : statusLogin // ignore: cast_nullable_to_non_nullable
as Status,authStatus: null == authStatus ? _self.authStatus : authStatus // ignore: cast_nullable_to_non_nullable
as AuthStatus,dataToken: freezed == dataToken ? _self.dataToken : dataToken // ignore: cast_nullable_to_non_nullable
as TokenModel?,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,forceLogout: null == forceLogout ? _self.forceLogout : forceLogout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenModelCopyWith<$Res>? get dataToken {
    if (_self.dataToken == null) {
    return null;
  }

  return $TokenModelCopyWith<$Res>(_self.dataToken!, (value) {
    return _then(_self.copyWith(dataToken: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthState value)  $default,){
final _that = this;
switch (_that) {
case _AuthState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthState value)?  $default,){
final _that = this;
switch (_that) {
case _AuthState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Status status,  Status statusLogin,  AuthStatus authStatus,  TokenModel? dataToken,  Type? event,  String errorMessage,  bool forceLogout)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.statusLogin,_that.authStatus,_that.dataToken,_that.event,_that.errorMessage,_that.forceLogout);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Status status,  Status statusLogin,  AuthStatus authStatus,  TokenModel? dataToken,  Type? event,  String errorMessage,  bool forceLogout)  $default,) {final _that = this;
switch (_that) {
case _AuthState():
return $default(_that.status,_that.statusLogin,_that.authStatus,_that.dataToken,_that.event,_that.errorMessage,_that.forceLogout);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Status status,  Status statusLogin,  AuthStatus authStatus,  TokenModel? dataToken,  Type? event,  String errorMessage,  bool forceLogout)?  $default,) {final _that = this;
switch (_that) {
case _AuthState() when $default != null:
return $default(_that.status,_that.statusLogin,_that.authStatus,_that.dataToken,_that.event,_that.errorMessage,_that.forceLogout);case _:
  return null;

}
}

}

/// @nodoc


class _AuthState implements AuthState {
  const _AuthState({this.status = Status.initial, this.statusLogin = Status.initial, this.authStatus = AuthStatus.unknown, this.dataToken = const TokenModel(), this.event, this.errorMessage = "", this.forceLogout = false});
  

@override@JsonKey() final  Status status;
// initial & success
@override@JsonKey() final  Status statusLogin;
@override@JsonKey() final  AuthStatus authStatus;
@override@JsonKey() final  TokenModel? dataToken;
@override final  Type? event;
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  bool forceLogout;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthStateCopyWith<_AuthState> get copyWith => __$AuthStateCopyWithImpl<_AuthState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthState&&(identical(other.status, status) || other.status == status)&&(identical(other.statusLogin, statusLogin) || other.statusLogin == statusLogin)&&(identical(other.authStatus, authStatus) || other.authStatus == authStatus)&&(identical(other.dataToken, dataToken) || other.dataToken == dataToken)&&(identical(other.event, event) || other.event == event)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.forceLogout, forceLogout) || other.forceLogout == forceLogout));
}


@override
int get hashCode => Object.hash(runtimeType,status,statusLogin,authStatus,dataToken,event,errorMessage,forceLogout);

@override
String toString() {
  return 'AuthState(status: $status, statusLogin: $statusLogin, authStatus: $authStatus, dataToken: $dataToken, event: $event, errorMessage: $errorMessage, forceLogout: $forceLogout)';
}


}

/// @nodoc
abstract mixin class _$AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$AuthStateCopyWith(_AuthState value, $Res Function(_AuthState) _then) = __$AuthStateCopyWithImpl;
@override @useResult
$Res call({
 Status status, Status statusLogin, AuthStatus authStatus, TokenModel? dataToken, Type? event, String errorMessage, bool forceLogout
});


@override $TokenModelCopyWith<$Res>? get dataToken;

}
/// @nodoc
class __$AuthStateCopyWithImpl<$Res>
    implements _$AuthStateCopyWith<$Res> {
  __$AuthStateCopyWithImpl(this._self, this._then);

  final _AuthState _self;
  final $Res Function(_AuthState) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? statusLogin = null,Object? authStatus = null,Object? dataToken = freezed,Object? event = freezed,Object? errorMessage = null,Object? forceLogout = null,}) {
  return _then(_AuthState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,statusLogin: null == statusLogin ? _self.statusLogin : statusLogin // ignore: cast_nullable_to_non_nullable
as Status,authStatus: null == authStatus ? _self.authStatus : authStatus // ignore: cast_nullable_to_non_nullable
as AuthStatus,dataToken: freezed == dataToken ? _self.dataToken : dataToken // ignore: cast_nullable_to_non_nullable
as TokenModel?,event: freezed == event ? _self.event : event // ignore: cast_nullable_to_non_nullable
as Type?,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,forceLogout: null == forceLogout ? _self.forceLogout : forceLogout // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TokenModelCopyWith<$Res>? get dataToken {
    if (_self.dataToken == null) {
    return null;
  }

  return $TokenModelCopyWith<$Res>(_self.dataToken!, (value) {
    return _then(_self.copyWith(dataToken: value));
  });
}
}

// dart format on
