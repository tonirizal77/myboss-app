// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'store_branches_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$StoreBranchesModel {

 List<StoreBranch> get data; StoreBranchesMeta get meta; int get status; int get error;
/// Create a copy of StoreBranchesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBranchesModelCopyWith<StoreBranchesModel> get copyWith => _$StoreBranchesModelCopyWithImpl<StoreBranchesModel>(this as StoreBranchesModel, _$identity);

  /// Serializes this StoreBranchesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBranchesModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'StoreBranchesModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $StoreBranchesModelCopyWith<$Res>  {
  factory $StoreBranchesModelCopyWith(StoreBranchesModel value, $Res Function(StoreBranchesModel) _then) = _$StoreBranchesModelCopyWithImpl;
@useResult
$Res call({
 List<StoreBranch> data, StoreBranchesMeta meta, int status, int error
});


$StoreBranchesMetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$StoreBranchesModelCopyWithImpl<$Res>
    implements $StoreBranchesModelCopyWith<$Res> {
  _$StoreBranchesModelCopyWithImpl(this._self, this._then);

  final StoreBranchesModel _self;
  final $Res Function(StoreBranchesModel) _then;

/// Create a copy of StoreBranchesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<StoreBranch>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as StoreBranchesMeta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of StoreBranchesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBranchesMetaCopyWith<$Res> get meta {
  
  return $StoreBranchesMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreBranchesModel].
