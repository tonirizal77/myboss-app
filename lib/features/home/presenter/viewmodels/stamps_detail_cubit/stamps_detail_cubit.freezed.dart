// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamps_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StampsDetailState {

 StampsDetailModel get stampsDetail;/// Status
 String get errorMessage; Status get status;
/// Create a copy of StampsDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsDetailStateCopyWith<StampsDetailState> get copyWith => _$StampsDetailStateCopyWithImpl<StampsDetailState>(this as StampsDetailState, _$identity);

  /// Serializes this StampsDetailState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsDetailState&&(identical(other.stampsDetail, stampsDetail) || other.stampsDetail == stampsDetail)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stampsDetail,errorMessage,status);

@override
String toString() {
  return 'StampsDetailState(stampsDetail: $stampsDetail, errorMessage: $errorMessage, status: $status)';
}


}

/// @nodoc
abstract mixin class $StampsDetailStateCopyWith<$Res>  {
  factory $StampsDetailStateCopyWith(StampsDetailState value, $Res Function(StampsDetailState) _then) = _$StampsDetailStateCopyWithImpl;
@useResult
$Res call({
 StampsDetailModel stampsDetail, String errorMessage, Status status
});


$StampsDetailModelCopyWith<$Res> get stampsDetail;

}
/// @nodoc
class _$StampsDetailStateCopyWithImpl<$Res>
    implements $StampsDetailStateCopyWith<$Res> {
  _$StampsDetailStateCopyWithImpl(this._self, this._then);

  final StampsDetailState _self;
  final $Res Function(StampsDetailState) _then;

/// Create a copy of StampsDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? stampsDetail = null,Object? errorMessage = null,Object? status = null,}) {
  return _then(_self.copyWith(
stampsDetail: null == stampsDetail ? _self.stampsDetail : stampsDetail // ignore: cast_nullable_to_non_nullable
as StampsDetailModel,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}
/// Create a copy of StampsDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsDetailModelCopyWith<$Res> get stampsDetail {
  
  return $StampsDetailModelCopyWith<$Res>(_self.stampsDetail, (value) {
    return _then(_self.copyWith(stampsDetail: value));
  });
}
}


/// Adds pattern-matching-related methods to [StampsDetailState].
extension StampsDetailStatePatterns on StampsDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsDetailState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsDetailState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsDetailState value)  $default,){
final _that = this;
switch (_that) {
case _StampsDetailState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsDetailState value)?  $default,){
final _that = this;
switch (_that) {
case _StampsDetailState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( StampsDetailModel stampsDetail,  String errorMessage,  Status status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsDetailState() when $default != null:
return $default(_that.stampsDetail,_that.errorMessage,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( StampsDetailModel stampsDetail,  String errorMessage,  Status status)  $default,) {final _that = this;
switch (_that) {
case _StampsDetailState():
return $default(_that.stampsDetail,_that.errorMessage,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( StampsDetailModel stampsDetail,  String errorMessage,  Status status)?  $default,) {final _that = this;
switch (_that) {
case _StampsDetailState() when $default != null:
return $default(_that.stampsDetail,_that.errorMessage,_that.status);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StampsDetailState implements StampsDetailState {
  const _StampsDetailState({this.stampsDetail = const StampsDetailModel(), this.errorMessage = "", this.status = Status.initial});
  factory _StampsDetailState.fromJson(Map<String, dynamic> json) => _$StampsDetailStateFromJson(json);

@override@JsonKey() final  StampsDetailModel stampsDetail;
/// Status
@override@JsonKey() final  String errorMessage;
@override@JsonKey() final  Status status;

/// Create a copy of StampsDetailState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsDetailStateCopyWith<_StampsDetailState> get copyWith => __$StampsDetailStateCopyWithImpl<_StampsDetailState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsDetailStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsDetailState&&(identical(other.stampsDetail, stampsDetail) || other.stampsDetail == stampsDetail)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,stampsDetail,errorMessage,status);

@override
String toString() {
  return 'StampsDetailState(stampsDetail: $stampsDetail, errorMessage: $errorMessage, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StampsDetailStateCopyWith<$Res> implements $StampsDetailStateCopyWith<$Res> {
  factory _$StampsDetailStateCopyWith(_StampsDetailState value, $Res Function(_StampsDetailState) _then) = __$StampsDetailStateCopyWithImpl;
@override @useResult
$Res call({
 StampsDetailModel stampsDetail, String errorMessage, Status status
});


@override $StampsDetailModelCopyWith<$Res> get stampsDetail;

}
/// @nodoc
class __$StampsDetailStateCopyWithImpl<$Res>
    implements _$StampsDetailStateCopyWith<$Res> {
  __$StampsDetailStateCopyWithImpl(this._self, this._then);

  final _StampsDetailState _self;
  final $Res Function(_StampsDetailState) _then;

/// Create a copy of StampsDetailState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? stampsDetail = null,Object? errorMessage = null,Object? status = null,}) {
  return _then(_StampsDetailState(
stampsDetail: null == stampsDetail ? _self.stampsDetail : stampsDetail // ignore: cast_nullable_to_non_nullable
as StampsDetailModel,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as Status,
  ));
}

/// Create a copy of StampsDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StampsDetailModelCopyWith<$Res> get stampsDetail {
  
  return $StampsDetailModelCopyWith<$Res>(_self.stampsDetail, (value) {
    return _then(_self.copyWith(stampsDetail: value));
  });
}
}

// dart format on
