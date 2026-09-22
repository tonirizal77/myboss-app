// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamps_history_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StampsHistoryModel {

 List<StampsHistory>? get data; Meta get meta; int get status; int get error;
/// Create a copy of StampsHistoryModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsHistoryModelCopyWith<StampsHistoryModel> get copyWith => _$StampsHistoryModelCopyWithImpl<StampsHistoryModel>(this as StampsHistoryModel, _$identity);

  /// Serializes this StampsHistoryModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsHistoryModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'StampsHistoryModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $StampsHistoryModelCopyWith<$Res>  {
  factory $StampsHistoryModelCopyWith(StampsHistoryModel value, $Res Function(StampsHistoryModel) _then) = _$StampsHistoryModelCopyWithImpl;
@useResult
$Res call({
 List<StampsHistory>? data, Meta meta, int status, int error
});


$MetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$StampsHistoryModelCopyWithImpl<$Res>
    implements $StampsHistoryModelCopyWith<$Res> {
  _$StampsHistoryModelCopyWithImpl(this._self, this._then);

  final StampsHistoryModel _self;
  final $Res Function(StampsHistoryModel) _then;

/// Create a copy of StampsHistoryModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = freezed,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<StampsHistory>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of StampsHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [StampsHistoryModel].
extension StampsHistoryModelPatterns on StampsHistoryModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsHistoryModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsHistoryModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsHistoryModel value)  $default,){
final _that = this;
switch (_that) {
case _StampsHistoryModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsHistoryModel value)?  $default,){
final _that = this;
switch (_that) {
case _StampsHistoryModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StampsHistory>? data,  Meta meta,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsHistoryModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StampsHistory>? data,  Meta meta,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _StampsHistoryModel():
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StampsHistory>? data,  Meta meta,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _StampsHistoryModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StampsHistoryModel implements StampsHistoryModel {
  const _StampsHistoryModel({final  List<StampsHistory>? data, this.meta = const Meta(), this.status = 0, this.error = 0}): _data = data;
  factory _StampsHistoryModel.fromJson(Map<String, dynamic> json) => _$StampsHistoryModelFromJson(json);

 final  List<StampsHistory>? _data;
@override List<StampsHistory>? get data {
  final value = _data;
  if (value == null) return null;
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  Meta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of StampsHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsHistoryModelCopyWith<_StampsHistoryModel> get copyWith => __$StampsHistoryModelCopyWithImpl<_StampsHistoryModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsHistoryModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsHistoryModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'StampsHistoryModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StampsHistoryModelCopyWith<$Res> implements $StampsHistoryModelCopyWith<$Res> {
  factory _$StampsHistoryModelCopyWith(_StampsHistoryModel value, $Res Function(_StampsHistoryModel) _then) = __$StampsHistoryModelCopyWithImpl;
@override @useResult
$Res call({
 List<StampsHistory>? data, Meta meta, int status, int error
});


@override $MetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$StampsHistoryModelCopyWithImpl<$Res>
    implements _$StampsHistoryModelCopyWith<$Res> {
  __$StampsHistoryModelCopyWithImpl(this._self, this._then);

  final _StampsHistoryModel _self;
  final $Res Function(_StampsHistoryModel) _then;

/// Create a copy of StampsHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = freezed,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_StampsHistoryModel(
data: freezed == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<StampsHistory>?,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of StampsHistoryModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$StampsHistory {

 int get balancePoints; int get cancelledPoints; String get earnedDate; String get earnedPoints; String get expiryDate; int get redeemedPoints; int get salesOrderId; int get salesReturnId; String get status; String get type;
/// Create a copy of StampsHistory
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsHistoryCopyWith<StampsHistory> get copyWith => _$StampsHistoryCopyWithImpl<StampsHistory>(this as StampsHistory, _$identity);

  /// Serializes this StampsHistory to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsHistory&&(identical(other.balancePoints, balancePoints) || other.balancePoints == balancePoints)&&(identical(other.cancelledPoints, cancelledPoints) || other.cancelledPoints == cancelledPoints)&&(identical(other.earnedDate, earnedDate) || other.earnedDate == earnedDate)&&(identical(other.earnedPoints, earnedPoints) || other.earnedPoints == earnedPoints)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.salesReturnId, salesReturnId) || other.salesReturnId == salesReturnId)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balancePoints,cancelledPoints,earnedDate,earnedPoints,expiryDate,redeemedPoints,salesOrderId,salesReturnId,status,type);

@override
String toString() {
  return 'StampsHistory(balancePoints: $balancePoints, cancelledPoints: $cancelledPoints, earnedDate: $earnedDate, earnedPoints: $earnedPoints, expiryDate: $expiryDate, redeemedPoints: $redeemedPoints, salesOrderId: $salesOrderId, salesReturnId: $salesReturnId, status: $status, type: $type)';
}


}

/// @nodoc
abstract mixin class $StampsHistoryCopyWith<$Res>  {
  factory $StampsHistoryCopyWith(StampsHistory value, $Res Function(StampsHistory) _then) = _$StampsHistoryCopyWithImpl;
@useResult
$Res call({
 int balancePoints, int cancelledPoints, String earnedDate, String earnedPoints, String expiryDate, int redeemedPoints, int salesOrderId, int salesReturnId, String status, String type
});




}
/// @nodoc
class _$StampsHistoryCopyWithImpl<$Res>
    implements $StampsHistoryCopyWith<$Res> {
  _$StampsHistoryCopyWithImpl(this._self, this._then);

  final StampsHistory _self;
  final $Res Function(StampsHistory) _then;

/// Create a copy of StampsHistory
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balancePoints = null,Object? cancelledPoints = null,Object? earnedDate = null,Object? earnedPoints = null,Object? expiryDate = null,Object? redeemedPoints = null,Object? salesOrderId = null,Object? salesReturnId = null,Object? status = null,Object? type = null,}) {
  return _then(_self.copyWith(
balancePoints: null == balancePoints ? _self.balancePoints : balancePoints // ignore: cast_nullable_to_non_nullable
as int,cancelledPoints: null == cancelledPoints ? _self.cancelledPoints : cancelledPoints // ignore: cast_nullable_to_non_nullable
as int,earnedDate: null == earnedDate ? _self.earnedDate : earnedDate // ignore: cast_nullable_to_non_nullable
as String,earnedPoints: null == earnedPoints ? _self.earnedPoints : earnedPoints // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,redeemedPoints: null == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int,salesOrderId: null == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as int,salesReturnId: null == salesReturnId ? _self.salesReturnId : salesReturnId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StampsHistory].
extension StampsHistoryPatterns on StampsHistory {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsHistory value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsHistory() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsHistory value)  $default,){
final _that = this;
switch (_that) {
case _StampsHistory():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsHistory value)?  $default,){
final _that = this;
switch (_that) {
case _StampsHistory() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int balancePoints,  int cancelledPoints,  String earnedDate,  String earnedPoints,  String expiryDate,  int redeemedPoints,  int salesOrderId,  int salesReturnId,  String status,  String type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsHistory() when $default != null:
return $default(_that.balancePoints,_that.cancelledPoints,_that.earnedDate,_that.earnedPoints,_that.expiryDate,_that.redeemedPoints,_that.salesOrderId,_that.salesReturnId,_that.status,_that.type);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int balancePoints,  int cancelledPoints,  String earnedDate,  String earnedPoints,  String expiryDate,  int redeemedPoints,  int salesOrderId,  int salesReturnId,  String status,  String type)  $default,) {final _that = this;
switch (_that) {
case _StampsHistory():
return $default(_that.balancePoints,_that.cancelledPoints,_that.earnedDate,_that.earnedPoints,_that.expiryDate,_that.redeemedPoints,_that.salesOrderId,_that.salesReturnId,_that.status,_that.type);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int balancePoints,  int cancelledPoints,  String earnedDate,  String earnedPoints,  String expiryDate,  int redeemedPoints,  int salesOrderId,  int salesReturnId,  String status,  String type)?  $default,) {final _that = this;
switch (_that) {
case _StampsHistory() when $default != null:
return $default(_that.balancePoints,_that.cancelledPoints,_that.earnedDate,_that.earnedPoints,_that.expiryDate,_that.redeemedPoints,_that.salesOrderId,_that.salesReturnId,_that.status,_that.type);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StampsHistory implements StampsHistory {
  const _StampsHistory({this.balancePoints = 0, this.cancelledPoints = 0, this.earnedDate = "", this.earnedPoints = "", this.expiryDate = "", this.redeemedPoints = 0, this.salesOrderId = 0, this.salesReturnId = 0, this.status = "", this.type = ""});
  factory _StampsHistory.fromJson(Map<String, dynamic> json) => _$StampsHistoryFromJson(json);

@override@JsonKey() final  int balancePoints;
@override@JsonKey() final  int cancelledPoints;
@override@JsonKey() final  String earnedDate;
@override@JsonKey() final  String earnedPoints;
@override@JsonKey() final  String expiryDate;
@override@JsonKey() final  int redeemedPoints;
@override@JsonKey() final  int salesOrderId;
@override@JsonKey() final  int salesReturnId;
@override@JsonKey() final  String status;
@override@JsonKey() final  String type;

/// Create a copy of StampsHistory
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsHistoryCopyWith<_StampsHistory> get copyWith => __$StampsHistoryCopyWithImpl<_StampsHistory>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsHistoryToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsHistory&&(identical(other.balancePoints, balancePoints) || other.balancePoints == balancePoints)&&(identical(other.cancelledPoints, cancelledPoints) || other.cancelledPoints == cancelledPoints)&&(identical(other.earnedDate, earnedDate) || other.earnedDate == earnedDate)&&(identical(other.earnedPoints, earnedPoints) || other.earnedPoints == earnedPoints)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints)&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.salesReturnId, salesReturnId) || other.salesReturnId == salesReturnId)&&(identical(other.status, status) || other.status == status)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balancePoints,cancelledPoints,earnedDate,earnedPoints,expiryDate,redeemedPoints,salesOrderId,salesReturnId,status,type);

@override
String toString() {
  return 'StampsHistory(balancePoints: $balancePoints, cancelledPoints: $cancelledPoints, earnedDate: $earnedDate, earnedPoints: $earnedPoints, expiryDate: $expiryDate, redeemedPoints: $redeemedPoints, salesOrderId: $salesOrderId, salesReturnId: $salesReturnId, status: $status, type: $type)';
}


}

/// @nodoc
abstract mixin class _$StampsHistoryCopyWith<$Res> implements $StampsHistoryCopyWith<$Res> {
  factory _$StampsHistoryCopyWith(_StampsHistory value, $Res Function(_StampsHistory) _then) = __$StampsHistoryCopyWithImpl;
@override @useResult
$Res call({
 int balancePoints, int cancelledPoints, String earnedDate, String earnedPoints, String expiryDate, int redeemedPoints, int salesOrderId, int salesReturnId, String status, String type
});




}
/// @nodoc
class __$StampsHistoryCopyWithImpl<$Res>
    implements _$StampsHistoryCopyWith<$Res> {
  __$StampsHistoryCopyWithImpl(this._self, this._then);

  final _StampsHistory _self;
  final $Res Function(_StampsHistory) _then;

/// Create a copy of StampsHistory
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balancePoints = null,Object? cancelledPoints = null,Object? earnedDate = null,Object? earnedPoints = null,Object? expiryDate = null,Object? redeemedPoints = null,Object? salesOrderId = null,Object? salesReturnId = null,Object? status = null,Object? type = null,}) {
  return _then(_StampsHistory(
balancePoints: null == balancePoints ? _self.balancePoints : balancePoints // ignore: cast_nullable_to_non_nullable
as int,cancelledPoints: null == cancelledPoints ? _self.cancelledPoints : cancelledPoints // ignore: cast_nullable_to_non_nullable
as int,earnedDate: null == earnedDate ? _self.earnedDate : earnedDate // ignore: cast_nullable_to_non_nullable
as String,earnedPoints: null == earnedPoints ? _self.earnedPoints : earnedPoints // ignore: cast_nullable_to_non_nullable
as String,expiryDate: null == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String,redeemedPoints: null == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int,salesOrderId: null == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as int,salesReturnId: null == salesReturnId ? _self.salesReturnId : salesReturnId // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