extension StoreBranchesModelPatterns on StoreBranchesModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreBranchesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreBranchesModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreBranchesModel value)  $default,){
final _that = this;
switch (_that) {
case _StoreBranchesModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreBranchesModel value)?  $default,){
final _that = this;
switch (_that) {
case _StoreBranchesModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<StoreBranch> data,  StoreBranchesMeta meta,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreBranchesModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<StoreBranch> data,  StoreBranchesMeta meta,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _StoreBranchesModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<StoreBranch> data,  StoreBranchesMeta meta,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _StoreBranchesModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _StoreBranchesModel implements StoreBranchesModel {
  const _StoreBranchesModel({final  List<StoreBranch> data = const [], this.meta = const StoreBranchesMeta(), this.status = 0, this.error = 0}): _data = data;
  factory _StoreBranchesModel.fromJson(Map<String, dynamic> json) => _$StoreBranchesModelFromJson(json);

 final  List<StoreBranch> _data;
@override@JsonKey() List<StoreBranch> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  StoreBranchesMeta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of StoreBranchesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreBranchesModelCopyWith<_StoreBranchesModel> get copyWith => __$StoreBranchesModelCopyWithImpl<_StoreBranchesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreBranchesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreBranchesModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'StoreBranchesModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$StoreBranchesModelCopyWith<$Res> implements $StoreBranchesModelCopyWith<$Res> {
  factory _$StoreBranchesModelCopyWith(_StoreBranchesModel value, $Res Function(_StoreBranchesModel) _then) = __$StoreBranchesModelCopyWithImpl;
@override @useResult
$Res call({
 List<StoreBranch> data, StoreBranchesMeta meta, int status, int error
});


@override $StoreBranchesMetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$StoreBranchesModelCopyWithImpl<$Res>
    implements _$StoreBranchesModelCopyWith<$Res> {
  __$StoreBranchesModelCopyWithImpl(this._self, this._then);

  final _StoreBranchesModel _self;
  final $Res Function(_StoreBranchesModel) _then;

/// Create a copy of StoreBranchesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_StoreBranchesModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<StoreBranch>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as StoreBranchesMeta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of StoreBranchesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StoreBranchesMetaCopyWith<$Res> get meta {
  
  return $StoreBranchesMetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$StoreBranch {

 int? get id; String? get urlId; String? get name; String? get address; String? get logo; int? get isStoreParent; AppStatus? get appStatus; String? get locationLat; String? get locationLon; String? get cityName;/// Distance in km from the `lat`/`lon` sent with the request.
 double? get distance; bool get isOpen;/// Opening hours for today, "-" when closed all day.
 String? get todayHours;
/// Create a copy of StoreBranch
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBranchCopyWith<StoreBranch> get copyWith => _$StoreBranchCopyWithImpl<StoreBranch>(this as StoreBranch, _$identity);

  /// Serializes this StoreBranch to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBranch&&(identical(other.id, id) || other.id == id)&&(identical(other.urlId, urlId) || other.urlId == urlId)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.isStoreParent, isStoreParent) || other.isStoreParent == isStoreParent)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.locationLat, locationLat) || other.locationLat == locationLat)&&(identical(other.locationLon, locationLon) || other.locationLon == locationLon)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.todayHours, todayHours) || other.todayHours == todayHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,urlId,name,address,logo,isStoreParent,appStatus,locationLat,locationLon,cityName,distance,isOpen,todayHours);

@override
String toString() {
  return 'StoreBranch(id: $id, urlId: $urlId, name: $name, address: $address, logo: $logo, isStoreParent: $isStoreParent, appStatus: $appStatus, locationLat: $locationLat, locationLon: $locationLon, cityName: $cityName, distance: $distance, isOpen: $isOpen, todayHours: $todayHours)';
}


}

/// @nodoc
abstract mixin class $StoreBranchCopyWith<$Res>  {
  factory $StoreBranchCopyWith(StoreBranch value, $Res Function(StoreBranch) _then) = _$StoreBranchCopyWithImpl;
@useResult
$Res call({
 int? id, String? urlId, String? name, String? address, String? logo, int? isStoreParent, AppStatus? appStatus, String? locationLat, String? locationLon, String? cityName, double? distance, bool isOpen, String? todayHours
});


$AppStatusCopyWith<$Res>? get appStatus;

}
/// @nodoc
class _$StoreBranchCopyWithImpl<$Res>
    implements $StoreBranchCopyWith<$Res> {
  _$StoreBranchCopyWithImpl(this._self, this._then);

  final StoreBranch _self;
  final $Res Function(StoreBranch) _then;

/// Create a copy of StoreBranch
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? urlId = freezed,Object? name = freezed,Object? address = freezed,Object? logo = freezed,Object? isStoreParent = freezed,Object? appStatus = freezed,Object? locationLat = freezed,Object? locationLon = freezed,Object? cityName = freezed,Object? distance = freezed,Object? isOpen = null,Object? todayHours = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,urlId: freezed == urlId ? _self.urlId : urlId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,isStoreParent: freezed == isStoreParent ? _self.isStoreParent : isStoreParent // ignore: cast_nullable_to_non_nullable
as int?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as AppStatus?,locationLat: freezed == locationLat ? _self.locationLat : locationLat // ignore: cast_nullable_to_non_nullable
as String?,locationLon: freezed == locationLon ? _self.locationLon : locationLon // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,todayHours: freezed == todayHours ? _self.todayHours : todayHours // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of StoreBranch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppStatusCopyWith<$Res>? get appStatus {
    if (_self.appStatus == null) {
    return null;
  }

  return $AppStatusCopyWith<$Res>(_self.appStatus!, (value) {
    return _then(_self.copyWith(appStatus: value));
  });
}
}


/// Adds pattern-matching-related methods to [StoreBranch].
extension StoreBranchPatterns on StoreBranch {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreBranch value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreBranch() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreBranch value)  $default,){
final _that = this;
switch (_that) {
case _StoreBranch():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreBranch value)?  $default,){
final _that = this;
switch (_that) {
case _StoreBranch() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? id,  String? urlId,  String? name,  String? address,  String? logo,  int? isStoreParent,  AppStatus? appStatus,  String? locationLat,  String? locationLon,  String? cityName,  double? distance,  bool isOpen,  String? todayHours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreBranch() when $default != null:
return $default(_that.id,_that.urlId,_that.name,_that.address,_that.logo,_that.isStoreParent,_that.appStatus,_that.locationLat,_that.locationLon,_that.cityName,_that.distance,_that.isOpen,_that.todayHours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? id,  String? urlId,  String? name,  String? address,  String? logo,  int? isStoreParent,  AppStatus? appStatus,  String? locationLat,  String? locationLon,  String? cityName,  double? distance,  bool isOpen,  String? todayHours)  $default,) {final _that = this;
switch (_that) {
case _StoreBranch():
return $default(_that.id,_that.urlId,_that.name,_that.address,_that.logo,_that.isStoreParent,_that.appStatus,_that.locationLat,_that.locationLon,_that.cityName,_that.distance,_that.isOpen,_that.todayHours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? id,  String? urlId,  String? name,  String? address,  String? logo,  int? isStoreParent,  AppStatus? appStatus,  String? locationLat,  String? locationLon,  String? cityName,  double? distance,  bool isOpen,  String? todayHours)?  $default,) {final _that = this;
switch (_that) {
case _StoreBranch() when $default != null:
return $default(_that.id,_that.urlId,_that.name,_that.address,_that.logo,_that.isStoreParent,_that.appStatus,_that.locationLat,_that.locationLon,_that.cityName,_that.distance,_that.isOpen,_that.todayHours);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _StoreBranch implements StoreBranch {
  const _StoreBranch({this.id, this.urlId, this.name, this.address, this.logo, this.isStoreParent, this.appStatus, this.locationLat, this.locationLon, this.cityName, this.distance, this.isOpen = false, this.todayHours});
  factory _StoreBranch.fromJson(Map<String, dynamic> json) => _$StoreBranchFromJson(json);

@override final  int? id;
@override final  String? urlId;
@override final  String? name;
@override final  String? address;
@override final  String? logo;
@override final  int? isStoreParent;
@override final  AppStatus? appStatus;
@override final  String? locationLat;
@override final  String? locationLon;
@override final  String? cityName;
/// Distance in km from the `lat`/`lon` sent with the request.
@override final  double? distance;
@override@JsonKey() final  bool isOpen;
/// Opening hours for today, "-" when closed all day.
@override final  String? todayHours;

/// Create a copy of StoreBranch
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreBranchCopyWith<_StoreBranch> get copyWith => __$StoreBranchCopyWithImpl<_StoreBranch>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreBranchToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreBranch&&(identical(other.id, id) || other.id == id)&&(identical(other.urlId, urlId) || other.urlId == urlId)&&(identical(other.name, name) || other.name == name)&&(identical(other.address, address) || other.address == address)&&(identical(other.logo, logo) || other.logo == logo)&&(identical(other.isStoreParent, isStoreParent) || other.isStoreParent == isStoreParent)&&(identical(other.appStatus, appStatus) || other.appStatus == appStatus)&&(identical(other.locationLat, locationLat) || other.locationLat == locationLat)&&(identical(other.locationLon, locationLon) || other.locationLon == locationLon)&&(identical(other.cityName, cityName) || other.cityName == cityName)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.isOpen, isOpen) || other.isOpen == isOpen)&&(identical(other.todayHours, todayHours) || other.todayHours == todayHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,urlId,name,address,logo,isStoreParent,appStatus,locationLat,locationLon,cityName,distance,isOpen,todayHours);

@override
String toString() {
  return 'StoreBranch(id: $id, urlId: $urlId, name: $name, address: $address, logo: $logo, isStoreParent: $isStoreParent, appStatus: $appStatus, locationLat: $locationLat, locationLon: $locationLon, cityName: $cityName, distance: $distance, isOpen: $isOpen, todayHours: $todayHours)';
}


}

/// @nodoc
abstract mixin class _$StoreBranchCopyWith<$Res> implements $StoreBranchCopyWith<$Res> {
  factory _$StoreBranchCopyWith(_StoreBranch value, $Res Function(_StoreBranch) _then) = __$StoreBranchCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? urlId, String? name, String? address, String? logo, int? isStoreParent, AppStatus? appStatus, String? locationLat, String? locationLon, String? cityName, double? distance, bool isOpen, String? todayHours
});


@override $AppStatusCopyWith<$Res>? get appStatus;

}
/// @nodoc
class __$StoreBranchCopyWithImpl<$Res>
    implements _$StoreBranchCopyWith<$Res> {
  __$StoreBranchCopyWithImpl(this._self, this._then);

  final _StoreBranch _self;
  final $Res Function(_StoreBranch) _then;

/// Create a copy of StoreBranch
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? urlId = freezed,Object? name = freezed,Object? address = freezed,Object? logo = freezed,Object? isStoreParent = freezed,Object? appStatus = freezed,Object? locationLat = freezed,Object? locationLon = freezed,Object? cityName = freezed,Object? distance = freezed,Object? isOpen = null,Object? todayHours = freezed,}) {
  return _then(_StoreBranch(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,urlId: freezed == urlId ? _self.urlId : urlId // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,logo: freezed == logo ? _self.logo : logo // ignore: cast_nullable_to_non_nullable
as String?,isStoreParent: freezed == isStoreParent ? _self.isStoreParent : isStoreParent // ignore: cast_nullable_to_non_nullable
as int?,appStatus: freezed == appStatus ? _self.appStatus : appStatus // ignore: cast_nullable_to_non_nullable
as AppStatus?,locationLat: freezed == locationLat ? _self.locationLat : locationLat // ignore: cast_nullable_to_non_nullable
as String?,locationLon: freezed == locationLon ? _self.locationLon : locationLon // ignore: cast_nullable_to_non_nullable
as String?,cityName: freezed == cityName ? _self.cityName : cityName // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,isOpen: null == isOpen ? _self.isOpen : isOpen // ignore: cast_nullable_to_non_nullable
as bool,todayHours: freezed == todayHours ? _self.todayHours : todayHours // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of StoreBranch
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AppStatusCopyWith<$Res>? get appStatus {
    if (_self.appStatus == null) {
    return null;
  }

  return $AppStatusCopyWith<$Res>(_self.appStatus!, (value) {
    return _then(_self.copyWith(appStatus: value));
  });
}
}


/// @nodoc
mixin _$StoreBranchesMeta {

 int get total; int get page; int get offset; int get perPage; int get totalPage;
/// Create a copy of StoreBranchesMeta
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StoreBranchesMetaCopyWith<StoreBranchesMeta> get copyWith => _$StoreBranchesMetaCopyWithImpl<StoreBranchesMeta>(this as StoreBranchesMeta, _$identity);

  /// Serializes this StoreBranchesMeta to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StoreBranchesMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,offset,perPage,totalPage);

@override
String toString() {
  return 'StoreBranchesMeta(total: $total, page: $page, offset: $offset, perPage: $perPage, totalPage: $totalPage)';
}


}

/// @nodoc
abstract mixin class $StoreBranchesMetaCopyWith<$Res>  {
  factory $StoreBranchesMetaCopyWith(StoreBranchesMeta value, $Res Function(StoreBranchesMeta) _then) = _$StoreBranchesMetaCopyWithImpl;
@useResult
$Res call({
 int total, int page, int offset, int perPage, int totalPage
});




}
/// @nodoc
class _$StoreBranchesMetaCopyWithImpl<$Res>
    implements $StoreBranchesMetaCopyWith<$Res> {
  _$StoreBranchesMetaCopyWithImpl(this._self, this._then);

  final StoreBranchesMeta _self;
  final $Res Function(StoreBranchesMeta) _then;

/// Create a copy of StoreBranchesMeta
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? total = null,Object? page = null,Object? offset = null,Object? perPage = null,Object? totalPage = null,}) {
  return _then(_self.copyWith(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [StoreBranchesMeta].
extension StoreBranchesMetaPatterns on StoreBranchesMeta {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StoreBranchesMeta value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StoreBranchesMeta() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StoreBranchesMeta value)  $default,){
final _that = this;
switch (_that) {
case _StoreBranchesMeta():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StoreBranchesMeta value)?  $default,){
final _that = this;
switch (_that) {
case _StoreBranchesMeta() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int total,  int page,  int offset,  int perPage,  int totalPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StoreBranchesMeta() when $default != null:
return $default(_that.total,_that.page,_that.offset,_that.perPage,_that.totalPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int total,  int page,  int offset,  int perPage,  int totalPage)  $default,) {final _that = this;
switch (_that) {
case _StoreBranchesMeta():
return $default(_that.total,_that.page,_that.offset,_that.perPage,_that.totalPage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int total,  int page,  int offset,  int perPage,  int totalPage)?  $default,) {final _that = this;
switch (_that) {
case _StoreBranchesMeta() when $default != null:
return $default(_that.total,_that.page,_that.offset,_that.perPage,_that.totalPage);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _StoreBranchesMeta implements StoreBranchesMeta {
  const _StoreBranchesMeta({this.total = 0, this.page = 1, this.offset = 0, this.perPage = 15, this.totalPage = 1});
  factory _StoreBranchesMeta.fromJson(Map<String, dynamic> json) => _$StoreBranchesMetaFromJson(json);

@override@JsonKey() final  int total;
@override@JsonKey() final  int page;
@override@JsonKey() final  int offset;
@override@JsonKey() final  int perPage;
@override@JsonKey() final  int totalPage;

/// Create a copy of StoreBranchesMeta
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StoreBranchesMetaCopyWith<_StoreBranchesMeta> get copyWith => __$StoreBranchesMetaCopyWithImpl<_StoreBranchesMeta>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StoreBranchesMetaToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StoreBranchesMeta&&(identical(other.total, total) || other.total == total)&&(identical(other.page, page) || other.page == page)&&(identical(other.offset, offset) || other.offset == offset)&&(identical(other.perPage, perPage) || other.perPage == perPage)&&(identical(other.totalPage, totalPage) || other.totalPage == totalPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,total,page,offset,perPage,totalPage);

@override
String toString() {
  return 'StoreBranchesMeta(total: $total, page: $page, offset: $offset, perPage: $perPage, totalPage: $totalPage)';
}


}

/// @nodoc
abstract mixin class _$StoreBranchesMetaCopyWith<$Res> implements $StoreBranchesMetaCopyWith<$Res> {
  factory _$StoreBranchesMetaCopyWith(_StoreBranchesMeta value, $Res Function(_StoreBranchesMeta) _then) = __$StoreBranchesMetaCopyWithImpl;
@override @useResult
$Res call({
 int total, int page, int offset, int perPage, int totalPage
});




}
/// @nodoc
class __$StoreBranchesMetaCopyWithImpl<$Res>
    implements _$StoreBranchesMetaCopyWith<$Res> {
  __$StoreBranchesMetaCopyWithImpl(this._self, this._then);

  final _StoreBranchesMeta _self;
  final $Res Function(_StoreBranchesMeta) _then;

/// Create a copy of StoreBranchesMeta
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? total = null,Object? page = null,Object? offset = null,Object? perPage = null,Object? totalPage = null,}) {
  return _then(_StoreBranchesMeta(
total: null == total ? _self.total : total // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,offset: null == offset ? _self.offset : offset // ignore: cast_nullable_to_non_nullable
as int,perPage: null == perPage ? _self.perPage : perPage // ignore: cast_nullable_to_non_nullable
as int,totalPage: null == totalPage ? _self.totalPage : totalPage // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
