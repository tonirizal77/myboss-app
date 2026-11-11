// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loyalty_points_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoyaltyPointsModel {

/// Points balance: `balance_points` (staging, 2026-11-11), older
/// payloads `total_balance_point`. Null when the server sends neither:
/// the app then shows `balance_points` of `/profile/info`.
@JsonKey(readValue: _readBalance) int? get totalBalancePoint; ExpiringPointsModel? get expiringPoints;/// History, earned and redeemed (staging sends `all_point`; the older
/// `active_point` is still read as a fallback).
@JsonKey(readValue: _readHistory) List<ActivePointModel> get allPoint;
/// Create a copy of LoyaltyPointsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoyaltyPointsModelCopyWith<LoyaltyPointsModel> get copyWith => _$LoyaltyPointsModelCopyWithImpl<LoyaltyPointsModel>(this as LoyaltyPointsModel, _$identity);

  /// Serializes this LoyaltyPointsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoyaltyPointsModel&&(identical(other.totalBalancePoint, totalBalancePoint) || other.totalBalancePoint == totalBalancePoint)&&(identical(other.expiringPoints, expiringPoints) || other.expiringPoints == expiringPoints)&&const DeepCollectionEquality().equals(other.allPoint, allPoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalBalancePoint,expiringPoints,const DeepCollectionEquality().hash(allPoint));

@override
String toString() {
  return 'LoyaltyPointsModel(totalBalancePoint: $totalBalancePoint, expiringPoints: $expiringPoints, allPoint: $allPoint)';
}


}

/// @nodoc
abstract mixin class $LoyaltyPointsModelCopyWith<$Res>  {
  factory $LoyaltyPointsModelCopyWith(LoyaltyPointsModel value, $Res Function(LoyaltyPointsModel) _then) = _$LoyaltyPointsModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(readValue: _readBalance) int? totalBalancePoint, ExpiringPointsModel? expiringPoints,@JsonKey(readValue: _readHistory) List<ActivePointModel> allPoint
});


$ExpiringPointsModelCopyWith<$Res>? get expiringPoints;

}
/// @nodoc
class _$LoyaltyPointsModelCopyWithImpl<$Res>
    implements $LoyaltyPointsModelCopyWith<$Res> {
  _$LoyaltyPointsModelCopyWithImpl(this._self, this._then);

  final LoyaltyPointsModel _self;
  final $Res Function(LoyaltyPointsModel) _then;

/// Create a copy of LoyaltyPointsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? totalBalancePoint = freezed,Object? expiringPoints = freezed,Object? allPoint = null,}) {
  return _then(_self.copyWith(
totalBalancePoint: freezed == totalBalancePoint ? _self.totalBalancePoint : totalBalancePoint // ignore: cast_nullable_to_non_nullable
as int?,expiringPoints: freezed == expiringPoints ? _self.expiringPoints : expiringPoints // ignore: cast_nullable_to_non_nullable
as ExpiringPointsModel?,allPoint: null == allPoint ? _self.allPoint : allPoint // ignore: cast_nullable_to_non_nullable
as List<ActivePointModel>,
  ));
}
/// Create a copy of LoyaltyPointsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpiringPointsModelCopyWith<$Res>? get expiringPoints {
    if (_self.expiringPoints == null) {
    return null;
  }

  return $ExpiringPointsModelCopyWith<$Res>(_self.expiringPoints!, (value) {
    return _then(_self.copyWith(expiringPoints: value));
  });
}
}


