// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamps_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StampsState {

 StampsModel get stamps; StampsOptionModel get stampsOptions; StampsNotifModel get stampsNotif; ActionStamps get action;/// Status
 String get errorMessage; Status get status;
/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsStateCopyWith<StampsState> get copyWith => _$StampsStateCopyWithImpl<StampsState>(this as StampsState, _$identity);

  /// Serializes this StampsState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsState&&(identical(other.stamps, stamps) || other.stamps == stamps)&&(identical(other.stampsOptions, stampsOptions) || other.stampsOptions == stampsOptions)&&(identical(other.stampsNotif, stampsNotif) || other.stampsNotif == stampsNotif)&&(identical(other.action, action) || other.action == action)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stamps,stampsOptions,stampsNotif,action,errorMessage,status);

@override
String toString() {
  return 'StampsState(stamps: $stamps, stampsOptions: $stampsOptions, stampsNotif: $stampsNotif, action: $action, errorMessage: $errorMessage, status: $status)';
}


}

/// @nodoc
abstract mixin class $StampsStateCopyWith<$Res>  {
  factory $StampsStateCopyWith(StampsState value, $Res Function(StampsState) _then) = _$StampsStateCopyWithImpl;
@useResult
$Res call({
 StampsModel stamps, StampsOptionModel stampsOptions, StampsNotifModel stampsNotif, ActionStamps action, String errorMessage, Status status
});


$StampsModelCopyWith<$Res> get stamps;$StampsOptionModelCopyWith<$Res> get stampsOptions;$StampsNotifModelCopyWith<$Res> get stampsNotif;

}
/// @nodoc
class _$StampsStateCopyWithImpl<$Res>
    implements $StampsStateCopyWith<$Res> {
  _$StampsStateCopyWithImpl(this._self, this._then);

  final StampsState _self;
  final $Res Function(StampsState) _then;

/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stamps = null,Object? stampsOptions = null,Object? stampsNotif = null,Object? action = null,Object? errorMessage = null,Object? status = null,}) {
  return _then(_self.copyWith(
stamps: null == stamps ? _self.stamps : stamps // ignore: cast_nullable_to_non_nullable
as StampsModel,stampsOptions: null == stampsOptions ? _self.stampsOptions : stampsOptions // ignore: cast_nullable_to_non_nullable
as StampsOptionModel,stampsNotif: null == stampsNotif ? _self.stampsNotif : stampsNotif // ignore: cast_nullable_to_non_nullable
as StampsNotifModel,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionStamps,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}
/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsModelCopyWith<$Res> get stamps {
  
  return $StampsModelCopyWith<$Res>(_self.stamps, (value) {
    return _then(_self.copyWith(stamps: value));
  });
}/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsOptionModelCopyWith<$Res> get stampsOptions {
  
  return $StampsOptionModelCopyWith<$Res>(_self.stampsOptions, (value) {
    return _then(_self.copyWith(stampsOptions: value));
  });
}/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsNotifModelCopyWith<$Res> get stampsNotif {
  
  return $StampsNotifModelCopyWith<$Res>(_self.stampsNotif, (value) {
    return _then(_self.copyWith(stampsNotif: value));
  });
}
}


/// Adds pattern-matching-related methods to [StampsState].
extension StampsStatePatterns on StampsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsState value)  $default,){
final _that = this;
switch (_that) {
case _StampsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsState value)?  $default,){
final _that = this;
switch (_that) {
case _StampsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StampsModel stamps,  StampsOptionModel stampsOptions,  StampsNotifModel stampsNotif,  ActionStamps action,  String errorMessage,  Status status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsState() when $default != null:
return $default(_that.stamps,_that.stampsOptions,_that.stampsNotif,_that.action,_that.errorMessage,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StampsModel stamps,  StampsOptionModel stampsOptions,  StampsNotifModel stampsNotif,  ActionStamps action,  String errorMessage,  Status status)  $default,) {final _that = this;
switch (_that) {
case _StampsState():
return $default(_that.stamps,_that.stampsOptions,_that.stampsNotif,_that.action,_that.errorMessage,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StampsModel stamps,  StampsOptionModel stampsOptions,  StampsNotifModel stampsNotif,  ActionStamps action,  String errorMessage,  Status status)?  $default,) {final _that = this;
switch (_that) {
case _StampsState() when $default != null:
return $default(_that.stamps,_that.stampsOptions,_that.stampsNotif,_that.action,_that.errorMessage,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StampsState implements StampsState {
  const _StampsState({this.stamps = const StampsModel(), this.stampsOptions = const StampsOptionModel(), this.stampsNotif = const StampsNotifModel(), this.action = ActionStamps.getList, this.errorMessage = "", this.status = Status.initial});
  factory _StampsState.fromJson(Map<String, dynamic> json) => _$StampsStateFromJson(json);

@override@JsonKey() final  StampsModel stamps;
@override@JsonKey() final  StampsOptionModel stampsOptions;
@override@JsonKey() final  StampsNotifModel stampsNotif;
@override@JsonKey() final  ActionStamps action;
/// Status
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  Status status;

/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsStateCopyWith<_StampsState> get copyWith => __$StampsStateCopyWithImpl<_StampsState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsState&&(identical(other.stamps, stamps) || other.stamps == stamps)&&(identical(other.stampsOptions, stampsOptions) || other.stampsOptions == stampsOptions)&&(identical(other.stampsNotif, stampsNotif) || other.stampsNotif == stampsNotif)&&(identical(other.action, action) || other.action == action)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stamps,stampsOptions,stampsNotif,action,errorMessage,status);

@override
String toString() {
  return 'StampsState(stamps: $stamps, stampsOptions: $stampsOptions, stampsNotif: $stampsNotif, action: $action, errorMessage: $errorMessage, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StampsStateCopyWith<$Res> implements $StampsStateCopyWith<$Res> {
  factory _$StampsStateCopyWith(_StampsState value, $Res Function(_StampsState) _then) = __$StampsStateCopyWithImpl;
@override @useResult
$Res call({
 StampsModel stamps, StampsOptionModel stampsOptions, StampsNotifModel stampsNotif, ActionStamps action, String errorMessage, Status status
});


@override $StampsModelCopyWith<$Res> get stamps;@override $StampsOptionModelCopyWith<$Res> get stampsOptions;@override $StampsNotifModelCopyWith<$Res> get stampsNotif;

}
/// @nodoc
class __$StampsStateCopyWithImpl<$Res>
    implements _$StampsStateCopyWith<$Res> {
  __$StampsStateCopyWithImpl(this._self, this._then);

  final _StampsState _self;
  final $Res Function(_StampsState) _then;

/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stamps = null,Object? stampsOptions = null,Object? stampsNotif = null,Object? action = null,Object? errorMessage = null,Object? status = null,}) {
  return _then(_StampsState(
stamps: null == stamps ? _self.stamps : stamps // ignore: cast_nullable_to_non_nullable
as StampsModel,stampsOptions: null == stampsOptions ? _self.stampsOptions : stampsOptions // ignore: cast_nullable_to_non_nullable
as StampsOptionModel,stampsNotif: null == stampsNotif ? _self.stampsNotif : stampsNotif // ignore: cast_nullable_to_non_nullable
as StampsNotifModel,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionStamps,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsModelCopyWith<$Res> get stamps {
  
  return $StampsModelCopyWith<$Res>(_self.stamps, (value) {
    return _then(_self.copyWith(stamps: value));
  });
}/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsOptionModelCopyWith<$Res> get stampsOptions {
  
  return $StampsOptionModelCopyWith<$Res>(_self.stampsOptions, (value) {
    return _then(_self.copyWith(stampsOptions: value));
  });
}/// Create a copy of StampsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsNotifModelCopyWith<$Res> get stampsNotif {
  
  return $StampsNotifModelCopyWith<$Res>(_self.stampsNotif, (value) {
    return _then(_self.copyWith(stampsNotif: value));
  });
}
}

// dart format on
