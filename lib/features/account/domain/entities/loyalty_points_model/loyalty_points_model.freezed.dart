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

 int get totalBalancePoint; ExpiringPointsModel? get expiringPoints; List<ActivePointModel> get activePoint;
/// Create a copy of LoyaltyPointsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoyaltyPointsModelCopyWith<LoyaltyPointsModel> get copyWith => _$LoyaltyPointsModelCopyWithImpl<LoyaltyPointsModel>(this as LoyaltyPointsModel, _$identity);

  /// Serializes this LoyaltyPointsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoyaltyPointsModel&&(identical(other.totalBalancePoint, totalBalancePoint) || other.totalBalancePoint == totalBalancePoint)&&(identical(other.expiringPoints, expiringPoints) || other.expiringPoints == expiringPoints)&&const DeepCollectionEquality().equals(other.activePoint, activePoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalBalancePoint,expiringPoints,const DeepCollectionEquality().hash(activePoint));

@override
String toString() {
  return 'LoyaltyPointsModel(totalBalancePoint: $totalBalancePoint, expiringPoints: $expiringPoints, activePoint: $activePoint)';
}


}

/// @nodoc
abstract mixin class $LoyaltyPointsModelCopyWith<$Res>  {
  factory $LoyaltyPointsModelCopyWith(LoyaltyPointsModel value, $Res Function(LoyaltyPointsModel) _then) = _$LoyaltyPointsModelCopyWithImpl;
@useResult
$Res call({
 int totalBalancePoint, ExpiringPointsModel? expiringPoints, List<ActivePointModel> activePoint
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
@pragma('vm:prefer-inline') @override $Res call({Object? totalBalancePoint = null,Object? expiringPoints = freezed,Object? activePoint = null,}) {
  return _then(_self.copyWith(
totalBalancePoint: null == totalBalancePoint ? _self.totalBalancePoint : totalBalancePoint // ignore: cast_nullable_to_non_nullable
as int,expiringPoints: freezed == expiringPoints ? _self.expiringPoints : expiringPoints // ignore: cast_nullable_to_non_nullable
as ExpiringPointsModel?,activePoint: null == activePoint ? _self.activePoint : activePoint // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int totalBalancePoint,  ExpiringPointsModel? expiringPoints,  List<ActivePointModel> activePoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoyaltyPointsModel() when $default != null:
return $default(_that.totalBalancePoint,_that.expiringPoints,_that.activePoint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int totalBalancePoint,  ExpiringPointsModel? expiringPoints,  List<ActivePointModel> activePoint)  $default,) {final _that = this;
switch (_that) {
case _LoyaltyPointsModel():
return $default(_that.totalBalancePoint,_that.expiringPoints,_that.activePoint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int totalBalancePoint,  ExpiringPointsModel? expiringPoints,  List<ActivePointModel> activePoint)?  $default,) {final _that = this;
switch (_that) {
case _LoyaltyPointsModel() when $default != null:
return $default(_that.totalBalancePoint,_that.expiringPoints,_that.activePoint);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LoyaltyPointsModel implements LoyaltyPointsModel {
  const _LoyaltyPointsModel({this.totalBalancePoint = 0, this.expiringPoints, final  List<ActivePointModel> activePoint = const []}): _activePoint = activePoint;
  factory _LoyaltyPointsModel.fromJson(Map<String, dynamic> json) => _$LoyaltyPointsModelFromJson(json);

@override@JsonKey() final  int totalBalancePoint;
@override final  ExpiringPointsModel? expiringPoints;
 final  List<ActivePointModel> _activePoint;
@override@JsonKey() List<ActivePointModel> get activePoint {
  if (_activePoint is EqualUnmodifiableListView) return _activePoint;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_activePoint);
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoyaltyPointsModel&&(identical(other.totalBalancePoint, totalBalancePoint) || other.totalBalancePoint == totalBalancePoint)&&(identical(other.expiringPoints, expiringPoints) || other.expiringPoints == expiringPoints)&&const DeepCollectionEquality().equals(other._activePoint, _activePoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,totalBalancePoint,expiringPoints,const DeepCollectionEquality().hash(_activePoint));

@override
String toString() {
  return 'LoyaltyPointsModel(totalBalancePoint: $totalBalancePoint, expiringPoints: $expiringPoints, activePoint: $activePoint)';
}


}

/// @nodoc
abstract mixin class _$LoyaltyPointsModelCopyWith<$Res> implements $LoyaltyPointsModelCopyWith<$Res> {
  factory _$LoyaltyPointsModelCopyWith(_LoyaltyPointsModel value, $Res Function(_LoyaltyPointsModel) _then) = __$LoyaltyPointsModelCopyWithImpl;
@override @useResult
$Res call({
 int totalBalancePoint, ExpiringPointsModel? expiringPoints, List<ActivePointModel> activePoint
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
@override @pragma('vm:prefer-inline') $Res call({Object? totalBalancePoint = null,Object? expiringPoints = freezed,Object? activePoint = null,}) {
  return _then(_LoyaltyPointsModel(
totalBalancePoint: null == totalBalancePoint ? _self.totalBalancePoint : totalBalancePoint // ignore: cast_nullable_to_non_nullable
as int,expiringPoints: freezed == expiringPoints ? _self.expiringPoints : expiringPoints // ignore: cast_nullable_to_non_nullable
as ExpiringPointsModel?,activePoint: null == activePoint ? _self._activePoint : activePoint // ignore: cast_nullable_to_non_nullable
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

 int get id; int? get salesOrderId;/// `yyyy-MM-dd HH:mm:ss`
 String? get date; int get earnedPoints; int? get orderTotal; String? get forderTotal;
/// Create a copy of ActivePointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ActivePointModelCopyWith<ActivePointModel> get copyWith => _$ActivePointModelCopyWithImpl<ActivePointModel>(this as ActivePointModel, _$identity);

  /// Serializes this ActivePointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ActivePointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.date, date) || other.date == date)&&(identical(other.earnedPoints, earnedPoints) || other.earnedPoints == earnedPoints)&&(identical(other.orderTotal, orderTotal) || other.orderTotal == orderTotal)&&(identical(other.forderTotal, forderTotal) || other.forderTotal == forderTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,salesOrderId,date,earnedPoints,orderTotal,forderTotal);

@override
String toString() {
  return 'ActivePointModel(id: $id, salesOrderId: $salesOrderId, date: $date, earnedPoints: $earnedPoints, orderTotal: $orderTotal, forderTotal: $forderTotal)';
}


}

/// @nodoc
abstract mixin class $ActivePointModelCopyWith<$Res>  {
  factory $ActivePointModelCopyWith(ActivePointModel value, $Res Function(ActivePointModel) _then) = _$ActivePointModelCopyWithImpl;
@useResult
$Res call({
 int id, int? salesOrderId, String? date, int earnedPoints, int? orderTotal, String? forderTotal
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
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? salesOrderId = freezed,Object? date = freezed,Object? earnedPoints = null,Object? orderTotal = freezed,Object? forderTotal = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,salesOrderId: freezed == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,earnedPoints: null == earnedPoints ? _self.earnedPoints : earnedPoints // ignore: cast_nullable_to_non_nullable
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? salesOrderId,  String? date,  int earnedPoints,  int? orderTotal,  String? forderTotal)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ActivePointModel() when $default != null:
return $default(_that.id,_that.salesOrderId,_that.date,_that.earnedPoints,_that.orderTotal,_that.forderTotal);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? salesOrderId,  String? date,  int earnedPoints,  int? orderTotal,  String? forderTotal)  $default,) {final _that = this;
switch (_that) {
case _ActivePointModel():
return $default(_that.id,_that.salesOrderId,_that.date,_that.earnedPoints,_that.orderTotal,_that.forderTotal);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? salesOrderId,  String? date,  int earnedPoints,  int? orderTotal,  String? forderTotal)?  $default,) {final _that = this;
switch (_that) {
case _ActivePointModel() when $default != null:
return $default(_that.id,_that.salesOrderId,_that.date,_that.earnedPoints,_that.orderTotal,_that.forderTotal);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ActivePointModel implements ActivePointModel {
  const _ActivePointModel({this.id = 0, this.salesOrderId, this.date, this.earnedPoints = 0, this.orderTotal, this.forderTotal});
  factory _ActivePointModel.fromJson(Map<String, dynamic> json) => _$ActivePointModelFromJson(json);

@override@JsonKey() final  int id;
@override final  int? salesOrderId;
/// `yyyy-MM-dd HH:mm:ss`
@override final  String? date;
@override@JsonKey() final  int earnedPoints;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActivePointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.date, date) || other.date == date)&&(identical(other.earnedPoints, earnedPoints) || other.earnedPoints == earnedPoints)&&(identical(other.orderTotal, orderTotal) || other.orderTotal == orderTotal)&&(identical(other.forderTotal, forderTotal) || other.forderTotal == forderTotal));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,salesOrderId,date,earnedPoints,orderTotal,forderTotal);

@override
String toString() {
  return 'ActivePointModel(id: $id, salesOrderId: $salesOrderId, date: $date, earnedPoints: $earnedPoints, orderTotal: $orderTotal, forderTotal: $forderTotal)';
}


}

/// @nodoc
abstract mixin class _$ActivePointModelCopyWith<$Res> implements $ActivePointModelCopyWith<$Res> {
  factory _$ActivePointModelCopyWith(_ActivePointModel value, $Res Function(_ActivePointModel) _then) = __$ActivePointModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int? salesOrderId, String? date, int earnedPoints, int? orderTotal, String? forderTotal
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
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? salesOrderId = freezed,Object? date = freezed,Object? earnedPoints = null,Object? orderTotal = freezed,Object? forderTotal = freezed,}) {
  return _then(_ActivePointModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,salesOrderId: freezed == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as int?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String?,earnedPoints: null == earnedPoints ? _self.earnedPoints : earnedPoints // ignore: cast_nullable_to_non_nullable
as int,orderTotal: freezed == orderTotal ? _self.orderTotal : orderTotal // ignore: cast_nullable_to_non_nullable
as int?,forderTotal: freezed == forderTotal ? _self.forderTotal : forderTotal // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
