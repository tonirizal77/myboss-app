// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
CustomerModel _$CustomerModelFromJson(
  Map<String, dynamic> json
) {
    return _Customer.fromJson(
      json
    );
}

/// @nodoc
mixin _$CustomerModel {

 int? get acceptNewsletter; String? get address; dynamic get cart; String? get code; String? get company; String? get creditLimit; CustomerType? get customerType; int? get customerTypeId; String? get dob; String? get email; String? get expiryDate; int? get id; int? get isEmailVerified; int? get isFrozen; int? get isVerified; LocationCustomer? get location; String? get name; String? get notes; String? get phone; String? get status; int? get storeId; int? get subDistricId;
/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerModelCopyWith<CustomerModel> get copyWith => _$CustomerModelCopyWithImpl<CustomerModel>(this as CustomerModel, _$identity);

  /// Serializes this CustomerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerModel&&(identical(other.acceptNewsletter, acceptNewsletter) || other.acceptNewsletter == acceptNewsletter)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.cart, cart)&&(identical(other.code, code) || other.code == code)&&(identical(other.company, company) || other.company == company)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.customerType, customerType) || other.customerType == customerType)&&(identical(other.customerTypeId, customerTypeId) || other.customerTypeId == customerTypeId)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.email, email) || other.email == email)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.id, id) || other.id == id)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isFrozen, isFrozen) || other.isFrozen == isFrozen)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.location, location) || other.location == location)&&(identical(other.name, name) || other.name == name)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.subDistricId, subDistricId) || other.subDistricId == subDistricId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,acceptNewsletter,address,const DeepCollectionEquality().hash(cart),code,company,creditLimit,customerType,customerTypeId,dob,email,expiryDate,id,isEmailVerified,isFrozen,isVerified,location,name,notes,phone,status,storeId,subDistricId]);

@override
String toString() {
  return 'CustomerModel(acceptNewsletter: $acceptNewsletter, address: $address, cart: $cart, code: $code, company: $company, creditLimit: $creditLimit, customerType: $customerType, customerTypeId: $customerTypeId, dob: $dob, email: $email, expiryDate: $expiryDate, id: $id, isEmailVerified: $isEmailVerified, isFrozen: $isFrozen, isVerified: $isVerified, location: $location, name: $name, notes: $notes, phone: $phone, status: $status, storeId: $storeId, subDistricId: $subDistricId)';
}


}

