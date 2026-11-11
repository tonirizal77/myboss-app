// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OrderDetailModel {

 int get id; String? get orderNo;/// `yyyy-MM-dd`
 String? get orderDate; String? get storeName; num get totalQty; List<OrderItemModel> get items; OrderAmountModel? get amount;
/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderDetailModelCopyWith<OrderDetailModel> get copyWith => _$OrderDetailModelCopyWithImpl<OrderDetailModel>(this as OrderDetailModel, _$identity);

  /// Serializes this OrderDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNo, orderNo) || other.orderNo == orderNo)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.totalQty, totalQty) || other.totalQty == totalQty)&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNo,orderDate,storeName,totalQty,const DeepCollectionEquality().hash(items),amount);

@override
String toString() {
  return 'OrderDetailModel(id: $id, orderNo: $orderNo, orderDate: $orderDate, storeName: $storeName, totalQty: $totalQty, items: $items, amount: $amount)';
}


}

/// @nodoc
abstract mixin class $OrderDetailModelCopyWith<$Res>  {
  factory $OrderDetailModelCopyWith(OrderDetailModel value, $Res Function(OrderDetailModel) _then) = _$OrderDetailModelCopyWithImpl;
@useResult
$Res call({
 int id, String? orderNo, String? orderDate, String? storeName, num totalQty, List<OrderItemModel> items, OrderAmountModel? amount
});


$OrderAmountModelCopyWith<$Res>? get amount;

}
/// @nodoc
class _$OrderDetailModelCopyWithImpl<$Res>
    implements $OrderDetailModelCopyWith<$Res> {
  _$OrderDetailModelCopyWithImpl(this._self, this._then);

  final OrderDetailModel _self;
  final $Res Function(OrderDetailModel) _then;

/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? orderNo = freezed,Object? orderDate = freezed,Object? storeName = freezed,Object? totalQty = null,Object? items = null,Object? amount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderNo: freezed == orderNo ? _self.orderNo : orderNo // ignore: cast_nullable_to_non_nullable
as String?,orderDate: freezed == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,totalQty: null == totalQty ? _self.totalQty : totalQty // ignore: cast_nullable_to_non_nullable
as num,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as OrderAmountModel?,
  ));
}
/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderAmountModelCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $OrderAmountModelCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// Adds pattern-matching-related methods to [OrderDetailModel].
extension OrderDetailModelPatterns on OrderDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? orderNo,  String? orderDate,  String? storeName,  num totalQty,  List<OrderItemModel> items,  OrderAmountModel? amount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderDetailModel() when $default != null:
return $default(_that.id,_that.orderNo,_that.orderDate,_that.storeName,_that.totalQty,_that.items,_that.amount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? orderNo,  String? orderDate,  String? storeName,  num totalQty,  List<OrderItemModel> items,  OrderAmountModel? amount)  $default,) {final _that = this;
switch (_that) {
case _OrderDetailModel():
return $default(_that.id,_that.orderNo,_that.orderDate,_that.storeName,_that.totalQty,_that.items,_that.amount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? orderNo,  String? orderDate,  String? storeName,  num totalQty,  List<OrderItemModel> items,  OrderAmountModel? amount)?  $default,) {final _that = this;
switch (_that) {
case _OrderDetailModel() when $default != null:
return $default(_that.id,_that.orderNo,_that.orderDate,_that.storeName,_that.totalQty,_that.items,_that.amount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OrderDetailModel implements OrderDetailModel {
  const _OrderDetailModel({this.id = 0, this.orderNo, this.orderDate, this.storeName, this.totalQty = 0, final  List<OrderItemModel> items = const [], this.amount}): _items = items;
  factory _OrderDetailModel.fromJson(Map<String, dynamic> json) => _$OrderDetailModelFromJson(json);

@override@JsonKey() final  int id;
@override final  String? orderNo;
/// `yyyy-MM-dd`
@override final  String? orderDate;
@override final  String? storeName;
@override@JsonKey() final  num totalQty;
 final  List<OrderItemModel> _items;
@override@JsonKey() List<OrderItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  OrderAmountModel? amount;

/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderDetailModelCopyWith<_OrderDetailModel> get copyWith => __$OrderDetailModelCopyWithImpl<_OrderDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.orderNo, orderNo) || other.orderNo == orderNo)&&(identical(other.orderDate, orderDate) || other.orderDate == orderDate)&&(identical(other.storeName, storeName) || other.storeName == storeName)&&(identical(other.totalQty, totalQty) || other.totalQty == totalQty)&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.amount, amount) || other.amount == amount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,orderNo,orderDate,storeName,totalQty,const DeepCollectionEquality().hash(_items),amount);

@override
String toString() {
  return 'OrderDetailModel(id: $id, orderNo: $orderNo, orderDate: $orderDate, storeName: $storeName, totalQty: $totalQty, items: $items, amount: $amount)';
}


}

