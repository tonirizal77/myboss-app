// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$VerifyEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEvent()';
}


}

/// @nodoc
class $VerifyEventCopyWith<$Res>  {
$VerifyEventCopyWith(VerifyEvent _, $Res Function(VerifyEvent) __);
}


/// Adds pattern-matching-related methods to [VerifyEvent].
extension VerifyEventPatterns on VerifyEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _EventInitial value)?  initial,TResult Function( _EventGetOtp value)?  getOtp,TResult Function( _EventGetNewOtp value)?  getNewOtp,TResult Function( _EventSendOtp value)?  sendOtp,TResult Function( _EventReset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EventInitial() when initial != null:
return initial(_that);case _EventGetOtp() when getOtp != null:
return getOtp(_that);case _EventGetNewOtp() when getNewOtp != null:
return getNewOtp(_that);case _EventSendOtp() when sendOtp != null:
return sendOtp(_that);case _EventReset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _EventInitial value)  initial,required TResult Function( _EventGetOtp value)  getOtp,required TResult Function( _EventGetNewOtp value)  getNewOtp,required TResult Function( _EventSendOtp value)  sendOtp,required TResult Function( _EventReset value)  reset,}){
final _that = this;
switch (_that) {
case _EventInitial():
return initial(_that);case _EventGetOtp():
return getOtp(_that);case _EventGetNewOtp():
return getNewOtp(_that);case _EventSendOtp():
return sendOtp(_that);case _EventReset():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _EventInitial value)?  initial,TResult? Function( _EventGetOtp value)?  getOtp,TResult? Function( _EventGetNewOtp value)?  getNewOtp,TResult? Function( _EventSendOtp value)?  sendOtp,TResult? Function( _EventReset value)?  reset,}){
final _that = this;
switch (_that) {
case _EventInitial() when initial != null:
return initial(_that);case _EventGetOtp() when getOtp != null:
return getOtp(_that);case _EventGetNewOtp() when getNewOtp != null:
return getNewOtp(_that);case _EventSendOtp() when sendOtp != null:
return sendOtp(_that);case _EventReset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( VerifyModel data)?  initial,TResult Function( ParamOtp param)?  getOtp,TResult Function( ParamOtp param)?  getNewOtp,TResult Function( ParamOtp param)?  sendOtp,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EventInitial() when initial != null:
return initial(_that.data);case _EventGetOtp() when getOtp != null:
return getOtp(_that.param);case _EventGetNewOtp() when getNewOtp != null:
return getNewOtp(_that.param);case _EventSendOtp() when sendOtp != null:
return sendOtp(_that.param);case _EventReset() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( VerifyModel data)  initial,required TResult Function( ParamOtp param)  getOtp,required TResult Function( ParamOtp param)  getNewOtp,required TResult Function( ParamOtp param)  sendOtp,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case _EventInitial():
return initial(_that.data);case _EventGetOtp():
return getOtp(_that.param);case _EventGetNewOtp():
return getNewOtp(_that.param);case _EventSendOtp():
return sendOtp(_that.param);case _EventReset():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( VerifyModel data)?  initial,TResult? Function( ParamOtp param)?  getOtp,TResult? Function( ParamOtp param)?  getNewOtp,TResult? Function( ParamOtp param)?  sendOtp,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case _EventInitial() when initial != null:
return initial(_that.data);case _EventGetOtp() when getOtp != null:
return getOtp(_that.param);case _EventGetNewOtp() when getNewOtp != null:
return getNewOtp(_that.param);case _EventSendOtp() when sendOtp != null:
return sendOtp(_that.param);case _EventReset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class _EventInitial implements VerifyEvent {
  const _EventInitial(this.data);
  

 final  VerifyModel data;

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventInitialCopyWith<_EventInitial> get copyWith => __$EventInitialCopyWithImpl<_EventInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventInitial&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'VerifyEvent.initial(data: $data)';
}


}

/// @nodoc
abstract mixin class _$EventInitialCopyWith<$Res> implements $VerifyEventCopyWith<$Res> {
  factory _$EventInitialCopyWith(_EventInitial value, $Res Function(_EventInitial) _then) = __$EventInitialCopyWithImpl;
@useResult
$Res call({
 VerifyModel data
});


$VerifyModelCopyWith<$Res> get data;

}
/// @nodoc
class __$EventInitialCopyWithImpl<$Res>
    implements _$EventInitialCopyWith<$Res> {
  __$EventInitialCopyWithImpl(this._self, this._then);

  final _EventInitial _self;
  final $Res Function(_EventInitial) _then;

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_EventInitial(
null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as VerifyModel,
  ));
}

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyModelCopyWith<$Res> get data {
  
  return $VerifyModelCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}