/// @nodoc
abstract mixin class $CustomerModelCopyWith<$Res>  {
  factory $CustomerModelCopyWith(CustomerModel value, $Res Function(CustomerModel) _then) = _$CustomerModelCopyWithImpl;
@useResult
$Res call({
 int? acceptNewsletter, String? address, dynamic cart, String? code, String? company, String? creditLimit, CustomerType? customerType, int? customerTypeId, String? dob, String? email, String? expiryDate, int? id, int? isEmailVerified, int? isFrozen, int? isVerified, LocationCustomer? location, String? name, String? notes, String? phone, String? status, int? storeId, int? subDistricId
});


$CustomerTypeCopyWith<$Res>? get customerType;$LocationCustomerCopyWith<$Res>? get location;

}
/// @nodoc
class _$CustomerModelCopyWithImpl<$Res>
    implements $CustomerModelCopyWith<$Res> {
  _$CustomerModelCopyWithImpl(this._self, this._then);

  final CustomerModel _self;
  final $Res Function(CustomerModel) _then;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? acceptNewsletter = freezed,Object? address = freezed,Object? cart = freezed,Object? code = freezed,Object? company = freezed,Object? creditLimit = freezed,Object? customerType = freezed,Object? customerTypeId = freezed,Object? dob = freezed,Object? email = freezed,Object? expiryDate = freezed,Object? id = freezed,Object? isEmailVerified = freezed,Object? isFrozen = freezed,Object? isVerified = freezed,Object? location = freezed,Object? name = freezed,Object? notes = freezed,Object? phone = freezed,Object? status = freezed,Object? storeId = freezed,Object? subDistricId = freezed,}) {
  return _then(_self.copyWith(
acceptNewsletter: freezed == acceptNewsletter ? _self.acceptNewsletter : acceptNewsletter // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,cart: freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as dynamic,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as String?,customerType: freezed == customerType ? _self.customerType : customerType // ignore: cast_nullable_to_non_nullable
as CustomerType?,customerTypeId: freezed == customerTypeId ? _self.customerTypeId : customerTypeId // ignore: cast_nullable_to_non_nullable
as int?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as int?,isFrozen: freezed == isFrozen ? _self.isFrozen : isFrozen // ignore: cast_nullable_to_non_nullable
as int?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as int?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationCustomer?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,subDistricId: freezed == subDistricId ? _self.subDistricId : subDistricId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerTypeCopyWith<$Res>? get customerType {
    if (_self.customerType == null) {
    return null;
  }

  return $CustomerTypeCopyWith<$Res>(_self.customerType!, (value) {
    return _then(_self.copyWith(customerType: value));
  });
}/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCustomerCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCustomerCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [CustomerModel].
extension CustomerModelPatterns on CustomerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Customer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Customer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Customer value)  $default,){
final _that = this;
switch (_that) {
case _Customer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Customer value)?  $default,){
final _that = this;
switch (_that) {
case _Customer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? acceptNewsletter,  String? address,  dynamic cart,  String? code,  String? company,  String? creditLimit,  CustomerType? customerType,  int? customerTypeId,  String? dob,  String? email,  String? expiryDate,  int? id,  int? isEmailVerified,  int? isFrozen,  int? isVerified,  LocationCustomer? location,  String? name,  String? notes,  String? phone,  String? status,  int? storeId,  int? subDistricId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Customer() when $default != null:
return $default(_that.acceptNewsletter,_that.address,_that.cart,_that.code,_that.company,_that.creditLimit,_that.customerType,_that.customerTypeId,_that.dob,_that.email,_that.expiryDate,_that.id,_that.isEmailVerified,_that.isFrozen,_that.isVerified,_that.location,_that.name,_that.notes,_that.phone,_that.status,_that.storeId,_that.subDistricId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? acceptNewsletter,  String? address,  dynamic cart,  String? code,  String? company,  String? creditLimit,  CustomerType? customerType,  int? customerTypeId,  String? dob,  String? email,  String? expiryDate,  int? id,  int? isEmailVerified,  int? isFrozen,  int? isVerified,  LocationCustomer? location,  String? name,  String? notes,  String? phone,  String? status,  int? storeId,  int? subDistricId)  $default,) {final _that = this;
switch (_that) {
case _Customer():
return $default(_that.acceptNewsletter,_that.address,_that.cart,_that.code,_that.company,_that.creditLimit,_that.customerType,_that.customerTypeId,_that.dob,_that.email,_that.expiryDate,_that.id,_that.isEmailVerified,_that.isFrozen,_that.isVerified,_that.location,_that.name,_that.notes,_that.phone,_that.status,_that.storeId,_that.subDistricId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? acceptNewsletter,  String? address,  dynamic cart,  String? code,  String? company,  String? creditLimit,  CustomerType? customerType,  int? customerTypeId,  String? dob,  String? email,  String? expiryDate,  int? id,  int? isEmailVerified,  int? isFrozen,  int? isVerified,  LocationCustomer? location,  String? name,  String? notes,  String? phone,  String? status,  int? storeId,  int? subDistricId)?  $default,) {final _that = this;
switch (_that) {
case _Customer() when $default != null:
return $default(_that.acceptNewsletter,_that.address,_that.cart,_that.code,_that.company,_that.creditLimit,_that.customerType,_that.customerTypeId,_that.dob,_that.email,_that.expiryDate,_that.id,_that.isEmailVerified,_that.isFrozen,_that.isVerified,_that.location,_that.name,_that.notes,_that.phone,_that.status,_that.storeId,_that.subDistricId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Customer implements CustomerModel {
  const _Customer({this.acceptNewsletter = 0, this.address, this.cart, this.code, this.company, this.creditLimit, this.customerType, this.customerTypeId = 0, this.dob, this.email, this.expiryDate, this.id, this.isEmailVerified = 0, this.isFrozen = 0, this.isVerified = 0, this.location, this.name, this.notes, this.phone, this.status, this.storeId, this.subDistricId = 0});
  factory _Customer.fromJson(Map<String, dynamic> json) => _$CustomerFromJson(json);

@override@JsonKey() final  int? acceptNewsletter;
@override final  String? address;
@override final  dynamic cart;
@override final  String? code;
@override final  String? company;
@override final  String? creditLimit;
@override final  CustomerType? customerType;
@override@JsonKey() final  int? customerTypeId;
@override final  String? dob;
@override final  String? email;
@override final  String? expiryDate;
@override final  int? id;
@override@JsonKey() final  int? isEmailVerified;
@override@JsonKey() final  int? isFrozen;
@override@JsonKey() final  int? isVerified;
@override final  LocationCustomer? location;
@override final  String? name;
@override final  String? notes;
@override final  String? phone;
@override final  String? status;
@override final  int? storeId;
@override@JsonKey() final  int? subDistricId;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerCopyWith<_Customer> get copyWith => __$CustomerCopyWithImpl<_Customer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Customer&&(identical(other.acceptNewsletter, acceptNewsletter) || other.acceptNewsletter == acceptNewsletter)&&(identical(other.address, address) || other.address == address)&&const DeepCollectionEquality().equals(other.cart, cart)&&(identical(other.code, code) || other.code == code)&&(identical(other.company, company) || other.company == company)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.customerType, customerType) || other.customerType == customerType)&&(identical(other.customerTypeId, customerTypeId) || other.customerTypeId == customerTypeId)&&(identical(other.dob, dob) || other.dob == dob)&&(identical(other.email, email) || other.email == email)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate)&&(identical(other.id, id) || other.id == id)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isFrozen, isFrozen) || other.isFrozen == isFrozen)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.location, location) || other.location == location)&&(identical(other.name, name) || other.name == name)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.subDistricId, subDistricId) || other.subDistricId == subDistricId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,acceptNewsletter,address,const DeepCollectionEquality().hash(cart),code,company,creditLimit,customerType,customerTypeId,dob,email,expiryDate,id,isEmailVerified,isFrozen,isVerified,location,name,notes,phone,status,storeId,subDistricId]);

