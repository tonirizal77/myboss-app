// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreListModel {

 List<StoreList> get data; int get status; int get error;
/// Create a copy of StoreListModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreListModelCopyWith<StoreListModel> get copyWith => _$StoreListModelCopyWithImpl<StoreListModel>(this as StoreListModel, _$identity);

  /// Serializes this StoreListModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreListModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),status,error);

@override
String toString() {
  return 'StoreListModel(data: $data, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $StoreListModelCopyWith<$Res>  {
  factory $StoreListModelCopyWith(StoreListModel value, $Res Function(StoreListModel) _then) = _$StoreListModelCopyWithImpl;
@useResult
$Res call({
 List<StoreList> data, int status, int error
});




}
/// @nodoc
class _$StoreListModelCopyWithImpl<$Res>
    implements $StoreListModelCopyWith<$Res> {
  _$StoreListModelCopyWithImpl(this._self, this._then);

  final StoreListModel _self;
  final $Res Function(StoreListModel) _then;

/// Create a copy of StoreListModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<StoreList>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreListModel].
extension StoreListModelPatterns on StoreListModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreListModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreListModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreListModel value)  $default,){
final _that = this;
switch (_that) {
case _StoreListModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreListModel value)?  $default,){
final _that = this;
switch (_that) {
case _StoreListModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StoreList> data,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreListModel() when $default != null:
return $default(_that.data,_that.status,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StoreList> data,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _StoreListModel():
return $default(_that.data,_that.status,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StoreList> data,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _StoreListModel() when $default != null:
return $default(_that.data,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StoreListModel implements StoreListModel {
  const _StoreListModel({final  List<StoreList> data = const [], this.status = 0, this.error = 0}): _data = data;
  factory _StoreListModel.fromJson(Map<String, dynamic> json) => _$StoreListModelFromJson(json);

 final  List<StoreList> _data;
@override@JsonKey() List<StoreList> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of StoreListModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreListModelCopyWith<_StoreListModel> get copyWith => __$StoreListModelCopyWithImpl<_StoreListModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreListModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreListModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),status,error);

@override
String toString() {
  return 'StoreListModel(data: $data, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StoreListModelCopyWith<$Res> implements $StoreListModelCopyWith<$Res> {
  factory _$StoreListModelCopyWith(_StoreListModel value, $Res Function(_StoreListModel) _then) = __$StoreListModelCopyWithImpl;
@override @useResult
$Res call({
 List<StoreList> data, int status, int error
});




}
/// @nodoc
class __$StoreListModelCopyWithImpl<$Res>
    implements _$StoreListModelCopyWith<$Res> {
  __$StoreListModelCopyWithImpl(this._self, this._then);

  final _StoreListModel _self;
  final $Res Function(_StoreListModel) _then;

/// Create a copy of StoreListModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? status = null,Object? error = null,}) {
  return _then(_StoreListModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<StoreList>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$StoreList {

 String? get address; String? get city; String? get fStatus; String? get googleMapLink; int? get id; String? get image; String? get locationLat; String? get locationLon; String? get name; String? get phone; String? get status;
/// Create a copy of StoreList
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreListCopyWith<StoreList> get copyWith => _$StoreListCopyWithImpl<StoreList>(this as StoreList, _$identity);

  /// Serializes this StoreList to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreList&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.fStatus, fStatus) || other.fStatus == fStatus)&&(identical(other.googleMapLink, googleMapLink) || other.googleMapLink == googleMapLink)&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.locationLat, locationLat) || other.locationLat == locationLat)&&(identical(other.locationLon, locationLon) || other.locationLon == locationLon)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,city,fStatus,googleMapLink,id,image,locationLat,locationLon,name,phone,status);

@override
String toString() {
  return 'StoreList(address: $address, city: $city, fStatus: $fStatus, googleMapLink: $googleMapLink, id: $id, image: $image, locationLat: $locationLat, locationLon: $locationLon, name: $name, phone: $phone, status: $status)';
}


}

/// @nodoc
abstract mixin class $StoreListCopyWith<$Res>  {
  factory $StoreListCopyWith(StoreList value, $Res Function(StoreList) _then) = _$StoreListCopyWithImpl;
@useResult
$Res call({
 String? address, String? city, String? fStatus, String? googleMapLink, int? id, String? image, String? locationLat, String? locationLon, String? name, String? phone, String? status
});




}
/// @nodoc
class _$StoreListCopyWithImpl<$Res>
    implements $StoreListCopyWith<$Res> {
  _$StoreListCopyWithImpl(this._self, this._then);

  final StoreList _self;
  final $Res Function(StoreList) _then;

/// Create a copy of StoreList
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? address = freezed,Object? city = freezed,Object? fStatus = freezed,Object? googleMapLink = freezed,Object? id = freezed,Object? image = freezed,Object? locationLat = freezed,Object? locationLon = freezed,Object? name = freezed,Object? phone = freezed,Object? status = freezed,}) {
  return _then(_self.copyWith(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,fStatus: freezed == fStatus ? _self.fStatus : fStatus // ignore: cast_nullable_to_non_nullable
as String?,googleMapLink: freezed == googleMapLink ? _self.googleMapLink : googleMapLink // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,locationLat: freezed == locationLat ? _self.locationLat : locationLat // ignore: cast_nullable_to_non_nullable
as String?,locationLon: freezed == locationLon ? _self.locationLon : locationLon // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreList].
extension StoreListPatterns on StoreList {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreList value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreList() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreList value)  $default,){
final _that = this;
switch (_that) {
case _StoreList():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreList value)?  $default,){
final _that = this;
switch (_that) {
case _StoreList() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? address,  String? city,  String? fStatus,  String? googleMapLink,  int? id,  String? image,  String? locationLat,  String? locationLon,  String? name,  String? phone,  String? status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreList() when $default != null:
return $default(_that.address,_that.city,_that.fStatus,_that.googleMapLink,_that.id,_that.image,_that.locationLat,_that.locationLon,_that.name,_that.phone,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? address,  String? city,  String? fStatus,  String? googleMapLink,  int? id,  String? image,  String? locationLat,  String? locationLon,  String? name,  String? phone,  String? status)  $default,) {final _that = this;
switch (_that) {
case _StoreList():
return $default(_that.address,_that.city,_that.fStatus,_that.googleMapLink,_that.id,_that.image,_that.locationLat,_that.locationLon,_that.name,_that.phone,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? address,  String? city,  String? fStatus,  String? googleMapLink,  int? id,  String? image,  String? locationLat,  String? locationLon,  String? name,  String? phone,  String? status)?  $default,) {final _that = this;
switch (_that) {
case _StoreList() when $default != null:
return $default(_that.address,_that.city,_that.fStatus,_that.googleMapLink,_that.id,_that.image,_that.locationLat,_that.locationLon,_that.name,_that.phone,_that.status);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StoreList implements StoreList {
  const _StoreList({this.address, this.city, this.fStatus, this.googleMapLink, this.id, this.image, this.locationLat, this.locationLon, this.name, this.phone, this.status});
  factory _StoreList.fromJson(Map<String, dynamic> json) => _$StoreListFromJson(json);

@override final  String? address;
@override final  String? city;
@override final  String? fStatus;
@override final  String? googleMapLink;
@override final  int? id;
@override final  String? image;
@override final  String? locationLat;
@override final  String? locationLon;
@override final  String? name;
@override final  String? phone;
@override final  String? status;

/// Create a copy of StoreList
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreListCopyWith<_StoreList> get copyWith => __$StoreListCopyWithImpl<_StoreList>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreListToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreList&&(identical(other.address, address) || other.address == address)&&(identical(other.city, city) || other.city == city)&&(identical(other.fStatus, fStatus) || other.fStatus == fStatus)&&(identical(other.googleMapLink, googleMapLink) || other.googleMapLink == googleMapLink)&&(identical(other.id, id) || other.id == id)&&(identical(other.image, image) || other.image == image)&&(identical(other.locationLat, locationLat) || other.locationLat == locationLat)&&(identical(other.locationLon, locationLon) || other.locationLon == locationLon)&&(identical(other.name, name) || other.name == name)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,address,city,fStatus,googleMapLink,id,image,locationLat,locationLon,name,phone,status);

@override
String toString() {
  return 'StoreList(address: $address, city: $city, fStatus: $fStatus, googleMapLink: $googleMapLink, id: $id, image: $image, locationLat: $locationLat, locationLon: $locationLon, name: $name, phone: $phone, status: $status)';
}


}

/// @nodoc
abstract mixin class _$StoreListCopyWith<$Res> implements $StoreListCopyWith<$Res> {
  factory _$StoreListCopyWith(_StoreList value, $Res Function(_StoreList) _then) = __$StoreListCopyWithImpl;
@override @useResult
$Res call({
 String? address, String? city, String? fStatus, String? googleMapLink, int? id, String? image, String? locationLat, String? locationLon, String? name, String? phone, String? status
});




}
/// @nodoc
class __$StoreListCopyWithImpl<$Res>
    implements _$StoreListCopyWith<$Res> {
  __$StoreListCopyWithImpl(this._self, this._then);

  final _StoreList _self;
  final $Res Function(_StoreList) _then;

/// Create a copy of StoreList
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? address = freezed,Object? city = freezed,Object? fStatus = freezed,Object? googleMapLink = freezed,Object? id = freezed,Object? image = freezed,Object? locationLat = freezed,Object? locationLon = freezed,Object? name = freezed,Object? phone = freezed,Object? status = freezed,}) {
  return _then(_StoreList(
address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,city: freezed == city ? _self.city : city // ignore: cast_nullable_to_non_nullable
as String?,fStatus: freezed == fStatus ? _self.fStatus : fStatus // ignore: cast_nullable_to_non_nullable
as String?,googleMapLink: freezed == googleMapLink ? _self.googleMapLink : googleMapLink // ignore: cast_nullable_to_non_nullable
as String?,id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,image: freezed == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String?,locationLat: freezed == locationLat ? _self.locationLat : locationLat // ignore: cast_nullable_to_non_nullable
as String?,locationLon: freezed == locationLon ? _self.locationLon : locationLon // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