/// @nodoc


class _EventGetOtp implements VerifyEvent {
  const _EventGetOtp(this.param);
  

 final  ParamOtp param;

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventGetOtpCopyWith<_EventGetOtp> get copyWith => __$EventGetOtpCopyWithImpl<_EventGetOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGetOtp&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'VerifyEvent.getOtp(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventGetOtpCopyWith<$Res> implements $VerifyEventCopyWith<$Res> {
  factory _$EventGetOtpCopyWith(_EventGetOtp value, $Res Function(_EventGetOtp) _then) = __$EventGetOtpCopyWithImpl;
@useResult
$Res call({
 ParamOtp param
});




}
/// @nodoc
class __$EventGetOtpCopyWithImpl<$Res>
    implements _$EventGetOtpCopyWith<$Res> {
  __$EventGetOtpCopyWithImpl(this._self, this._then);

  final _EventGetOtp _self;
  final $Res Function(_EventGetOtp) _then;

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventGetOtp(
null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as ParamOtp,
  ));
}


}

/// @nodoc


class _EventGetNewOtp implements VerifyEvent {
  const _EventGetNewOtp(this.param);
  

 final  ParamOtp param;

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventGetNewOtpCopyWith<_EventGetNewOtp> get copyWith => __$EventGetNewOtpCopyWithImpl<_EventGetNewOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventGetNewOtp&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'VerifyEvent.getNewOtp(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventGetNewOtpCopyWith<$Res> implements $VerifyEventCopyWith<$Res> {
  factory _$EventGetNewOtpCopyWith(_EventGetNewOtp value, $Res Function(_EventGetNewOtp) _then) = __$EventGetNewOtpCopyWithImpl;
@useResult
$Res call({
 ParamOtp param
});




}
/// @nodoc
class __$EventGetNewOtpCopyWithImpl<$Res>
    implements _$EventGetNewOtpCopyWith<$Res> {
  __$EventGetNewOtpCopyWithImpl(this._self, this._then);

  final _EventGetNewOtp _self;
  final $Res Function(_EventGetNewOtp) _then;

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventGetNewOtp(
null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as ParamOtp,
  ));
}


}

/// @nodoc


class _EventSendOtp implements VerifyEvent {
  const _EventSendOtp(this.param);
  

 final  ParamOtp param;

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EventSendOtpCopyWith<_EventSendOtp> get copyWith => __$EventSendOtpCopyWithImpl<_EventSendOtp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventSendOtp&&(identical(other.param, param) || other.param == param));
}


@override
int get hashCode => Object.hash(runtimeType,param);

@override
String toString() {
  return 'VerifyEvent.sendOtp(param: $param)';
}


}

/// @nodoc
abstract mixin class _$EventSendOtpCopyWith<$Res> implements $VerifyEventCopyWith<$Res> {
  factory _$EventSendOtpCopyWith(_EventSendOtp value, $Res Function(_EventSendOtp) _then) = __$EventSendOtpCopyWithImpl;
@useResult
$Res call({
 ParamOtp param
});




}
/// @nodoc
class __$EventSendOtpCopyWithImpl<$Res>
    implements _$EventSendOtpCopyWith<$Res> {
  __$EventSendOtpCopyWithImpl(this._self, this._then);

  final _EventSendOtp _self;
  final $Res Function(_EventSendOtp) _then;

/// Create a copy of VerifyEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? param = null,}) {
  return _then(_EventSendOtp(
null == param ? _self.param : param // ignore: cast_nullable_to_non_nullable
as ParamOtp,
  ));
}


}