/// @nodoc
abstract mixin class _$OrderDetailModelCopyWith<$Res> implements $OrderDetailModelCopyWith<$Res> {
  factory _$OrderDetailModelCopyWith(_OrderDetailModel value, $Res Function(_OrderDetailModel) _then) = __$OrderDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String? orderNo, String? orderDate, String? storeName, num totalQty, List<OrderItemModel> items, OrderAmountModel? amount
});


@override $OrderAmountModelCopyWith<$Res>? get amount;

}
/// @nodoc
class __$OrderDetailModelCopyWithImpl<$Res>
    implements _$OrderDetailModelCopyWith<$Res> {
  __$OrderDetailModelCopyWithImpl(this._self, this._then);

  final _OrderDetailModel _self;
  final $Res Function(_OrderDetailModel) _then;

/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? orderNo = freezed,Object? orderDate = freezed,Object? storeName = freezed,Object? totalQty = null,Object? items = null,Object? amount = freezed,}) {
  return _then(_OrderDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,orderNo: freezed == orderNo ? _self.orderNo : orderNo // ignore: cast_nullable_to_non_nullable
as String?,orderDate: freezed == orderDate ? _self.orderDate : orderDate // ignore: cast_nullable_to_non_nullable
as String?,storeName: freezed == storeName ? _self.storeName : storeName // ignore: cast_nullable_to_non_nullable
as String?,totalQty: null == totalQty ? _self.totalQty : totalQty // ignore: cast_nullable_to_non_nullable
as num,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<OrderItemModel>,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as OrderAmountModel?,
  ));
}

/// Create a copy of OrderDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OrderAmountModelCopyWith<$Res>? get amount {
    if (_self.amount == null) {
    return null;
  }

  return $OrderAmountModelCopyWith<$Res>(_self.amount!, (value) {
    return _then(_self.copyWith(amount: value));
  });
}
}


/// @nodoc
mixin _$OrderItemModel {

 int get id; int? get itemId; String get name; String? get variantName; num get qty;/// Line total (qty x price).
 num get amount; String? get famount;
/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderItemModelCopyWith<OrderItemModel> get copyWith => _$OrderItemModelCopyWithImpl<OrderItemModel>(this as OrderItemModel, _$identity);

  /// Serializes this OrderItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.variantName, variantName) || other.variantName == variantName)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.famount, famount) || other.famount == famount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,name,variantName,qty,amount,famount);

@override
String toString() {
  return 'OrderItemModel(id: $id, itemId: $itemId, name: $name, variantName: $variantName, qty: $qty, amount: $amount, famount: $famount)';
}


}

