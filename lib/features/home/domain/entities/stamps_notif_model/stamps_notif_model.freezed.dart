// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamps_notif_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StampsNotifModel {

 String get notifType; String get notifRemark; DataNotif get data;
/// Create a copy of StampsNotifModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsNotifModelCopyWith<StampsNotifModel> get copyWith => _$StampsNotifModelCopyWithImpl<StampsNotifModel>(this as StampsNotifModel, _$identity);

  /// Serializes this StampsNotifModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsNotifModel&&(identical(other.notifType, notifType) || other.notifType == notifType)&&(identical(other.notifRemark, notifRemark) || other.notifRemark == notifRemark)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notifType,notifRemark,data);

@override
String toString() {
  return 'StampsNotifModel(notifType: $notifType, notifRemark: $notifRemark, data: $data)';
}


}

/// @nodoc
abstract mixin class $StampsNotifModelCopyWith<$Res>  {
  factory $StampsNotifModelCopyWith(StampsNotifModel value, $Res Function(StampsNotifModel) _then) = _$StampsNotifModelCopyWithImpl;
@useResult
$Res call({
 String notifType, String notifRemark, DataNotif data
});


$DataNotifCopyWith<$Res> get data;

}
/// @nodoc
class _$StampsNotifModelCopyWithImpl<$Res>
    implements $StampsNotifModelCopyWith<$Res> {
  _$StampsNotifModelCopyWithImpl(this._self, this._then);

  final StampsNotifModel _self;
  final $Res Function(StampsNotifModel) _then;

/// Create a copy of StampsNotifModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? notifType = null,Object? notifRemark = null,Object? data = null,}) {
  return _then(_self.copyWith(
notifType: null == notifType ? _self.notifType : notifType // ignore: cast_nullable_to_non_nullable
as String,notifRemark: null == notifRemark ? _self.notifRemark : notifRemark // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DataNotif,
  ));
}
/// Create a copy of StampsNotifModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataNotifCopyWith<$Res> get data {
  
  return $DataNotifCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// Adds pattern-matching-related methods to [StampsNotifModel].