/// @nodoc


class _EventReset implements VerifyEvent {
  const _EventReset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EventReset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'VerifyEvent.reset()';
}


}




/// @nodoc
mixin _$VerifyState {

 ActionVerify get action; Status get statusGetOtp; Status get statusSendOtp; String get errorMessage;/// Data Models
 VerifyModel get verifyData;/// Success Confirm
 DataMap get result;
/// Create a copy of VerifyState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyStateCopyWith<VerifyState> get copyWith => _$VerifyStateCopyWithImpl<VerifyState>(this as VerifyState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyState&&(identical(other.action, action) || other.action == action)&&(identical(other.statusGetOtp, statusGetOtp) || other.statusGetOtp == statusGetOtp)&&(identical(other.statusSendOtp, statusSendOtp) || other.statusSendOtp == statusSendOtp)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.verifyData, verifyData) || other.verifyData == verifyData)&&const DeepCollectionEquality().equals(other.result, result));
}


@override
int get hashCode => Object.hash(runtimeType,action,statusGetOtp,statusSendOtp,errorMessage,verifyData,const DeepCollectionEquality().hash(result));

@override
String toString() {
  return 'VerifyState(action: $action, statusGetOtp: $statusGetOtp, statusSendOtp: $statusSendOtp, errorMessage: $errorMessage, verifyData: $verifyData, result: $result)';
}


}

/// @nodoc
abstract mixin class $VerifyStateCopyWith<$Res>  {
  factory $VerifyStateCopyWith(VerifyState value, $Res Function(VerifyState) _then) = _$VerifyStateCopyWithImpl;
@useResult
$Res call({
 ActionVerify action, Status statusGetOtp, Status statusSendOtp, String errorMessage, VerifyModel verifyData, DataMap result
});


$VerifyModelCopyWith<$Res> get verifyData;

}
/// @nodoc
class _$VerifyStateCopyWithImpl<$Res>
    implements $VerifyStateCopyWith<$Res> {
  _$VerifyStateCopyWithImpl(this._self, this._then);

  final VerifyState _self;
  final $Res Function(VerifyState) _then;

/// Create a copy of VerifyState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? action = null,Object? statusGetOtp = null,Object? statusSendOtp = null,Object? errorMessage = null,Object? verifyData = null,Object? result = null,}) {
  return _then(_self.copyWith(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionVerify,statusGetOtp: null == statusGetOtp ? _self.statusGetOtp : statusGetOtp // ignore: cast_nullable_to_non_nullable
as Status,statusSendOtp: null == statusSendOtp ? _self.statusSendOtp : statusSendOtp // ignore: cast_nullable_to_non_nullable
as Status,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,verifyData: null == verifyData ? _self.verifyData : verifyData // ignore: cast_nullable_to_non_nullable
as VerifyModel,result: null == result ? _self.result : result // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}
/// Create a copy of VerifyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyModelCopyWith<$Res> get verifyData {
  
  return $VerifyModelCopyWith<$Res>(_self.verifyData, (value) {
    return _then(_self.copyWith(verifyData: value));
  });
}
}


/// Adds pattern-matching-related methods to [VerifyState].
extension VerifyStatePatterns on VerifyState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyState value)  $default,){
final _that = this;
switch (_that) {
case _VerifyState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyState value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ActionVerify action,  Status statusGetOtp,  Status statusSendOtp,  String errorMessage,  VerifyModel verifyData,  DataMap result)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyState() when $default != null:
return $default(_that.action,_that.statusGetOtp,_that.statusSendOtp,_that.errorMessage,_that.verifyData,_that.result);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ActionVerify action,  Status statusGetOtp,  Status statusSendOtp,  String errorMessage,  VerifyModel verifyData,  DataMap result)  $default,) {final _that = this;
switch (_that) {
case _VerifyState():
return $default(_that.action,_that.statusGetOtp,_that.statusSendOtp,_that.errorMessage,_that.verifyData,_that.result);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ActionVerify action,  Status statusGetOtp,  Status statusSendOtp,  String errorMessage,  VerifyModel verifyData,  DataMap result)?  $default,) {final _that = this;
switch (_that) {
case _VerifyState() when $default != null:
return $default(_that.action,_that.statusGetOtp,_that.statusSendOtp,_that.errorMessage,_that.verifyData,_that.result);case _:
  return null;

}
}

}