/// @nodoc
abstract mixin class $OrderItemModelCopyWith<$Res>  {
  factory $OrderItemModelCopyWith(OrderItemModel value, $Res Function(OrderItemModel) _then) = _$OrderItemModelCopyWithImpl;
@useResult
$Res call({
 int id, int? itemId, String name, String? variantName, num qty, num amount, String? famount
});




}
/// @nodoc
class _$OrderItemModelCopyWithImpl<$Res>
    implements $OrderItemModelCopyWith<$Res> {
  _$OrderItemModelCopyWithImpl(this._self, this._then);

  final OrderItemModel _self;
  final $Res Function(OrderItemModel) _then;

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? itemId = freezed,Object? name = null,Object? variantName = freezed,Object? qty = null,Object? amount = null,Object? famount = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,variantName: freezed == variantName ? _self.variantName : variantName // ignore: cast_nullable_to_non_nullable
as String?,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as num,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,famount: freezed == famount ? _self.famount : famount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderItemModel].
extension OrderItemModelPatterns on OrderItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderItemModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int? itemId,  String name,  String? variantName,  num qty,  num amount,  String? famount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
return $default(_that.id,_that.itemId,_that.name,_that.variantName,_that.qty,_that.amount,_that.famount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int? itemId,  String name,  String? variantName,  num qty,  num amount,  String? famount)  $default,) {final _that = this;
switch (_that) {
case _OrderItemModel():
return $default(_that.id,_that.itemId,_that.name,_that.variantName,_that.qty,_that.amount,_that.famount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int? itemId,  String name,  String? variantName,  num qty,  num amount,  String? famount)?  $default,) {final _that = this;
switch (_that) {
case _OrderItemModel() when $default != null:
return $default(_that.id,_that.itemId,_that.name,_that.variantName,_that.qty,_that.amount,_that.famount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OrderItemModel implements OrderItemModel {
  const _OrderItemModel({this.id = 0, this.itemId, this.name = '', this.variantName, this.qty = 0, this.amount = 0, this.famount});
  factory _OrderItemModel.fromJson(Map<String, dynamic> json) => _$OrderItemModelFromJson(json);

@override@JsonKey() final  int id;
@override final  int? itemId;
@override@JsonKey() final  String name;
@override final  String? variantName;
@override@JsonKey() final  num qty;
/// Line total (qty x price).
@override@JsonKey() final  num amount;
@override final  String? famount;

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderItemModelCopyWith<_OrderItemModel> get copyWith => __$OrderItemModelCopyWithImpl<_OrderItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.itemId, itemId) || other.itemId == itemId)&&(identical(other.name, name) || other.name == name)&&(identical(other.variantName, variantName) || other.variantName == variantName)&&(identical(other.qty, qty) || other.qty == qty)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.famount, famount) || other.famount == famount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,itemId,name,variantName,qty,amount,famount);

@override
String toString() {
  return 'OrderItemModel(id: $id, itemId: $itemId, name: $name, variantName: $variantName, qty: $qty, amount: $amount, famount: $famount)';
}


}

