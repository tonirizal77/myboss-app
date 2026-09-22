// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamps_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StampsModel {

 int get level; String get levelName; int get maxStamp; int get filledStamp; int get maxTotalStamp; int get stampFreeCount; int get cumulativePrev; int get cycle; int get totalPoint; int get stampsNeeded;
/// Create a copy of StampsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsModelCopyWith<StampsModel> get copyWith => _$StampsModelCopyWithImpl<StampsModel>(this as StampsModel, _$identity);

  /// Serializes this StampsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsModel&&(identical(other.level, level) || other.level == level)&&(identical(other.levelName, levelName) || other.levelName == levelName)&&(identical(other.maxStamp, maxStamp) || other.maxStamp == maxStamp)&&(identical(other.filledStamp, filledStamp) || other.filledStamp == filledStamp)&&(identical(other.maxTotalStamp, maxTotalStamp) || other.maxTotalStamp == maxTotalStamp)&&(identical(other.stampFreeCount, stampFreeCount) || other.stampFreeCount == stampFreeCount)&&(identical(other.cumulativePrev, cumulativePrev) || other.cumulativePrev == cumulativePrev)&&(identical(other.cycle, cycle) || other.cycle == cycle)&&(identical(other.totalPoint, totalPoint) || other.totalPoint == totalPoint)&&(identical(other.stampsNeeded, stampsNeeded) || other.stampsNeeded == stampsNeeded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,levelName,maxStamp,filledStamp,maxTotalStamp,stampFreeCount,cumulativePrev,cycle,totalPoint,stampsNeeded);

@override
String toString() {
  return 'StampsModel(level: $level, levelName: $levelName, maxStamp: $maxStamp, filledStamp: $filledStamp, maxTotalStamp: $maxTotalStamp, stampFreeCount: $stampFreeCount, cumulativePrev: $cumulativePrev, cycle: $cycle, totalPoint: $totalPoint, stampsNeeded: $stampsNeeded)';
}


}

