// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamps_notif_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StampsNotifState {

 StampsNotifModel get stampsNotif; ActionNotif get action; Status get status;
/// Create a copy of StampsNotifState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsNotifStateCopyWith<StampsNotifState> get copyWith => _$StampsNotifStateCopyWithImpl<StampsNotifState>(this as StampsNotifState, _$identity);

  /// Serializes this StampsNotifState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsNotifState&&(identical(other.stampsNotif, stampsNotif) || other.stampsNotif == stampsNotif)&&(identical(other.action, action) || other.action == action)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stampsNotif,action,status);

@override
String toString() {
  return 'StampsNotifState(stampsNotif: $stampsNotif, action: $action, status: $status)';
}


}

/// @nodoc
abstract mixin class $StampsNotifStateCopyWith<$Res>  {
  factory $StampsNotifStateCopyWith(StampsNotifState value, $Res Function(StampsNotifState) _then) = _$StampsNotifStateCopyWithImpl;
@useResult
$Res call({
 StampsNotifModel stampsNotif, ActionNotif action, Status status
});


$StampsNotifModelCopyWith<$Res> get stampsNotif;

}
/// @nodoc
class _$StampsNotifStateCopyWithImpl<$Res>
    implements $StampsNotifStateCopyWith<$Res> {
  _$StampsNotifStateCopyWithImpl(this._self, this._then);

  final StampsNotifState _self;
  final $Res Function(StampsNotifState) _then;

/// Create a copy of StampsNotifState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stampsNotif = null,Object? action = null,Object? status = null,}) {
  return _then(_self.copyWith(
stampsNotif: null == stampsNotif ? _self.stampsNotif : stampsNotif // ignore: cast_nullable_to_non_nullable
as StampsNotifModel,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionNotif,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}
/// Create a copy of StampsNotifState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsNotifModelCopyWith<$Res> get stampsNotif {
  
  return $StampsNotifModelCopyWith<$Res>(_self.stampsNotif, (value) {
    return _then(_self.copyWith(stampsNotif: value));
  });
}
}


/// Adds pattern-matching-related methods to [StampsNotifState].
extension StampsNotifStatePatterns on StampsNotifState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsNotifState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsNotifState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsNotifState value)  $default,){
final _that = this;
switch (_that) {
case _StampsNotifState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsNotifState value)?  $default,){
final _that = this;
switch (_that) {
case _StampsNotifState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StampsNotifModel stampsNotif,  ActionNotif action,  Status status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsNotifState() when $default != null:
return $default(_that.stampsNotif,_that.action,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StampsNotifModel stampsNotif,  ActionNotif action,  Status status)  $default,) {final _that = this;
switch (_that) {
case _StampsNotifState():
return $default(_that.stampsNotif,_that.action,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StampsNotifModel stampsNotif,  ActionNotif action,  Status status)?  $default,) {final _that = this;
switch (_that) {
case _StampsNotifState() when $default != null:
return $default(_that.stampsNotif,_that.action,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StampsNotifState implements StampsNotifState {
  const _StampsNotifState({this.stampsNotif = const StampsNotifModel(), this.action = ActionNotif.initialize, this.status = Status.initial});
  factory _StampsNotifState.fromJson(Map<String, dynamic> json) => _$StampsNotifStateFromJson(json);

@override@JsonKey() final  StampsNotifModel stampsNotif;
@override@JsonKey() final  ActionNotif action;
@override@JsonKey() final  Status status;

/// Create a copy of StampsNotifState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsNotifStateCopyWith<_StampsNotifState> get copyWith => __$StampsNotifStateCopyWithImpl<_StampsNotifState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsNotifStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsNotifState&&(identical(other.stampsNotif, stampsNotif) || other.stampsNotif == stampsNotif)&&(identical(other.action, action) || other.action == action)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stampsNotif,action,status);

@override
String toString() {
  return 'StampsNotifState(stampsNotif: $stampsNotif, action: $action, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StampsNotifStateCopyWith<$Res> implements $StampsNotifStateCopyWith<$Res> {
  factory _$StampsNotifStateCopyWith(_StampsNotifState value, $Res Function(_StampsNotifState) _then) = __$StampsNotifStateCopyWithImpl;
@override @useResult
$Res call({
 StampsNotifModel stampsNotif, ActionNotif action, Status status
});


@override $StampsNotifModelCopyWith<$Res> get stampsNotif;

}
/// @nodoc
class __$StampsNotifStateCopyWithImpl<$Res>
    implements _$StampsNotifStateCopyWith<$Res> {
  __$StampsNotifStateCopyWithImpl(this._self, this._then);

  final _StampsNotifState _self;
  final $Res Function(_StampsNotifState) _then;

/// Create a copy of StampsNotifState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stampsNotif = null,Object? action = null,Object? status = null,}) {
  return _then(_StampsNotifState(
stampsNotif: null == stampsNotif ? _self.stampsNotif : stampsNotif // ignore: cast_nullable_to_non_nullable
as StampsNotifModel,action: null == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as ActionNotif,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

/// Create a copy of StampsNotifState
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