@override
String toString() {
  return 'CustomerModel(acceptNewsletter: $acceptNewsletter, address: $address, cart: $cart, code: $code, company: $company, creditLimit: $creditLimit, customerType: $customerType, customerTypeId: $customerTypeId, dob: $dob, email: $email, expiryDate: $expiryDate, id: $id, isEmailVerified: $isEmailVerified, isFrozen: $isFrozen, isVerified: $isVerified, location: $location, name: $name, notes: $notes, phone: $phone, status: $status, storeId: $storeId, subDistricId: $subDistricId)';
}


}

/// @nodoc
abstract mixin class _$CustomerCopyWith<$Res> implements $CustomerModelCopyWith<$Res> {
  factory _$CustomerCopyWith(_Customer value, $Res Function(_Customer) _then) = __$CustomerCopyWithImpl;
@override @useResult
$Res call({
 int? acceptNewsletter, String? address, dynamic cart, String? code, String? company, String? creditLimit, CustomerType? customerType, int? customerTypeId, String? dob, String? email, String? expiryDate, int? id, int? isEmailVerified, int? isFrozen, int? isVerified, LocationCustomer? location, String? name, String? notes, String? phone, String? status, int? storeId, int? subDistricId
});


@override $CustomerTypeCopyWith<$Res>? get customerType;@override $LocationCustomerCopyWith<$Res>? get location;

}
/// @nodoc
class __$CustomerCopyWithImpl<$Res>
    implements _$CustomerCopyWith<$Res> {
  __$CustomerCopyWithImpl(this._self, this._then);

  final _Customer _self;
  final $Res Function(_Customer) _then;

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? acceptNewsletter = freezed,Object? address = freezed,Object? cart = freezed,Object? code = freezed,Object? company = freezed,Object? creditLimit = freezed,Object? customerType = freezed,Object? customerTypeId = freezed,Object? dob = freezed,Object? email = freezed,Object? expiryDate = freezed,Object? id = freezed,Object? isEmailVerified = freezed,Object? isFrozen = freezed,Object? isVerified = freezed,Object? location = freezed,Object? name = freezed,Object? notes = freezed,Object? phone = freezed,Object? status = freezed,Object? storeId = freezed,Object? subDistricId = freezed,}) {
  return _then(_Customer(
acceptNewsletter: freezed == acceptNewsletter ? _self.acceptNewsletter : acceptNewsletter // ignore: cast_nullable_to_non_nullable
as int?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,cart: freezed == cart ? _self.cart : cart // ignore: cast_nullable_to_non_nullable
as dynamic,code: freezed == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String?,company: freezed == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String?,creditLimit: freezed == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as String?,customerType: freezed == customerType ? _self.customerType : customerType // ignore: cast_nullable_to_non_nullable
as CustomerType?,customerTypeId: freezed == customerTypeId ? _self.customerTypeId : customerTypeId // ignore: cast_nullable_to_non_nullable
as int?,dob: freezed == dob ? _self.dob : dob // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,isEmailVerified: freezed == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as int?,isFrozen: freezed == isFrozen ? _self.isFrozen : isFrozen // ignore: cast_nullable_to_non_nullable
as int?,isVerified: freezed == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as int?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as LocationCustomer?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,notes: freezed == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,storeId: freezed == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int?,subDistricId: freezed == subDistricId ? _self.subDistricId : subDistricId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerTypeCopyWith<$Res>? get customerType {
    if (_self.customerType == null) {
    return null;
  }

  return $CustomerTypeCopyWith<$Res>(_self.customerType!, (value) {
    return _then(_self.copyWith(customerType: value));
  });
}/// Create a copy of CustomerModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LocationCustomerCopyWith<$Res>? get location {
    if (_self.location == null) {
    return null;
  }

  return $LocationCustomerCopyWith<$Res>(_self.location!, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// @nodoc
mixin _$CustomerType {

 int? get id; String? get name;
/// Create a copy of CustomerType
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerTypeCopyWith<CustomerType> get copyWith => _$CustomerTypeCopyWithImpl<CustomerType>(this as CustomerType, _$identity);

  /// Serializes this CustomerType to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CustomerType(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CustomerTypeCopyWith<$Res>  {
  factory $CustomerTypeCopyWith(CustomerType value, $Res Function(CustomerType) _then) = _$CustomerTypeCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$CustomerTypeCopyWithImpl<$Res>
    implements $CustomerTypeCopyWith<$Res> {
  _$CustomerTypeCopyWithImpl(this._self, this._then);

  final CustomerType _self;
  final $Res Function(CustomerType) _then;

/// Create a copy of CustomerType
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerType].
extension CustomerTypePatterns on CustomerType {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerType value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerType() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerType value)  $default,){
final _that = this;
switch (_that) {
case _CustomerType():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerType value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerType() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CustomerType() when $default != null:
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? name)  $default,) {final _that = this;
switch (_that) {
case _CustomerType():
return $default(_that.id,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? name)?  $default,) {final _that = this;
switch (_that) {
case _CustomerType() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CustomerType implements CustomerType {
  const _CustomerType({this.id = 0, this.name = 'guest'});
  factory _CustomerType.fromJson(Map<String, dynamic> json) => _$CustomerTypeFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? name;

/// Create a copy of CustomerType
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerTypeCopyWith<_CustomerType> get copyWith => __$CustomerTypeCopyWithImpl<_CustomerType>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerTypeToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerType&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CustomerType(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CustomerTypeCopyWith<$Res> implements $CustomerTypeCopyWith<$Res> {
  factory _$CustomerTypeCopyWith(_CustomerType value, $Res Function(_CustomerType) _then) = __$CustomerTypeCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$CustomerTypeCopyWithImpl<$Res>
    implements _$CustomerTypeCopyWith<$Res> {
  __$CustomerTypeCopyWithImpl(this._self, this._then);

  final _CustomerType _self;
  final $Res Function(_CustomerType) _then;

/// Create a copy of CustomerType
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_CustomerType(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LocationCustomer {

 String? get city; String? get cityDistrict; int? get cityId; String? get country; String? get state; int? get stateId;
/// Create a copy of LocationCustomer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationCustomerCopyWith<LocationCustomer> get copyWith => _$LocationCustomerCopyWithImpl<LocationCustomer>(this as LocationCustomer, _$identity);

  /// Serializes this LocationCustomer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationCustomer&&(identical(other.city, city) || other.city == city)&&(identical(other.cityDistrict, cityDistrict) || other.cityDistrict == cityDistrict)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.country, country) || other.country == country)&&(identical(other.state, state) || other.state == state)&&(identical(other.stateId, stateId) || other.stateId == stateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,cityDistrict,cityId,country,state,stateId);

@override
String toString() {
  return 'LocationCustomer(city: $city, cityDistrict: $cityDistrict, cityId: $cityId, country: $country, state: $state, stateId: $stateId)';
}


}

/// @nodoc
abstract mixin class $LocationCustomerCopyWith<$Res>  {
  factory $LocationCustomerCopyWith(LocationCustomer value, $Res Function(LocationCustomer) _then) = _$LocationCustomerCopyWithImpl;
@useResult
$Res call({
 String? city, String? cityDistrict, int? cityId, String? country, String? state, int? stateId
});




}
/// @nodoc
class _$LocationCustomerCopyWithImpl<$Res>
    implements $LocationCustomerCopyWith<$Res> {
  _$LocationCustomerCopyWithImpl(this._self, this._then);

  final LocationCustomer _self;
  final $Res Function(LocationCustomer) _then;

/// Create a copy of LocationCustomer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? city = freezed,Object? cityDistrict = freezed,Object? cityId = freezed,Object? country = freezed,Object? state = freezed,Object? stateId = freezed,}) {
  return _then(_self.copyWith(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,cityDistrict: freezed == cityDistrict ? _self.cityDistrict : cityDistrict // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,stateId: freezed == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationCustomer].
extension LocationCustomerPatterns on LocationCustomer {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationCustomer value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationCustomer() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationCustomer value)  $default,){
final _that = this;
switch (_that) {
case _LocationCustomer():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationCustomer value)?  $default,){
final _that = this;
switch (_that) {
case _LocationCustomer() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? city,  String? cityDistrict,  int? cityId,  String? country,  String? state,  int? stateId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationCustomer() when $default != null:
return $default(_that.city,_that.cityDistrict,_that.cityId,_that.country,_that.state,_that.stateId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? city,  String? cityDistrict,  int? cityId,  String? country,  String? state,  int? stateId)  $default,) {final _that = this;
switch (_that) {
case _LocationCustomer():
return $default(_that.city,_that.cityDistrict,_that.cityId,_that.country,_that.state,_that.stateId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? city,  String? cityDistrict,  int? cityId,  String? country,  String? state,  int? stateId)?  $default,) {final _that = this;
switch (_that) {
case _LocationCustomer() when $default != null:
return $default(_that.city,_that.cityDistrict,_that.cityId,_that.country,_that.state,_that.stateId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LocationCustomer implements LocationCustomer {
  const _LocationCustomer({this.city, this.cityDistrict, this.cityId, this.country, this.state, this.stateId});
  factory _LocationCustomer.fromJson(Map<String, dynamic> json) => _$LocationCustomerFromJson(json);

@override final  String? city;
@override final  String? cityDistrict;
@override final  int? cityId;
@override final  String? country;
@override final  String? state;
@override final  int? stateId;

/// Create a copy of LocationCustomer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationCustomerCopyWith<_LocationCustomer> get copyWith => __$LocationCustomerCopyWithImpl<_LocationCustomer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationCustomerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationCustomer&&(identical(other.city, city) || other.city == city)&&(identical(other.cityDistrict, cityDistrict) || other.cityDistrict == cityDistrict)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.country, country) || other.country == country)&&(identical(other.state, state) || other.state == state)&&(identical(other.stateId, stateId) || other.stateId == stateId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,city,cityDistrict,cityId,country,state,stateId);

@override
String toString() {
  return 'LocationCustomer(city: $city, cityDistrict: $cityDistrict, cityId: $cityId, country: $country, state: $state, stateId: $stateId)';
}


}

/// @nodoc
abstract mixin class _$LocationCustomerCopyWith<$Res> implements $LocationCustomerCopyWith<$Res> {
  factory _$LocationCustomerCopyWith(_LocationCustomer value, $Res Function(_LocationCustomer) _then) = __$LocationCustomerCopyWithImpl;
@override @useResult
$Res call({
 String? city, String? cityDistrict, int? cityId, String? country, String? state, int? stateId
});




}
/// @nodoc
class __$LocationCustomerCopyWithImpl<$Res>
    implements _$LocationCustomerCopyWith<$Res> {
  __$LocationCustomerCopyWithImpl(this._self, this._then);

  final _LocationCustomer _self;
  final $Res Function(_LocationCustomer) _then;

/// Create a copy of LocationCustomer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? city = freezed,Object? cityDistrict = freezed,Object? cityId = freezed,Object? country = freezed,Object? state = freezed,Object? stateId = freezed,}) {
  return _then(_LocationCustomer(
city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,cityDistrict: freezed == cityDistrict ? _self.cityDistrict : cityDistrict // ignore: cast_nullable_to_non_nullable
as String?,cityId: freezed == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,stateId: freezed == stateId ? _self.stateId : stateId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