/// Adds pattern-matching-related methods to [LoyaltyPointsModel].
extension LoyaltyPointsModelPatterns on LoyaltyPointsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoyaltyPointsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoyaltyPointsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoyaltyPointsModel value)  $default,){
final _that = this;
switch (_that) {
case _LoyaltyPointsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoyaltyPointsModel value)?  $default,){
final _that = this;
switch (_that) {
case _LoyaltyPointsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readBalance)  int? totalBalancePoint,  ExpiringPointsModel? expiringPoints, @JsonKey(readValue: _readHistory)  List<ActivePointModel> allPoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoyaltyPointsModel() when $default != null:
return $default(_that.totalBalancePoint,_that.expiringPoints,_that.allPoint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(readValue: _readBalance)  int? totalBalancePoint,  ExpiringPointsModel? expiringPoints, @JsonKey(readValue: _readHistory)  List<ActivePointModel> allPoint)  $default,) {final _that = this;
switch (_that) {
case _LoyaltyPointsModel():
return $default(_that.totalBalancePoint,_that.expiringPoints,_that.allPoint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(readValue: _readBalance)  int? totalBalancePoint,  ExpiringPointsModel? expiringPoints, @JsonKey(readValue: _readHistory)  List<ActivePointModel> allPoint)?  $default,) {final _that = this;
switch (_that) {
case _LoyaltyPointsModel() when $default != null:
return $default(_that.totalBalancePoint,_that.expiringPoints,_that.allPoint);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LoyaltyPointsModel implements LoyaltyPointsModel {
  const _LoyaltyPointsModel({@JsonKey(readValue: _readBalance) this.totalBalancePoint, this.expiringPoints, @JsonKey(readValue: _readHistory) final  List<ActivePointModel> allPoint = const []}): _allPoint = allPoint;
  factory _LoyaltyPointsModel.fromJson(Map<String, dynamic> json) => _$LoyaltyPointsModelFromJson(json);

/// Points balance: `balance_points` (staging, 2026-11-11), older
/// payloads `total_balance_point`. Null when the server sends neither:
/// the app then shows `balance_points` of `/profile/info`.
@override@JsonKey(readValue: _readBalance) final  int? totalBalancePoint;
@override final  ExpiringPointsModel? expiringPoints;
/// History, earned and redeemed (staging sends `all_point`; the older
/// `active_point` is still read as a fallback).
 final  List<ActivePointModel> _allPoint;
/// History, earned and redeemed (staging sends `all_point`; the older
/// `active_point` is still read as a fallback).
@override@JsonKey(readValue: _readHistory) List<ActivePointModel> get allPoint {
  if (_allPoint is EqualUnmodifiableListView) return _allPoint;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_allPoint);
}


/// Create a copy of LoyaltyPointsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoyaltyPointsModelCopyWith<_LoyaltyPointsModel> get copyWith => __$LoyaltyPointsModelCopyWithImpl<_LoyaltyPointsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoyaltyPointsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoyaltyPointsModel&&(identical(other.totalBalancePoint, totalBalancePoint) || other.totalBalancePoint == totalBalancePoint)&&(identical(other.expiringPoints, expiringPoints) || other.expiringPoints == expiringPoints)&&const DeepCollectionEquality().equals(other._allPoint, _allPoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalBalancePoint,expiringPoints,const DeepCollectionEquality().hash(_allPoint));

@override
String toString() {
  return 'LoyaltyPointsModel(totalBalancePoint: $totalBalancePoint, expiringPoints: $expiringPoints, allPoint: $allPoint)';
}


}

/// @nodoc
abstract mixin class _$LoyaltyPointsModelCopyWith<$Res> implements $LoyaltyPointsModelCopyWith<$Res> {
  factory _$LoyaltyPointsModelCopyWith(_LoyaltyPointsModel value, $Res Function(_LoyaltyPointsModel) _then) = __$LoyaltyPointsModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(readValue: _readBalance) int? totalBalancePoint, ExpiringPointsModel? expiringPoints,@JsonKey(readValue: _readHistory) List<ActivePointModel> allPoint
});


@override $ExpiringPointsModelCopyWith<$Res>? get expiringPoints;

}
/// @nodoc
class __$LoyaltyPointsModelCopyWithImpl<$Res>
    implements _$LoyaltyPointsModelCopyWith<$Res> {
  __$LoyaltyPointsModelCopyWithImpl(this._self, this._then);

  final _LoyaltyPointsModel _self;
  final $Res Function(_LoyaltyPointsModel) _then;

/// Create a copy of LoyaltyPointsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? totalBalancePoint = freezed,Object? expiringPoints = freezed,Object? allPoint = null,}) {
  return _then(_LoyaltyPointsModel(
totalBalancePoint: freezed == totalBalancePoint ? _self.totalBalancePoint : totalBalancePoint // ignore: cast_nullable_to_non_nullable
as int?,expiringPoints: freezed == expiringPoints ? _self.expiringPoints : expiringPoints // ignore: cast_nullable_to_non_nullable
as ExpiringPointsModel?,allPoint: null == allPoint ? _self._allPoint : allPoint // ignore: cast_nullable_to_non_nullable
as List<ActivePointModel>,
  ));
}

/// Create a copy of LoyaltyPointsModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ExpiringPointsModelCopyWith<$Res>? get expiringPoints {
    if (_self.expiringPoints == null) {
    return null;
  }

  return $ExpiringPointsModelCopyWith<$Res>(_self.expiringPoints!, (value) {
    return _then(_self.copyWith(expiringPoints: value));
  });
}
}


