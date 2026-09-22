// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stamps_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StampsDetailModel {

 String? get fdiscountAmount; String? get forderAmount; String? get fredeemedAmount; String? get fserviceChargeAmount; String? get fshippingCost; String? get ftaxAmount; String? get ftotalAmount; String? get ftotalCostAmount; int get id; List<OrderDetail>? get orderDetail; int get redeemedPoints;
/// Create a copy of StampsDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StampsDetailModelCopyWith<StampsDetailModel> get copyWith => _$StampsDetailModelCopyWithImpl<StampsDetailModel>(this as StampsDetailModel, _$identity);

  /// Serializes this StampsDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StampsDetailModel&&(identical(other.fdiscountAmount, fdiscountAmount) || other.fdiscountAmount == fdiscountAmount)&&(identical(other.forderAmount, forderAmount) || other.forderAmount == forderAmount)&&(identical(other.fredeemedAmount, fredeemedAmount) || other.fredeemedAmount == fredeemedAmount)&&(identical(other.fserviceChargeAmount, fserviceChargeAmount) || other.fserviceChargeAmount == fserviceChargeAmount)&&(identical(other.fshippingCost, fshippingCost) || other.fshippingCost == fshippingCost)&&(identical(other.ftaxAmount, ftaxAmount) || other.ftaxAmount == ftaxAmount)&&(identical(other.ftotalAmount, ftotalAmount) || other.ftotalAmount == ftotalAmount)&&(identical(other.ftotalCostAmount, ftotalCostAmount) || other.ftotalCostAmount == ftotalCostAmount)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other.orderDetail, orderDetail)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fdiscountAmount,forderAmount,fredeemedAmount,fserviceChargeAmount,fshippingCost,ftaxAmount,ftotalAmount,ftotalCostAmount,id,const DeepCollectionEquality().hash(orderDetail),redeemedPoints);

@override
String toString() {
  return 'StampsDetailModel(fdiscountAmount: $fdiscountAmount, forderAmount: $forderAmount, fredeemedAmount: $fredeemedAmount, fserviceChargeAmount: $fserviceChargeAmount, fshippingCost: $fshippingCost, ftaxAmount: $ftaxAmount, ftotalAmount: $ftotalAmount, ftotalCostAmount: $ftotalCostAmount, id: $id, orderDetail: $orderDetail, redeemedPoints: $redeemedPoints)';
}


}