/// @nodoc
abstract mixin class _$OrderItemModelCopyWith<$Res> implements $OrderItemModelCopyWith<$Res> {
  factory _$OrderItemModelCopyWith(_OrderItemModel value, $Res Function(_OrderItemModel) _then) = __$OrderItemModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int? itemId, String name, String? variantName, num qty, num amount, String? famount
});




}
/// @nodoc
class __$OrderItemModelCopyWithImpl<$Res>
    implements _$OrderItemModelCopyWith<$Res> {
  __$OrderItemModelCopyWithImpl(this._self, this._then);

  final _OrderItemModel _self;
  final $Res Function(_OrderItemModel) _then;

/// Create a copy of OrderItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? itemId = freezed,Object? name = null,Object? variantName = freezed,Object? qty = null,Object? amount = null,Object? famount = freezed,}) {
  return _then(_OrderItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,itemId: freezed == itemId ? _self.itemId : itemId // ignore: cast_nullable_to_non_nullable
as int?,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,variantName: freezed == variantName ? _self.variantName : variantName // ignore: cast_nullable_to_non_nullable
as String?,qty: null == qty ? _self.qty : qty // ignore: cast_nullable_to_non_nullable
as num,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as num,famount: freezed == famount ? _self.famount : famount // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$OrderAmountModel {

 num get orderAmount; num get discountAmount;/// Rupiah value of the points used on this order.
 num get redeemedAmount; num get serviceChargeAmount; num get taxAmount; num get shippingCost; num get roundedAmount; num get totalAmount;
/// Create a copy of OrderAmountModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OrderAmountModelCopyWith<OrderAmountModel> get copyWith => _$OrderAmountModelCopyWithImpl<OrderAmountModel>(this as OrderAmountModel, _$identity);

  /// Serializes this OrderAmountModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OrderAmountModel&&(identical(other.orderAmount, orderAmount) || other.orderAmount == orderAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.redeemedAmount, redeemedAmount) || other.redeemedAmount == redeemedAmount)&&(identical(other.serviceChargeAmount, serviceChargeAmount) || other.serviceChargeAmount == serviceChargeAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.roundedAmount, roundedAmount) || other.roundedAmount == roundedAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderAmount,discountAmount,redeemedAmount,serviceChargeAmount,taxAmount,shippingCost,roundedAmount,totalAmount);

@override
String toString() {
  return 'OrderAmountModel(orderAmount: $orderAmount, discountAmount: $discountAmount, redeemedAmount: $redeemedAmount, serviceChargeAmount: $serviceChargeAmount, taxAmount: $taxAmount, shippingCost: $shippingCost, roundedAmount: $roundedAmount, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class $OrderAmountModelCopyWith<$Res>  {
  factory $OrderAmountModelCopyWith(OrderAmountModel value, $Res Function(OrderAmountModel) _then) = _$OrderAmountModelCopyWithImpl;
@useResult
$Res call({
 num orderAmount, num discountAmount, num redeemedAmount, num serviceChargeAmount, num taxAmount, num shippingCost, num roundedAmount, num totalAmount
});




}
/// @nodoc
class _$OrderAmountModelCopyWithImpl<$Res>
    implements $OrderAmountModelCopyWith<$Res> {
  _$OrderAmountModelCopyWithImpl(this._self, this._then);

  final OrderAmountModel _self;
  final $Res Function(OrderAmountModel) _then;

/// Create a copy of OrderAmountModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? orderAmount = null,Object? discountAmount = null,Object? redeemedAmount = null,Object? serviceChargeAmount = null,Object? taxAmount = null,Object? shippingCost = null,Object? roundedAmount = null,Object? totalAmount = null,}) {
  return _then(_self.copyWith(
orderAmount: null == orderAmount ? _self.orderAmount : orderAmount // ignore: cast_nullable_to_non_nullable
as num,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as num,redeemedAmount: null == redeemedAmount ? _self.redeemedAmount : redeemedAmount // ignore: cast_nullable_to_non_nullable
as num,serviceChargeAmount: null == serviceChargeAmount ? _self.serviceChargeAmount : serviceChargeAmount // ignore: cast_nullable_to_non_nullable
as num,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as num,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as num,roundedAmount: null == roundedAmount ? _self.roundedAmount : roundedAmount // ignore: cast_nullable_to_non_nullable
as num,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}

}


/// Adds pattern-matching-related methods to [OrderAmountModel].
extension OrderAmountModelPatterns on OrderAmountModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OrderAmountModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OrderAmountModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OrderAmountModel value)  $default,){
final _that = this;
switch (_that) {
case _OrderAmountModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OrderAmountModel value)?  $default,){
final _that = this;
switch (_that) {
case _OrderAmountModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( num orderAmount,  num discountAmount,  num redeemedAmount,  num serviceChargeAmount,  num taxAmount,  num shippingCost,  num roundedAmount,  num totalAmount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OrderAmountModel() when $default != null:
return $default(_that.orderAmount,_that.discountAmount,_that.redeemedAmount,_that.serviceChargeAmount,_that.taxAmount,_that.shippingCost,_that.roundedAmount,_that.totalAmount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( num orderAmount,  num discountAmount,  num redeemedAmount,  num serviceChargeAmount,  num taxAmount,  num shippingCost,  num roundedAmount,  num totalAmount)  $default,) {final _that = this;
switch (_that) {
case _OrderAmountModel():
return $default(_that.orderAmount,_that.discountAmount,_that.redeemedAmount,_that.serviceChargeAmount,_that.taxAmount,_that.shippingCost,_that.roundedAmount,_that.totalAmount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( num orderAmount,  num discountAmount,  num redeemedAmount,  num serviceChargeAmount,  num taxAmount,  num shippingCost,  num roundedAmount,  num totalAmount)?  $default,) {final _that = this;
switch (_that) {
case _OrderAmountModel() when $default != null:
return $default(_that.orderAmount,_that.discountAmount,_that.redeemedAmount,_that.serviceChargeAmount,_that.taxAmount,_that.shippingCost,_that.roundedAmount,_that.totalAmount);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _OrderAmountModel implements OrderAmountModel {
  const _OrderAmountModel({this.orderAmount = 0, this.discountAmount = 0, this.redeemedAmount = 0, this.serviceChargeAmount = 0, this.taxAmount = 0, this.shippingCost = 0, this.roundedAmount = 0, this.totalAmount = 0});
  factory _OrderAmountModel.fromJson(Map<String, dynamic> json) => _$OrderAmountModelFromJson(json);

@override@JsonKey() final  num orderAmount;
@override@JsonKey() final  num discountAmount;
/// Rupiah value of the points used on this order.
@override@JsonKey() final  num redeemedAmount;
@override@JsonKey() final  num serviceChargeAmount;
@override@JsonKey() final  num taxAmount;
@override@JsonKey() final  num shippingCost;
@override@JsonKey() final  num roundedAmount;
@override@JsonKey() final  num totalAmount;

/// Create a copy of OrderAmountModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OrderAmountModelCopyWith<_OrderAmountModel> get copyWith => __$OrderAmountModelCopyWithImpl<_OrderAmountModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OrderAmountModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OrderAmountModel&&(identical(other.orderAmount, orderAmount) || other.orderAmount == orderAmount)&&(identical(other.discountAmount, discountAmount) || other.discountAmount == discountAmount)&&(identical(other.redeemedAmount, redeemedAmount) || other.redeemedAmount == redeemedAmount)&&(identical(other.serviceChargeAmount, serviceChargeAmount) || other.serviceChargeAmount == serviceChargeAmount)&&(identical(other.taxAmount, taxAmount) || other.taxAmount == taxAmount)&&(identical(other.shippingCost, shippingCost) || other.shippingCost == shippingCost)&&(identical(other.roundedAmount, roundedAmount) || other.roundedAmount == roundedAmount)&&(identical(other.totalAmount, totalAmount) || other.totalAmount == totalAmount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,orderAmount,discountAmount,redeemedAmount,serviceChargeAmount,taxAmount,shippingCost,roundedAmount,totalAmount);

@override
String toString() {
  return 'OrderAmountModel(orderAmount: $orderAmount, discountAmount: $discountAmount, redeemedAmount: $redeemedAmount, serviceChargeAmount: $serviceChargeAmount, taxAmount: $taxAmount, shippingCost: $shippingCost, roundedAmount: $roundedAmount, totalAmount: $totalAmount)';
}


}

/// @nodoc
abstract mixin class _$OrderAmountModelCopyWith<$Res> implements $OrderAmountModelCopyWith<$Res> {
  factory _$OrderAmountModelCopyWith(_OrderAmountModel value, $Res Function(_OrderAmountModel) _then) = __$OrderAmountModelCopyWithImpl;
@override @useResult
$Res call({
 num orderAmount, num discountAmount, num redeemedAmount, num serviceChargeAmount, num taxAmount, num shippingCost, num roundedAmount, num totalAmount
});




}
/// @nodoc
class __$OrderAmountModelCopyWithImpl<$Res>
    implements _$OrderAmountModelCopyWith<$Res> {
  __$OrderAmountModelCopyWithImpl(this._self, this._then);

  final _OrderAmountModel _self;
  final $Res Function(_OrderAmountModel) _then;

/// Create a copy of OrderAmountModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? orderAmount = null,Object? discountAmount = null,Object? redeemedAmount = null,Object? serviceChargeAmount = null,Object? taxAmount = null,Object? shippingCost = null,Object? roundedAmount = null,Object? totalAmount = null,}) {
  return _then(_OrderAmountModel(
orderAmount: null == orderAmount ? _self.orderAmount : orderAmount // ignore: cast_nullable_to_non_nullable
as num,discountAmount: null == discountAmount ? _self.discountAmount : discountAmount // ignore: cast_nullable_to_non_nullable
as num,redeemedAmount: null == redeemedAmount ? _self.redeemedAmount : redeemedAmount // ignore: cast_nullable_to_non_nullable
as num,serviceChargeAmount: null == serviceChargeAmount ? _self.serviceChargeAmount : serviceChargeAmount // ignore: cast_nullable_to_non_nullable
as num,taxAmount: null == taxAmount ? _self.taxAmount : taxAmount // ignore: cast_nullable_to_non_nullable
as num,shippingCost: null == shippingCost ? _self.shippingCost : shippingCost // ignore: cast_nullable_to_non_nullable
as num,roundedAmount: null == roundedAmount ? _self.roundedAmount : roundedAmount // ignore: cast_nullable_to_non_nullable
as num,totalAmount: null == totalAmount ? _self.totalAmount : totalAmount // ignore: cast_nullable_to_non_nullable
as num,
  ));
}


}

// dart format on