/// @nodoc
mixin _$ExpiringPointsModel {

 int get balancePoints;/// `yyyy-MM-dd`
 String? get expireDate;/// Server text, e.g. "Kadaluarsa dalam 3 hari".
 String? get expireDateSubtext;
/// Create a copy of ExpiringPointsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ExpiringPointsModelCopyWith<ExpiringPointsModel> get copyWith => _$ExpiringPointsModelCopyWithImpl<ExpiringPointsModel>(this as ExpiringPointsModel, _$identity);

  /// Serializes this ExpiringPointsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ExpiringPointsModel&&(identical(other.balancePoints, balancePoints) || other.balancePoints == balancePoints)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.expireDateSubtext, expireDateSubtext) || other.expireDateSubtext == expireDateSubtext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balancePoints,expireDate,expireDateSubtext);

@override
String toString() {
  return 'ExpiringPointsModel(balancePoints: $balancePoints, expireDate: $expireDate, expireDateSubtext: $expireDateSubtext)';
}


}

/// @nodoc
abstract mixin class $ExpiringPointsModelCopyWith<$Res>  {
  factory $ExpiringPointsModelCopyWith(ExpiringPointsModel value, $Res Function(ExpiringPointsModel) _then) = _$ExpiringPointsModelCopyWithImpl;
@useResult
$Res call({
 int balancePoints, String? expireDate, String? expireDateSubtext
});




}
/// @nodoc
class _$ExpiringPointsModelCopyWithImpl<$Res>
    implements $ExpiringPointsModelCopyWith<$Res> {
  _$ExpiringPointsModelCopyWithImpl(this._self, this._then);

  final ExpiringPointsModel _self;
  final $Res Function(ExpiringPointsModel) _then;

/// Create a copy of ExpiringPointsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? balancePoints = null,Object? expireDate = freezed,Object? expireDateSubtext = freezed,}) {
  return _then(_self.copyWith(
balancePoints: null == balancePoints ? _self.balancePoints : balancePoints // ignore: cast_nullable_to_non_nullable
as int,expireDate: freezed == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as String?,expireDateSubtext: freezed == expireDateSubtext ? _self.expireDateSubtext : expireDateSubtext // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ExpiringPointsModel].
extension ExpiringPointsModelPatterns on ExpiringPointsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ExpiringPointsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ExpiringPointsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ExpiringPointsModel value)  $default,){
final _that = this;
switch (_that) {
case _ExpiringPointsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ExpiringPointsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ExpiringPointsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int balancePoints,  String? expireDate,  String? expireDateSubtext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ExpiringPointsModel() when $default != null:
return $default(_that.balancePoints,_that.expireDate,_that.expireDateSubtext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int balancePoints,  String? expireDate,  String? expireDateSubtext)  $default,) {final _that = this;
switch (_that) {
case _ExpiringPointsModel():
return $default(_that.balancePoints,_that.expireDate,_that.expireDateSubtext);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int balancePoints,  String? expireDate,  String? expireDateSubtext)?  $default,) {final _that = this;
switch (_that) {
case _ExpiringPointsModel() when $default != null:
return $default(_that.balancePoints,_that.expireDate,_that.expireDateSubtext);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ExpiringPointsModel implements ExpiringPointsModel {
  const _ExpiringPointsModel({this.balancePoints = 0, this.expireDate, this.expireDateSubtext});
  factory _ExpiringPointsModel.fromJson(Map<String, dynamic> json) => _$ExpiringPointsModelFromJson(json);

@override@JsonKey() final  int balancePoints;
/// `yyyy-MM-dd`
@override final  String? expireDate;
/// Server text, e.g. "Kadaluarsa dalam 3 hari".
@override final  String? expireDateSubtext;

/// Create a copy of ExpiringPointsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ExpiringPointsModelCopyWith<_ExpiringPointsModel> get copyWith => __$ExpiringPointsModelCopyWithImpl<_ExpiringPointsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ExpiringPointsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ExpiringPointsModel&&(identical(other.balancePoints, balancePoints) || other.balancePoints == balancePoints)&&(identical(other.expireDate, expireDate) || other.expireDate == expireDate)&&(identical(other.expireDateSubtext, expireDateSubtext) || other.expireDateSubtext == expireDateSubtext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,balancePoints,expireDate,expireDateSubtext);

@override
String toString() {
  return 'ExpiringPointsModel(balancePoints: $balancePoints, expireDate: $expireDate, expireDateSubtext: $expireDateSubtext)';
}


}

/// @nodoc
abstract mixin class _$ExpiringPointsModelCopyWith<$Res> implements $ExpiringPointsModelCopyWith<$Res> {
  factory _$ExpiringPointsModelCopyWith(_ExpiringPointsModel value, $Res Function(_ExpiringPointsModel) _then) = __$ExpiringPointsModelCopyWithImpl;
@override @useResult
$Res call({
 int balancePoints, String? expireDate, String? expireDateSubtext
});




}
/// @nodoc
class __$ExpiringPointsModelCopyWithImpl<$Res>
    implements _$ExpiringPointsModelCopyWith<$Res> {
  __$ExpiringPointsModelCopyWithImpl(this._self, this._then);

  final _ExpiringPointsModel _self;
  final $Res Function(_ExpiringPointsModel) _then;

/// Create a copy of ExpiringPointsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? balancePoints = null,Object? expireDate = freezed,Object? expireDateSubtext = freezed,}) {
  return _then(_ExpiringPointsModel(
balancePoints: null == balancePoints ? _self.balancePoints : balancePoints // ignore: cast_nullable_to_non_nullable
as int,expireDate: freezed == expireDate ? _self.expireDate : expireDate // ignore: cast_nullable_to_non_nullable
as String?,expireDateSubtext: freezed == expireDateSubtext ? _self.expireDateSubtext : expireDateSubtext // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ActivePointModel {

 int get id;/// `Active` (earned), `Deducted` (redeemed) or `Expired`.
 String? get status;/// Server label, e.g. "Point Earned" / "Point Redeemed".
 String? get detail; int? get salesOrderId;/// `yyyy-MM-dd HH:mm:ss`
 String? get date;/// Always positive; [status] says whether it was earned or deducted
/// (older payloads: `earned_points`).
@JsonKey(readValue: _readPoints) int get displayedPoint; int? get orderTotal; String? get forderTotal;
/// Create a copy of ActivePointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivePointModelCopyWith<ActivePointModel> get copyWith => _$ActivePointModelCopyWithImpl<ActivePointModel>(this as ActivePointModel, _$identity);

  /// Serializes this ActivePointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivePointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.date, date) || other.date == date)&&(identical(other.displayedPoint, displayedPoint) || other.displayedPoint == displayedPoint)&&(identical(other.orderTotal, orderTotal) || other.orderTotal == orderTotal)&&(identical(other.forderTotal, forderTotal) || other.forderTotal == forderTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,detail,salesOrderId,date,displayedPoint,orderTotal,forderTotal);

@override
String toString() {
  return 'ActivePointModel(id: $id, status: $status, detail: $detail, salesOrderId: $salesOrderId, date: $date, displayedPoint: $displayedPoint, orderTotal: $orderTotal, forderTotal: $forderTotal)';
}


}

/// @nodoc
abstract mixin class $ActivePointModelCopyWith<$Res>  {
  factory $ActivePointModelCopyWith(ActivePointModel value, $Res Function(ActivePointModel) _then) = _$ActivePointModelCopyWithImpl;
@useResult
$Res call({
 int id, String? status, String? detail, int? salesOrderId, String? date,@JsonKey(readValue: _readPoints) int displayedPoint, int? orderTotal, String? forderTotal
});




}
/// @nodoc
class _$ActivePointModelCopyWithImpl<$Res>
    implements $ActivePointModelCopyWith<$Res> {
  _$ActivePointModelCopyWithImpl(this._self, this._then);

  final ActivePointModel _self;
  final $Res Function(ActivePointModel) _then;

/// Create a copy of ActivePointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? status = freezed,Object? detail = freezed,Object? salesOrderId = freezed,Object? date = freezed,Object? displayedPoint = null,Object? orderTotal = freezed,Object? forderTotal = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,salesOrderId: freezed == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,displayedPoint: null == displayedPoint ? _self.displayedPoint : displayedPoint // ignore: cast_nullable_to_non_nullable
as int,orderTotal: freezed == orderTotal ? _self.orderTotal : orderTotal // ignore: cast_nullable_to_non_nullable
as int?,forderTotal: freezed == forderTotal ? _self.forderTotal : forderTotal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ActivePointModel].
extension ActivePointModelPatterns on ActivePointModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ActivePointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ActivePointModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ActivePointModel value)  $default,){
final _that = this;
switch (_that) {
case _ActivePointModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ActivePointModel value)?  $default,){
final _that = this;
switch (_that) {
case _ActivePointModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? status,  String? detail,  int? salesOrderId,  String? date, @JsonKey(readValue: _readPoints)  int displayedPoint,  int? orderTotal,  String? forderTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivePointModel() when $default != null:
return $default(_that.id,_that.status,_that.detail,_that.salesOrderId,_that.date,_that.displayedPoint,_that.orderTotal,_that.forderTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? status,  String? detail,  int? salesOrderId,  String? date, @JsonKey(readValue: _readPoints)  int displayedPoint,  int? orderTotal,  String? forderTotal)  $default,) {final _that = this;
switch (_that) {
case _ActivePointModel():
return $default(_that.id,_that.status,_that.detail,_that.salesOrderId,_that.date,_that.displayedPoint,_that.orderTotal,_that.forderTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? status,  String? detail,  int? salesOrderId,  String? date, @JsonKey(readValue: _readPoints)  int displayedPoint,  int? orderTotal,  String? forderTotal)?  $default,) {final _that = this;
switch (_that) {
case _ActivePointModel() when $default != null:
return $default(_that.id,_that.status,_that.detail,_that.salesOrderId,_that.date,_that.displayedPoint,_that.orderTotal,_that.forderTotal);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ActivePointModel extends ActivePointModel {
  const _ActivePointModel({this.id = 0, this.status, this.detail, this.salesOrderId, this.date, @JsonKey(readValue: _readPoints) this.displayedPoint = 0, this.orderTotal, this.forderTotal}): super._();
  factory _ActivePointModel.fromJson(Map<String, dynamic> json) => _$ActivePointModelFromJson(json);

@override@JsonKey() final  int id;
/// `Active` (earned), `Deducted` (redeemed) or `Expired`.
@override final  String? status;
/// Server label, e.g. "Point Earned" / "Point Redeemed".
@override final  String? detail;
@override final  int? salesOrderId;
/// `yyyy-MM-dd HH:mm:ss`
@override final  String? date;
/// Always positive; [status] says whether it was earned or deducted
/// (older payloads: `earned_points`).
@override@JsonKey(readValue: _readPoints) final  int displayedPoint;
@override final  int? orderTotal;
@override final  String? forderTotal;

/// Create a copy of ActivePointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActivePointModelCopyWith<_ActivePointModel> get copyWith => __$ActivePointModelCopyWithImpl<_ActivePointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ActivePointModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivePointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.status, status) || other.status == status)&&(identical(other.detail, detail) || other.detail == detail)&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.date, date) || other.date == date)&&(identical(other.displayedPoint, displayedPoint) || other.displayedPoint == displayedPoint)&&(identical(other.orderTotal, orderTotal) || other.orderTotal == orderTotal)&&(identical(other.forderTotal, forderTotal) || other.forderTotal == forderTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,status,detail,salesOrderId,date,displayedPoint,orderTotal,forderTotal);

@override
String toString() {
  return 'ActivePointModel(id: $id, status: $status, detail: $detail, salesOrderId: $salesOrderId, date: $date, displayedPoint: $displayedPoint, orderTotal: $orderTotal, forderTotal: $forderTotal)';
}


}

/// @nodoc
abstract mixin class _$ActivePointModelCopyWith<$Res> implements $ActivePointModelCopyWith<$Res> {
  factory _$ActivePointModelCopyWith(_ActivePointModel value, $Res Function(_ActivePointModel) _then) = __$ActivePointModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? status, String? detail, int? salesOrderId, String? date,@JsonKey(readValue: _readPoints) int displayedPoint, int? orderTotal, String? forderTotal
});




}
/// @nodoc
class __$ActivePointModelCopyWithImpl<$Res>
    implements _$ActivePointModelCopyWith<$Res> {
  __$ActivePointModelCopyWithImpl(this._self, this._then);

  final _ActivePointModel _self;
  final $Res Function(_ActivePointModel) _then;

/// Create a copy of ActivePointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? status = freezed,Object? detail = freezed,Object? salesOrderId = freezed,Object? date = freezed,Object? displayedPoint = null,Object? orderTotal = freezed,Object? forderTotal = freezed,}) {
  return _then(_ActivePointModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,detail: freezed == detail ? _self.detail : detail // ignore: cast_nullable_to_non_nullable
as String?,salesOrderId: freezed == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,displayedPoint: null == displayedPoint ? _self.displayedPoint : displayedPoint // ignore: cast_nullable_to_non_nullable
as int,orderTotal: freezed == orderTotal ? _self.orderTotal : orderTotal // ignore: cast_nullable_to_non_nullable
as int?,forderTotal: freezed == forderTotal ? _self.forderTotal : forderTotal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