extension StampsNotifModelPatterns on StampsNotifModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsNotifModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsNotifModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsNotifModel value)  $default,){
final _that = this;
switch (_that) {
case _StampsNotifModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsNotifModel value)?  $default,){
final _that = this;
switch (_that) {
case _StampsNotifModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String notifType,  String notifRemark,  DataNotif data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsNotifModel() when $default != null:
return $default(_that.notifType,_that.notifRemark,_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String notifType,  String notifRemark,  DataNotif data)  $default,) {final _that = this;
switch (_that) {
case _StampsNotifModel():
return $default(_that.notifType,_that.notifRemark,_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String notifType,  String notifRemark,  DataNotif data)?  $default,) {final _that = this;
switch (_that) {
case _StampsNotifModel() when $default != null:
return $default(_that.notifType,_that.notifRemark,_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StampsNotifModel implements StampsNotifModel {
  const _StampsNotifModel({this.notifType = "sales", this.notifRemark = "HAYO", this.data = const DataNotif()});
  factory _StampsNotifModel.fromJson(Map<String, dynamic> json) => _$StampsNotifModelFromJson(json);

@override@JsonKey() final  String notifType;
@override@JsonKey() final  String notifRemark;
@override@JsonKey() final  DataNotif data;

/// Create a copy of StampsNotifModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsNotifModelCopyWith<_StampsNotifModel> get copyWith => __$StampsNotifModelCopyWithImpl<_StampsNotifModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsNotifModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsNotifModel&&(identical(other.notifType, notifType) || other.notifType == notifType)&&(identical(other.notifRemark, notifRemark) || other.notifRemark == notifRemark)&&(identical(other.data, data) || other.data == data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,notifType,notifRemark,data);

@override
String toString() {
  return 'StampsNotifModel(notifType: $notifType, notifRemark: $notifRemark, data: $data)';
}


}

/// @nodoc
abstract mixin class _$StampsNotifModelCopyWith<$Res> implements $StampsNotifModelCopyWith<$Res> {
  factory _$StampsNotifModelCopyWith(_StampsNotifModel value, $Res Function(_StampsNotifModel) _then) = __$StampsNotifModelCopyWithImpl;
@override @useResult
$Res call({
 String notifType, String notifRemark, DataNotif data
});


@override $DataNotifCopyWith<$Res> get data;

}
/// @nodoc
class __$StampsNotifModelCopyWithImpl<$Res>
    implements _$StampsNotifModelCopyWith<$Res> {
  __$StampsNotifModelCopyWithImpl(this._self, this._then);

  final _StampsNotifModel _self;
  final $Res Function(_StampsNotifModel) _then;

/// Create a copy of StampsNotifModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? notifType = null,Object? notifRemark = null,Object? data = null,}) {
  return _then(_StampsNotifModel(
notifType: null == notifType ? _self.notifType : notifType // ignore: cast_nullable_to_non_nullable
as String,notifRemark: null == notifRemark ? _self.notifRemark : notifRemark // ignore: cast_nullable_to_non_nullable
as String,data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as DataNotif,
  ));
}

/// Create a copy of StampsNotifModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DataNotifCopyWith<$Res> get data {
  
  return $DataNotifCopyWith<$Res>(_self.data, (value) {
    return _then(_self.copyWith(data: value));
  });
}
}


/// @nodoc
mixin _$DataNotif {

 int? get customerId; int? get storeId; int? get salesOrderId; String? get salesOrderNo; dynamic get salesReturnId; dynamic get salesReturnNo;
/// Create a copy of DataNotif
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataNotifCopyWith<DataNotif> get copyWith => _$DataNotifCopyWithImpl<DataNotif>(this as DataNotif, _$identity);

  /// Serializes this DataNotif to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataNotif&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.salesOrderNo, salesOrderNo) || other.salesOrderNo == salesOrderNo)&&const DeepCollectionEquality().equals(other.salesReturnId, salesReturnId)&&const DeepCollectionEquality().equals(other.salesReturnNo, salesReturnNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,storeId,salesOrderId,salesOrderNo,const DeepCollectionEquality().hash(salesReturnId),const DeepCollectionEquality().hash(salesReturnNo));

@override
String toString() {
  return 'DataNotif(customerId: $customerId, storeId: $storeId, salesOrderId: $salesOrderId, salesOrderNo: $salesOrderNo, salesReturnId: $salesReturnId, salesReturnNo: $salesReturnNo)';
}


}

/// @nodoc
abstract mixin class $DataNotifCopyWith<$Res>  {
  factory $DataNotifCopyWith(DataNotif value, $Res Function(DataNotif) _then) = _$DataNotifCopyWithImpl;
@useResult
$Res call({
 int? customerId, int? storeId, int? salesOrderId, String? salesOrderNo, dynamic salesReturnId, dynamic salesReturnNo
});




}
/// @nodoc
class _$DataNotifCopyWithImpl<$Res>
    implements $DataNotifCopyWith<$Res> {
  _$DataNotifCopyWithImpl(this._self, this._then);

  final DataNotif _self;
  final $Res Function(DataNotif) _then;

/// Create a copy of DataNotif
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? customerId = freezed,Object? storeId = freezed,Object? salesOrderId = freezed,Object? salesOrderNo = freezed,Object? salesReturnId = freezed,Object? salesReturnNo = freezed,}) {
  return _then(_self.copyWith(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,salesOrderId: freezed == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as int?,salesOrderNo: freezed == salesOrderNo ? _self.salesOrderNo : salesOrderNo // ignore: cast_nullable_to_non_nullable
as String?,salesReturnId: freezed == salesReturnId ? _self.salesReturnId : salesReturnId // ignore: cast_nullable_to_non_nullable
as dynamic,salesReturnNo: freezed == salesReturnNo ? _self.salesReturnNo : salesReturnNo // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}

}


/// Adds pattern-matching-related methods to [DataNotif].
extension DataNotifPatterns on DataNotif {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataNotif value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataNotif() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataNotif value)  $default,){
final _that = this;
switch (_that) {
case _DataNotif():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataNotif value)?  $default,){
final _that = this;
switch (_that) {
case _DataNotif() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? customerId,  int? storeId,  int? salesOrderId,  String? salesOrderNo,  dynamic salesReturnId,  dynamic salesReturnNo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataNotif() when $default != null:
return $default(_that.customerId,_that.storeId,_that.salesOrderId,_that.salesOrderNo,_that.salesReturnId,_that.salesReturnNo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? customerId,  int? storeId,  int? salesOrderId,  String? salesOrderNo,  dynamic salesReturnId,  dynamic salesReturnNo)  $default,) {final _that = this;
switch (_that) {
case _DataNotif():
return $default(_that.customerId,_that.storeId,_that.salesOrderId,_that.salesOrderNo,_that.salesReturnId,_that.salesReturnNo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? customerId,  int? storeId,  int? salesOrderId,  String? salesOrderNo,  dynamic salesReturnId,  dynamic salesReturnNo)?  $default,) {final _that = this;
switch (_that) {
case _DataNotif() when $default != null:
return $default(_that.customerId,_that.storeId,_that.salesOrderId,_that.salesOrderNo,_that.salesReturnId,_that.salesReturnNo);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DataNotif implements DataNotif {
  const _DataNotif({this.customerId, this.storeId, this.salesOrderId, this.salesOrderNo, this.salesReturnId, this.salesReturnNo});
  factory _DataNotif.fromJson(Map<String, dynamic> json) => _$DataNotifFromJson(json);

@override final  int? customerId;
@override final  int? storeId;
@override final  int? salesOrderId;
@override final  String? salesOrderNo;
@override final  dynamic salesReturnId;
@override final  dynamic salesReturnNo;

/// Create a copy of DataNotif
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataNotifCopyWith<_DataNotif> get copyWith => __$DataNotifCopyWithImpl<_DataNotif>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataNotifToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataNotif&&(identical(other.customerId, customerId) || other.customerId == customerId)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.salesOrderId, salesOrderId) || other.salesOrderId == salesOrderId)&&(identical(other.salesOrderNo, salesOrderNo) || other.salesOrderNo == salesOrderNo)&&const DeepCollectionEquality().equals(other.salesReturnId, salesReturnId)&&const DeepCollectionEquality().equals(other.salesReturnNo, salesReturnNo));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,customerId,storeId,salesOrderId,salesOrderNo,const DeepCollectionEquality().hash(salesReturnId),const DeepCollectionEquality().hash(salesReturnNo));

@override
String toString() {
  return 'DataNotif(customerId: $customerId, storeId: $storeId, salesOrderId: $salesOrderId, salesOrderNo: $salesOrderNo, salesReturnId: $salesReturnId, salesReturnNo: $salesReturnNo)';
}


}

/// @nodoc
abstract mixin class _$DataNotifCopyWith<$Res> implements $DataNotifCopyWith<$Res> {
  factory _$DataNotifCopyWith(_DataNotif value, $Res Function(_DataNotif) _then) = __$DataNotifCopyWithImpl;
@override @useResult
$Res call({
 int? customerId, int? storeId, int? salesOrderId, String? salesOrderNo, dynamic salesReturnId, dynamic salesReturnNo
});




}
/// @nodoc
class __$DataNotifCopyWithImpl<$Res>
    implements _$DataNotifCopyWith<$Res> {
  __$DataNotifCopyWithImpl(this._self, this._then);

  final _DataNotif _self;
  final $Res Function(_DataNotif) _then;

/// Create a copy of DataNotif
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? customerId = freezed,Object? storeId = freezed,Object? salesOrderId = freezed,Object? salesOrderNo = freezed,Object? salesReturnId = freezed,Object? salesReturnNo = freezed,}) {
  return _then(_DataNotif(
customerId: freezed == customerId ? _self.customerId : customerId // ignore: cast_nullable_to_non_nullable
as int?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,salesOrderId: freezed == salesOrderId ? _self.salesOrderId : salesOrderId // ignore: cast_nullable_to_non_nullable
as int?,salesOrderNo: freezed == salesOrderNo ? _self.salesOrderNo : salesOrderNo // ignore: cast_nullable_to_non_nullable
as String?,salesReturnId: freezed == salesReturnId ? _self.salesReturnId : salesReturnId // ignore: cast_nullable_to_non_nullable
as dynamic,salesReturnNo: freezed == salesReturnNo ? _self.salesReturnNo : salesReturnNo // ignore: cast_nullable_to_non_nullable
as dynamic,
  ));
}


}

// dart format on