/// @nodoc


class _VerifyState implements VerifyState {
  const _VerifyState({this.action = ActionVerify.starting, this.statusGetOtp = Status.initial, this.statusSendOtp = Status.initial, this.errorMessage = '', this.verifyData = const VerifyModel(), final  DataMap result = const {}}): _result = result;
  

@override@JsonKey() final  ActionVerify action;
@override@JsonKey() final  Status statusGetOtp;
@override@JsonKey() final  Status statusSendOtp;
@override@JsonKey() final  String errorMessage;
/// Data Models
@override@JsonKey() final  VerifyModel verifyData;
/// Success Confirm
 final  DataMap _result;
/// Success Confirm
@override@JsonKey() DataMap get result {
  if (_result is EqualUnmodifiableMapView) return _result;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_result);
}


/// Create a copy of VerifyState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyStateCopyWith<_VerifyState> get copyWith => __$VerifyStateCopyWithImpl<_VerifyState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyState&&(identical(other.action, action) || other.action == action)&&(identical(other.statusGetOtp, statusGetOtp) || other.statusGetOtp == statusGetOtp)&&(identical(other.statusSendOtp, statusSendOtp) || other.statusSendOtp == statusSendOtp)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.verifyData, verifyData) || other.verifyData == verifyData)&&const DeepCollectionEquality().equals(other._result, _result));
}


@override
int get hashCode => Object.hash(runtimeType,action,statusGetOtp,statusSendOtp,errorMessage,verifyData,const DeepCollectionEquality().hash(_result));

@override
String toString() {
  return 'VerifyState(action: $action, statusGetOtp: $statusGetOtp, statusSendOtp: $statusSendOtp, errorMessage: $errorMessage, verifyData: $verifyData, result: $result)';
}


}

/// @nodoc
abstract mixin class _$VerifyStateCopyWith<$Res> implements $VerifyStateCopyWith<$Res> {
  factory _$VerifyStateCopyWith(_VerifyState value, $Res Function(_VerifyState) _then) = __$VerifyStateCopyWithImpl;
@override @useResult
$Res call({
 ActionVerify action, Status statusGetOtp, Status statusSendOtp, String errorMessage, VerifyModel verifyData, DataMap result
});


@override $VerifyModelCopyWith<$Res> get verifyData;

}
/// @nodoc
class __$VerifyStateCopyWithImpl<$Res>
    implements _$VerifyStateCopyWith<$Res> {
  __$VerifyStateCopyWithImpl(this._self, this._then);

  final _VerifyState _self;
  final $Res Function(_VerifyState) _then;

/// Create a copy of VerifyState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? action = null,Object? statusGetOtp = null,Object? statusSendOtp = null,Object? errorMessage = null,Object? verifyData = null,Object? result = null,}) {
  return _then(_VerifyState(
action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionVerify,statusGetOtp: null == statusGetOtp ? _self.statusGetOtp : statusGetOtp // ignore: cast_nullable_to_non_nullable
as Status,statusSendOtp: null == statusSendOtp ? _self.statusSendOtp : statusSendOtp // ignore: cast_nullable_to_non_nullable
as Status,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,verifyData: null == verifyData ? _self.verifyData : verifyData // ignore: cast_nullable_to_non_nullable
as VerifyModel,result: null == result ? _self._result : result // ignore: cast_nullable_to_non_nullable
as DataMap,
  ));
}

/// Create a copy of VerifyState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$VerifyModelCopyWith<$Res> get verifyData {
  
  return $VerifyModelCopyWith<$Res>(_self.verifyData, (value) {
    return _then(_self.copyWith(verifyData: value));
  });
}
}

// dart format on