/// @nodoc
abstract mixin class $StampsModelCopyWith<$Res>  {
  factory $StampsModelCopyWith(StampsModel value, $Res Function(StampsModel) _then) = _$StampsModelCopyWithImpl;
@useResult
$Res call({
 int level, String levelName, int maxStamp, int filledStamp, int maxTotalStamp, int stampFreeCount, int cumulativePrev, int cycle, int totalPoint, int stampsNeeded
});




}
/// @nodoc
class _$StampsModelCopyWithImpl<$Res>
    implements $StampsModelCopyWith<$Res> {
  _$StampsModelCopyWithImpl(this._self, this._then);

  final StampsModel _self;
  final $Res Function(StampsModel) _then;

/// Create a copy of StampsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? level = null,Object? levelName = null,Object? maxStamp = null,Object? filledStamp = null,Object? maxTotalStamp = null,Object? stampFreeCount = null,Object? cumulativePrev = null,Object? cycle = null,Object? totalPoint = null,Object? stampsNeeded = null,}) {
  return _then(_self.copyWith(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,levelName: null == levelName ? _self.levelName : levelName // ignore: cast_nullable_to_non_nullable
as String,maxStamp: null == maxStamp ? _self.maxStamp : maxStamp // ignore: cast_nullable_to_non_nullable
as int,filledStamp: null == filledStamp ? _self.filledStamp : filledStamp // ignore: cast_nullable_to_non_nullable
as int,maxTotalStamp: null == maxTotalStamp ? _self.maxTotalStamp : maxTotalStamp // ignore: cast_nullable_to_non_nullable
as int,stampFreeCount: null == stampFreeCount ? _self.stampFreeCount : stampFreeCount // ignore: cast_nullable_to_non_nullable
as int,cumulativePrev: null == cumulativePrev ? _self.cumulativePrev : cumulativePrev // ignore: cast_nullable_to_non_nullable
as int,cycle: null == cycle ? _self.cycle : cycle // ignore: cast_nullable_to_non_nullable
as int,totalPoint: null == totalPoint ? _self.totalPoint : totalPoint // ignore: cast_nullable_to_non_nullable
as int,stampsNeeded: null == stampsNeeded ? _self.stampsNeeded : stampsNeeded // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StampsModel].
extension StampsModelPatterns on StampsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsModel value)  $default,){
final _that = this;
switch (_that) {
case _StampsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsModel value)?  $default,){
final _that = this;
switch (_that) {
case _StampsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int level,  String levelName,  int maxStamp,  int filledStamp,  int maxTotalStamp,  int stampFreeCount,  int cumulativePrev,  int cycle,  int totalPoint,  int stampsNeeded)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsModel() when $default != null:
return $default(_that.level,_that.levelName,_that.maxStamp,_that.filledStamp,_that.maxTotalStamp,_that.stampFreeCount,_that.cumulativePrev,_that.cycle,_that.totalPoint,_that.stampsNeeded);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int level,  String levelName,  int maxStamp,  int filledStamp,  int maxTotalStamp,  int stampFreeCount,  int cumulativePrev,  int cycle,  int totalPoint,  int stampsNeeded)  $default,) {final _that = this;
switch (_that) {
case _StampsModel():
return $default(_that.level,_that.levelName,_that.maxStamp,_that.filledStamp,_that.maxTotalStamp,_that.stampFreeCount,_that.cumulativePrev,_that.cycle,_that.totalPoint,_that.stampsNeeded);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int level,  String levelName,  int maxStamp,  int filledStamp,  int maxTotalStamp,  int stampFreeCount,  int cumulativePrev,  int cycle,  int totalPoint,  int stampsNeeded)?  $default,) {final _that = this;
switch (_that) {
case _StampsModel() when $default != null:
return $default(_that.level,_that.levelName,_that.maxStamp,_that.filledStamp,_that.maxTotalStamp,_that.stampFreeCount,_that.cumulativePrev,_that.cycle,_that.totalPoint,_that.stampsNeeded);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StampsModel implements StampsModel {
  const _StampsModel({this.level = 0, this.levelName = "", this.maxStamp = 0, this.filledStamp = 0, this.maxTotalStamp = 0, this.stampFreeCount = 0, this.cumulativePrev = 0, this.cycle = 0, this.totalPoint = 0, this.stampsNeeded = 0});
  factory _StampsModel.fromJson(Map<String, dynamic> json) => _$StampsModelFromJson(json);

@override@JsonKey() final  int level;
@override@JsonKey() final  String levelName;
@override@JsonKey() final  int maxStamp;
@override@JsonKey() final  int filledStamp;
@override@JsonKey() final  int maxTotalStamp;
@override@JsonKey() final  int stampFreeCount;
@override@JsonKey() final  int cumulativePrev;
@override@JsonKey() final  int cycle;
@override@JsonKey() final  int totalPoint;
@override@JsonKey() final  int stampsNeeded;

/// Create a copy of StampsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsModelCopyWith<_StampsModel> get copyWith => __$StampsModelCopyWithImpl<_StampsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsModel&&(identical(other.level, level) || other.level == level)&&(identical(other.levelName, levelName) || other.levelName == levelName)&&(identical(other.maxStamp, maxStamp) || other.maxStamp == maxStamp)&&(identical(other.filledStamp, filledStamp) || other.filledStamp == filledStamp)&&(identical(other.maxTotalStamp, maxTotalStamp) || other.maxTotalStamp == maxTotalStamp)&&(identical(other.stampFreeCount, stampFreeCount) || other.stampFreeCount == stampFreeCount)&&(identical(other.cumulativePrev, cumulativePrev) || other.cumulativePrev == cumulativePrev)&&(identical(other.cycle, cycle) || other.cycle == cycle)&&(identical(other.totalPoint, totalPoint) || other.totalPoint == totalPoint)&&(identical(other.stampsNeeded, stampsNeeded) || other.stampsNeeded == stampsNeeded));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,level,levelName,maxStamp,filledStamp,maxTotalStamp,stampFreeCount,cumulativePrev,cycle,totalPoint,stampsNeeded);

@override
String toString() {
  return 'StampsModel(level: $level, levelName: $levelName, maxStamp: $maxStamp, filledStamp: $filledStamp, maxTotalStamp: $maxTotalStamp, stampFreeCount: $stampFreeCount, cumulativePrev: $cumulativePrev, cycle: $cycle, totalPoint: $totalPoint, stampsNeeded: $stampsNeeded)';
}


}

/// @nodoc
abstract mixin class _$StampsModelCopyWith<$Res> implements $StampsModelCopyWith<$Res> {
  factory _$StampsModelCopyWith(_StampsModel value, $Res Function(_StampsModel) _then) = __$StampsModelCopyWithImpl;
@override @useResult
$Res call({
 int level, String levelName, int maxStamp, int filledStamp, int maxTotalStamp, int stampFreeCount, int cumulativePrev, int cycle, int totalPoint, int stampsNeeded
});




}
/// @nodoc
class __$StampsModelCopyWithImpl<$Res>
    implements _$StampsModelCopyWith<$Res> {
  __$StampsModelCopyWithImpl(this._self, this._then);

  final _StampsModel _self;
  final $Res Function(_StampsModel) _then;

/// Create a copy of StampsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? level = null,Object? levelName = null,Object? maxStamp = null,Object? filledStamp = null,Object? maxTotalStamp = null,Object? stampFreeCount = null,Object? cumulativePrev = null,Object? cycle = null,Object? totalPoint = null,Object? stampsNeeded = null,}) {
  return _then(_StampsModel(
level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,levelName: null == levelName ? _self.levelName : levelName // ignore: cast_nullable_to_non_nullable
as String,maxStamp: null == maxStamp ? _self.maxStamp : maxStamp // ignore: cast_nullable_to_non_nullable
as int,filledStamp: null == filledStamp ? _self.filledStamp : filledStamp // ignore: cast_nullable_to_non_nullable
as int,maxTotalStamp: null == maxTotalStamp ? _self.maxTotalStamp : maxTotalStamp // ignore: cast_nullable_to_non_nullable
as int,stampFreeCount: null == stampFreeCount ? _self.stampFreeCount : stampFreeCount // ignore: cast_nullable_to_non_nullable
as int,cumulativePrev: null == cumulativePrev ? _self.cumulativePrev : cumulativePrev // ignore: cast_nullable_to_non_nullable
as int,cycle: null == cycle ? _self.cycle : cycle // ignore: cast_nullable_to_non_nullable
as int,totalPoint: null == totalPoint ? _self.totalPoint : totalPoint // ignore: cast_nullable_to_non_nullable
as int,stampsNeeded: null == stampsNeeded ? _self.stampsNeeded : stampsNeeded // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