/// @nodoc
abstract mixin class $StampsDetailModelCopyWith<$Res>  {
  factory $StampsDetailModelCopyWith(StampsDetailModel value, $Res Function(StampsDetailModel) _then) = _$StampsDetailModelCopyWithImpl;
@useResult
$Res call({
 String? fdiscountAmount, String? forderAmount, String? fredeemedAmount, String? fserviceChargeAmount, String? fshippingCost, String? ftaxAmount, String? ftotalAmount, String? ftotalCostAmount, int id, List<OrderDetail>? orderDetail, int redeemedPoints
});




}
/// @nodoc
class _$StampsDetailModelCopyWithImpl<$Res>
    implements $StampsDetailModelCopyWith<$Res> {
  _$StampsDetailModelCopyWithImpl(this._self, this._then);

  final StampsDetailModel _self;
  final $Res Function(StampsDetailModel) _then;

/// Create a copy of StampsDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fdiscountAmount = freezed,Object? forderAmount = freezed,Object? fredeemedAmount = freezed,Object? fserviceChargeAmount = freezed,Object? fshippingCost = freezed,Object? ftaxAmount = freezed,Object? ftotalAmount = freezed,Object? ftotalCostAmount = freezed,Object? id = null,Object? orderDetail = freezed,Object? redeemedPoints = null,}) {
  return _then(_self.copyWith(
fdiscountAmount: freezed == fdiscountAmount ? _self.fdiscountAmount : fdiscountAmount // ignore: cast_nullable_to_non_nullable
as String?,forderAmount: freezed == forderAmount ? _self.forderAmount : forderAmount // ignore: cast_nullable_to_non_nullable
as String?,fredeemedAmount: freezed == fredeemedAmount ? _self.fredeemedAmount : fredeemedAmount // ignore: cast_nullable_to_non_nullable
as String?,fserviceChargeAmount: freezed == fserviceChargeAmount ? _self.fserviceChargeAmount : fserviceChargeAmount // ignore: cast_nullable_to_non_nullable
as String?,fshippingCost: freezed == fshippingCost ? _self.fshippingCost : fshippingCost // ignore: cast_nullable_to_non_nullable
as String?,ftaxAmount: freezed == ftaxAmount ? _self.ftaxAmount : ftaxAmount // ignore: cast_nullable_to_non_nullable
as String?,ftotalAmount: freezed == ftotalAmount ? _self.ftotalAmount : ftotalAmount // ignore: cast_nullable_to_non_nullable
as String?,ftotalCostAmount: freezed == ftotalCostAmount ? _self.ftotalCostAmount : ftotalCostAmount // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderDetail: freezed == orderDetail ? _self.orderDetail : orderDetail // ignore: cast_nullable_to_non_nullable
as List<OrderDetail>?,redeemedPoints: null == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StampsDetailModel].
extension StampsDetailModelPatterns on StampsDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StampsDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StampsDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StampsDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _StampsDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StampsDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _StampsDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? fdiscountAmount,  String? forderAmount,  String? fredeemedAmount,  String? fserviceChargeAmount,  String? fshippingCost,  String? ftaxAmount,  String? ftotalAmount,  String? ftotalCostAmount,  int id,  List<OrderDetail>? orderDetail,  int redeemedPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StampsDetailModel() when $default != null:
return $default(_that.fdiscountAmount,_that.forderAmount,_that.fredeemedAmount,_that.fserviceChargeAmount,_that.fshippingCost,_that.ftaxAmount,_that.ftotalAmount,_that.ftotalCostAmount,_that.id,_that.orderDetail,_that.redeemedPoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? fdiscountAmount,  String? forderAmount,  String? fredeemedAmount,  String? fserviceChargeAmount,  String? fshippingCost,  String? ftaxAmount,  String? ftotalAmount,  String? ftotalCostAmount,  int id,  List<OrderDetail>? orderDetail,  int redeemedPoints)  $default,) {final _that = this;
switch (_that) {
case _StampsDetailModel():
return $default(_that.fdiscountAmount,_that.forderAmount,_that.fredeemedAmount,_that.fserviceChargeAmount,_that.fshippingCost,_that.ftaxAmount,_that.ftotalAmount,_that.ftotalCostAmount,_that.id,_that.orderDetail,_that.redeemedPoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? fdiscountAmount,  String? forderAmount,  String? fredeemedAmount,  String? fserviceChargeAmount,  String? fshippingCost,  String? ftaxAmount,  String? ftotalAmount,  String? ftotalCostAmount,  int id,  List<OrderDetail>? orderDetail,  int redeemedPoints)?  $default,) {final _that = this;
switch (_that) {
case _StampsDetailModel() when $default != null:
return $default(_that.fdiscountAmount,_that.forderAmount,_that.fredeemedAmount,_that.fserviceChargeAmount,_that.fshippingCost,_that.ftaxAmount,_that.ftotalAmount,_that.ftotalCostAmount,_that.id,_that.orderDetail,_that.redeemedPoints);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StampsDetailModel implements StampsDetailModel {
  const _StampsDetailModel({this.fdiscountAmount, this.forderAmount, this.fredeemedAmount, this.fserviceChargeAmount, this.fshippingCost, this.ftaxAmount, this.ftotalAmount, this.ftotalCostAmount, this.id = 0, final  List<OrderDetail>? orderDetail, this.redeemedPoints = 0}): _orderDetail = orderDetail;
  factory _StampsDetailModel.fromJson(Map<String, dynamic> json) => _$StampsDetailModelFromJson(json);

@override final  String? fdiscountAmount;
@override final  String? forderAmount;
@override final  String? fredeemedAmount;
@override final  String? fserviceChargeAmount;
@override final  String? fshippingCost;
@override final  String? ftaxAmount;
@override final  String? ftotalAmount;
@override final  String? ftotalCostAmount;
@override@JsonKey() final  int id;
 final  List<OrderDetail>? _orderDetail;
@override List<OrderDetail>? get orderDetail {
  final value = _orderDetail;
  if (value == null) return null;
  if (_orderDetail is EqualUnmodifiableListView) return _orderDetail;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  int redeemedPoints;

/// Create a copy of StampsDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StampsDetailModelCopyWith<_StampsDetailModel> get copyWith => __$StampsDetailModelCopyWithImpl<_StampsDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StampsDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StampsDetailModel&&(identical(other.fdiscountAmount, fdiscountAmount) || other.fdiscountAmount == fdiscountAmount)&&(identical(other.forderAmount, forderAmount) || other.forderAmount == forderAmount)&&(identical(other.fredeemedAmount, fredeemedAmount) || other.fredeemedAmount == fredeemedAmount)&&(identical(other.fserviceChargeAmount, fserviceChargeAmount) || other.fserviceChargeAmount == fserviceChargeAmount)&&(identical(other.fshippingCost, fshippingCost) || other.fshippingCost == fshippingCost)&&(identical(other.ftaxAmount, ftaxAmount) || other.ftaxAmount == ftaxAmount)&&(identical(other.ftotalAmount, ftotalAmount) || other.ftotalAmount == ftotalAmount)&&(identical(other.ftotalCostAmount, ftotalCostAmount) || other.ftotalCostAmount == ftotalCostAmount)&&(identical(other.id, id) || other.id == id)&&const DeepCollectionEquality().equals(other._orderDetail, _orderDetail)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,fdiscountAmount,forderAmount,fredeemedAmount,fserviceChargeAmount,fshippingCost,ftaxAmount,ftotalAmount,ftotalCostAmount,id,const DeepCollectionEquality().hash(_orderDetail),redeemedPoints);

@override
String toString() {
  return 'StampsDetailModel(fdiscountAmount: $fdiscountAmount, forderAmount: $forderAmount, fredeemedAmount: $fredeemedAmount, fserviceChargeAmount: $fserviceChargeAmount, fshippingCost: $fshippingCost, ftaxAmount: $ftaxAmount, ftotalAmount: $ftotalAmount, ftotalCostAmount: $ftotalCostAmount, id: $id, orderDetail: $orderDetail, redeemedPoints: $redeemedPoints)';
}


}

/// @nodoc
abstract mixin class _$StampsDetailModelCopyWith<$Res> implements $StampsDetailModelCopyWith<$Res> {
  factory _$StampsDetailModelCopyWith(_StampsDetailModel value, $Res Function(_StampsDetailModel) _then) = __$StampsDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String? fdiscountAmount, String? forderAmount, String? fredeemedAmount, String? fserviceChargeAmount, String? fshippingCost, String? ftaxAmount, String? ftotalAmount, String? ftotalCostAmount, int id, List<OrderDetail>? orderDetail, int redeemedPoints
});




}
/// @nodoc
class __$StampsDetailModelCopyWithImpl<$Res>
    implements _$StampsDetailModelCopyWith<$Res> {
  __$StampsDetailModelCopyWithImpl(this._self, this._then);

  final _StampsDetailModel _self;
  final $Res Function(_StampsDetailModel) _then;

/// Create a copy of StampsDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fdiscountAmount = freezed,Object? forderAmount = freezed,Object? fredeemedAmount = freezed,Object? fserviceChargeAmount = freezed,Object? fshippingCost = freezed,Object? ftaxAmount = freezed,Object? ftotalAmount = freezed,Object? ftotalCostAmount = freezed,Object? id = null,Object? orderDetail = freezed,Object? redeemedPoints = null,}) {
  return _then(_StampsDetailModel(
fdiscountAmount: freezed == fdiscountAmount ? _self.fdiscountAmount : fdiscountAmount // ignore: cast_nullable_to_non_nullable
as String?,forderAmount: freezed == forderAmount ? _self.forderAmount : forderAmount // ignore: cast_nullable_to_non_nullable
as String?,fredeemedAmount: freezed == fredeemedAmount ? _self.fredeemedAmount : fredeemedAmount // ignore: cast_nullable_to_non_nullable
as String?,fserviceChargeAmount: freezed == fserviceChargeAmount ? _self.fserviceChargeAmount : fserviceChargeAmount // ignore: cast_nullable_to_non_nullable
as String?,fshippingCost: freezed == fshippingCost ? _self.fshippingCost : fshippingCost // ignore: cast_nullable_to_non_nullable
as String?,ftaxAmount: freezed == ftaxAmount ? _self.ftaxAmount : ftaxAmount // ignore: cast_nullable_to_non_nullable
as String?,ftotalAmount: freezed == ftotalAmount ? _self.ftotalAmount : ftotalAmount // ignore: cast_nullable_to_non_nullable
as String?,ftotalCostAmount: freezed == ftotalCostAmount ? _self.ftotalCostAmount : ftotalCostAmount // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderDetail: freezed == orderDetail ? _self._orderDetail : orderDetail // ignore: cast_nullable_to_non_nullable
as List<OrderDetail>?,redeemedPoints: null == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$OrderDetail {

 int get amount; String? get famount; String? get fprice; int get id; String? get name; int get price; int get qty;
/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailCopyWith<OrderDetail> get copyWith => _$OrderDetailCopyWithImpl<OrderDetail>(this as OrderDetail, _$identity);

  /// Serializes this OrderDetail to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetail&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.famount, famount) || other.famount == famount)&&(identical(other.fprice, fprice) || other.fprice == fprice)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.qty, qty) || other.qty == qty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,famount,fprice,id,name,price,qty);

@override
String toString() {
  return 'OrderDetail(amount: $amount, famount: $famount, fprice: $fprice, id: $id, name: $name, price: $price, qty: $qty)';
}


}

/// @nodoc
abstract mixin class $OrderDetailCopyWith<$Res>  {
  factory $OrderDetailCopyWith(OrderDetail value, $Res Function(OrderDetail) _then) = _$OrderDetailCopyWithImpl;
@useResult
$Res call({
 int amount, String? famount, String? fprice, int id, String? name, int price, int qty
});




}
/// @nodoc
class _$OrderDetailCopyWithImpl<$Res>
    implements $OrderDetailCopyWith<$Res> {
  _$OrderDetailCopyWithImpl(this._self, this._then);

  final OrderDetail _self;
  final $Res Function(OrderDetail) _then;

/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? famount = freezed,Object? fprice = freezed,Object? id = null,Object? name = freezed,Object? price = null,Object? qty = null,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,famount: freezed == famount ? _self.famount : famount // ignore: cast_nullable_to_non_nullable
as String?,fprice: freezed == fprice ? _self.fprice : fprice // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderDetail].
extension OrderDetailPatterns on OrderDetail {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetail value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetail() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetail value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetail():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetail value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetail() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int amount,  String? famount,  String? fprice,  int id,  String? name,  int price,  int qty)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetail() when $default != null:
return $default(_that.amount,_that.famount,_that.fprice,_that.id,_that.name,_that.price,_that.qty);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int amount,  String? famount,  String? fprice,  int id,  String? name,  int price,  int qty)  $default,) {final _that = this;
switch (_that) {
case _OrderDetail():
return $default(_that.amount,_that.famount,_that.fprice,_that.id,_that.name,_that.price,_that.qty);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int amount,  String? famount,  String? fprice,  int id,  String? name,  int price,  int qty)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetail() when $default != null:
return $default(_that.amount,_that.famount,_that.fprice,_that.id,_that.name,_that.price,_that.qty);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OrderDetail implements OrderDetail {
  const _OrderDetail({this.amount = 0, this.famount, this.fprice, this.id = 0, this.name, this.price = 0, this.qty = 0});
  factory _OrderDetail.fromJson(Map<String, dynamic> json) => _$OrderDetailFromJson(json);

@override@JsonKey() final  int amount;
@override final  String? famount;
@override final  String? fprice;
@override@JsonKey() final  int id;
@override final  String? name;
@override@JsonKey() final  int price;
@override@JsonKey() final  int qty;

/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailCopyWith<_OrderDetail> get copyWith => __$OrderDetailCopyWithImpl<_OrderDetail>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetail&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.famount, famount) || other.famount == famount)&&(identical(other.fprice, fprice) || other.fprice == fprice)&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.price, price) || other.price == price)&&(identical(other.qty, qty) || other.qty == qty));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,amount,famount,fprice,id,name,price,qty);

@override
String toString() {
  return 'OrderDetail(amount: $amount, famount: $famount, fprice: $fprice, id: $id, name: $name, price: $price, qty: $qty)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailCopyWith<$Res> implements $OrderDetailCopyWith<$Res> {
  factory _$OrderDetailCopyWith(_OrderDetail value, $Res Function(_OrderDetail) _then) = __$OrderDetailCopyWithImpl;
@override @useResult
$Res call({
 int amount, String? famount, String? fprice, int id, String? name, int price, int qty
});




}
/// @nodoc
class __$OrderDetailCopyWithImpl<$Res>
    implements _$OrderDetailCopyWith<$Res> {
  __$OrderDetailCopyWithImpl(this._self, this._then);

  final _OrderDetail _self;
  final $Res Function(_OrderDetail) _then;

/// Create a copy of OrderDetail
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? famount = freezed,Object? fprice = freezed,Object? id = null,Object? name = freezed,Object? price = null,Object? qty = null,}) {
  return _then(_OrderDetail(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as int,famount: freezed == famount ? _self.famount : famount // ignore: cast_nullable_to_non_nullable
as String?,fprice: freezed == fprice ? _self.fprice : fprice // ignore: cast_nullable_to_non_nullable
as String?,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
