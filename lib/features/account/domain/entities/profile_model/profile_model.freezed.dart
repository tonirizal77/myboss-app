// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileModel {

 int get acceptNewsletter; String get address; String get avatar; int get avatarId; int get cityId; String get code; String get company; String get countryId; String get createdTime; String get creditLimit; CustomerTypeId? get customerTypeId; String get email; String get favatar; int get id; int get isEmailVerified; int get isFrozen; int get isVerified; String get name; String get notes; String get phone; String get photo; String get photomd; String get photosm; String get postalCode; String get status; int get storeId; int get subdistrictId; int get level; String get levelName; int get maxStamp; int get filledStamp; int get maxTotalStamp; int get stampFreeCount; int get availableVoucherCount; int get cumulativePrev; int get currentCycle; int get totalPoint;
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileModelCopyWith<ProfileModel> get copyWith => _$ProfileModelCopyWithImpl<ProfileModel>(this as ProfileModel, _$identity);

  /// Serializes this ProfileModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileModel&&(identical(other.acceptNewsletter, acceptNewsletter) || other.acceptNewsletter == acceptNewsletter)&&(identical(other.address, address) || other.address == address)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.avatarId, avatarId) || other.avatarId == avatarId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.code, code) || other.code == code)&&(identical(other.company, company) || other.company == company)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.customerTypeId, customerTypeId) || other.customerTypeId == customerTypeId)&&(identical(other.email, email) || other.email == email)&&(identical(other.favatar, favatar) || other.favatar == favatar)&&(identical(other.id, id) || other.id == id)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isFrozen, isFrozen) || other.isFrozen == isFrozen)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.name, name) || other.name == name)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.photomd, photomd) || other.photomd == photomd)&&(identical(other.photosm, photosm) || other.photosm == photosm)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.subdistrictId, subdistrictId) || other.subdistrictId == subdistrictId)&&(identical(other.level, level) || other.level == level)&&(identical(other.levelName, levelName) || other.levelName == levelName)&&(identical(other.maxStamp, maxStamp) || other.maxStamp == maxStamp)&&(identical(other.filledStamp, filledStamp) || other.filledStamp == filledStamp)&&(identical(other.maxTotalStamp, maxTotalStamp) || other.maxTotalStamp == maxTotalStamp)&&(identical(other.stampFreeCount, stampFreeCount) || other.stampFreeCount == stampFreeCount)&&(identical(other.availableVoucherCount, availableVoucherCount) || other.availableVoucherCount == availableVoucherCount)&&(identical(other.cumulativePrev, cumulativePrev) || other.cumulativePrev == cumulativePrev)&&(identical(other.currentCycle, currentCycle) || other.currentCycle == currentCycle)&&(identical(other.totalPoint, totalPoint) || other.totalPoint == totalPoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,acceptNewsletter,address,avatar,avatarId,cityId,code,company,countryId,createdTime,creditLimit,customerTypeId,email,favatar,id,isEmailVerified,isFrozen,isVerified,name,notes,phone,photo,photomd,photosm,postalCode,status,storeId,subdistrictId,level,levelName,maxStamp,filledStamp,maxTotalStamp,stampFreeCount,availableVoucherCount,cumulativePrev,currentCycle,totalPoint]);

@override
String toString() {
  return 'ProfileModel(acceptNewsletter: $acceptNewsletter, address: $address, avatar: $avatar, avatarId: $avatarId, cityId: $cityId, code: $code, company: $company, countryId: $countryId, createdTime: $createdTime, creditLimit: $creditLimit, customerTypeId: $customerTypeId, email: $email, favatar: $favatar, id: $id, isEmailVerified: $isEmailVerified, isFrozen: $isFrozen, isVerified: $isVerified, name: $name, notes: $notes, phone: $phone, photo: $photo, photomd: $photomd, photosm: $photosm, postalCode: $postalCode, status: $status, storeId: $storeId, subdistrictId: $subdistrictId, level: $level, levelName: $levelName, maxStamp: $maxStamp, filledStamp: $filledStamp, maxTotalStamp: $maxTotalStamp, stampFreeCount: $stampFreeCount, availableVoucherCount: $availableVoucherCount, cumulativePrev: $cumulativePrev, currentCycle: $currentCycle, totalPoint: $totalPoint)';
}


}

/// @nodoc
abstract mixin class $ProfileModelCopyWith<$Res>  {
  factory $ProfileModelCopyWith(ProfileModel value, $Res Function(ProfileModel) _then) = _$ProfileModelCopyWithImpl;
@useResult
$Res call({
 int acceptNewsletter, String address, String avatar, int avatarId, int cityId, String code, String company, String countryId, String createdTime, String creditLimit, CustomerTypeId? customerTypeId, String email, String favatar, int id, int isEmailVerified, int isFrozen, int isVerified, String name, String notes, String phone, String photo, String photomd, String photosm, String postalCode, String status, int storeId, int subdistrictId, int level, String levelName, int maxStamp, int filledStamp, int maxTotalStamp, int stampFreeCount, int availableVoucherCount, int cumulativePrev, int currentCycle, int totalPoint
});


$CustomerTypeIdCopyWith<$Res>? get customerTypeId;

}
/// @nodoc
class _$ProfileModelCopyWithImpl<$Res>
    implements $ProfileModelCopyWith<$Res> {
  _$ProfileModelCopyWithImpl(this._self, this._then);

  final ProfileModel _self;
  final $Res Function(ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? acceptNewsletter = null,Object? address = null,Object? avatar = null,Object? avatarId = null,Object? cityId = null,Object? code = null,Object? company = null,Object? countryId = null,Object? createdTime = null,Object? creditLimit = null,Object? customerTypeId = freezed,Object? email = null,Object? favatar = null,Object? id = null,Object? isEmailVerified = null,Object? isFrozen = null,Object? isVerified = null,Object? name = null,Object? notes = null,Object? phone = null,Object? photo = null,Object? photomd = null,Object? photosm = null,Object? postalCode = null,Object? status = null,Object? storeId = null,Object? subdistrictId = null,Object? level = null,Object? levelName = null,Object? maxStamp = null,Object? filledStamp = null,Object? maxTotalStamp = null,Object? stampFreeCount = null,Object? availableVoucherCount = null,Object? cumulativePrev = null,Object? currentCycle = null,Object? totalPoint = null,}) {
  return _then(_self.copyWith(
acceptNewsletter: null == acceptNewsletter ? _self.acceptNewsletter : acceptNewsletter // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,avatarId: null == avatarId ? _self.avatarId : avatarId // ignore: cast_nullable_to_non_nullable
as int,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as String,creditLimit: null == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as String,customerTypeId: freezed == customerTypeId ? _self.customerTypeId : customerTypeId // ignore: cast_nullable_to_non_nullable
as CustomerTypeId?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,favatar: null == favatar ? _self.favatar : favatar // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as int,isFrozen: null == isFrozen ? _self.isFrozen : isFrozen // ignore: cast_nullable_to_non_nullable
as int,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,photomd: null == photomd ? _self.photomd : photomd // ignore: cast_nullable_to_non_nullable
as String,photosm: null == photosm ? _self.photosm : photosm // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,subdistrictId: null == subdistrictId ? _self.subdistrictId : subdistrictId // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,levelName: null == levelName ? _self.levelName : levelName // ignore: cast_nullable_to_non_nullable
as String,maxStamp: null == maxStamp ? _self.maxStamp : maxStamp // ignore: cast_nullable_to_non_nullable
as int,filledStamp: null == filledStamp ? _self.filledStamp : filledStamp // ignore: cast_nullable_to_non_nullable
as int,maxTotalStamp: null == maxTotalStamp ? _self.maxTotalStamp : maxTotalStamp // ignore: cast_nullable_to_non_nullable
as int,stampFreeCount: null == stampFreeCount ? _self.stampFreeCount : stampFreeCount // ignore: cast_nullable_to_non_nullable
as int,availableVoucherCount: null == availableVoucherCount ? _self.availableVoucherCount : availableVoucherCount // ignore: cast_nullable_to_non_nullable
as int,cumulativePrev: null == cumulativePrev ? _self.cumulativePrev : cumulativePrev // ignore: cast_nullable_to_non_nullable
as int,currentCycle: null == currentCycle ? _self.currentCycle : currentCycle // ignore: cast_nullable_to_non_nullable
as int,totalPoint: null == totalPoint ? _self.totalPoint : totalPoint // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerTypeIdCopyWith<$Res>? get customerTypeId {
    if (_self.customerTypeId == null) {
    return null;
  }

  return $CustomerTypeIdCopyWith<$Res>(_self.customerTypeId!, (value) {
    return _then(_self.copyWith(customerTypeId: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileModel].
extension ProfileModelPatterns on ProfileModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int acceptNewsletter,  String address,  String avatar,  int avatarId,  int cityId,  String code,  String company,  String countryId,  String createdTime,  String creditLimit,  CustomerTypeId? customerTypeId,  String email,  String favatar,  int id,  int isEmailVerified,  int isFrozen,  int isVerified,  String name,  String notes,  String phone,  String photo,  String photomd,  String photosm,  String postalCode,  String status,  int storeId,  int subdistrictId,  int level,  String levelName,  int maxStamp,  int filledStamp,  int maxTotalStamp,  int stampFreeCount,  int availableVoucherCount,  int cumulativePrev,  int currentCycle,  int totalPoint)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.acceptNewsletter,_that.address,_that.avatar,_that.avatarId,_that.cityId,_that.code,_that.company,_that.countryId,_that.createdTime,_that.creditLimit,_that.customerTypeId,_that.email,_that.favatar,_that.id,_that.isEmailVerified,_that.isFrozen,_that.isVerified,_that.name,_that.notes,_that.phone,_that.photo,_that.photomd,_that.photosm,_that.postalCode,_that.status,_that.storeId,_that.subdistrictId,_that.level,_that.levelName,_that.maxStamp,_that.filledStamp,_that.maxTotalStamp,_that.stampFreeCount,_that.availableVoucherCount,_that.cumulativePrev,_that.currentCycle,_that.totalPoint);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int acceptNewsletter,  String address,  String avatar,  int avatarId,  int cityId,  String code,  String company,  String countryId,  String createdTime,  String creditLimit,  CustomerTypeId? customerTypeId,  String email,  String favatar,  int id,  int isEmailVerified,  int isFrozen,  int isVerified,  String name,  String notes,  String phone,  String photo,  String photomd,  String photosm,  String postalCode,  String status,  int storeId,  int subdistrictId,  int level,  String levelName,  int maxStamp,  int filledStamp,  int maxTotalStamp,  int stampFreeCount,  int availableVoucherCount,  int cumulativePrev,  int currentCycle,  int totalPoint)  $default,) {final _that = this;
switch (_that) {
case _ProfileModel():
return $default(_that.acceptNewsletter,_that.address,_that.avatar,_that.avatarId,_that.cityId,_that.code,_that.company,_that.countryId,_that.createdTime,_that.creditLimit,_that.customerTypeId,_that.email,_that.favatar,_that.id,_that.isEmailVerified,_that.isFrozen,_that.isVerified,_that.name,_that.notes,_that.phone,_that.photo,_that.photomd,_that.photosm,_that.postalCode,_that.status,_that.storeId,_that.subdistrictId,_that.level,_that.levelName,_that.maxStamp,_that.filledStamp,_that.maxTotalStamp,_that.stampFreeCount,_that.availableVoucherCount,_that.cumulativePrev,_that.currentCycle,_that.totalPoint);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int acceptNewsletter,  String address,  String avatar,  int avatarId,  int cityId,  String code,  String company,  String countryId,  String createdTime,  String creditLimit,  CustomerTypeId? customerTypeId,  String email,  String favatar,  int id,  int isEmailVerified,  int isFrozen,  int isVerified,  String name,  String notes,  String phone,  String photo,  String photomd,  String photosm,  String postalCode,  String status,  int storeId,  int subdistrictId,  int level,  String levelName,  int maxStamp,  int filledStamp,  int maxTotalStamp,  int stampFreeCount,  int availableVoucherCount,  int cumulativePrev,  int currentCycle,  int totalPoint)?  $default,) {final _that = this;
switch (_that) {
case _ProfileModel() when $default != null:
return $default(_that.acceptNewsletter,_that.address,_that.avatar,_that.avatarId,_that.cityId,_that.code,_that.company,_that.countryId,_that.createdTime,_that.creditLimit,_that.customerTypeId,_that.email,_that.favatar,_that.id,_that.isEmailVerified,_that.isFrozen,_that.isVerified,_that.name,_that.notes,_that.phone,_that.photo,_that.photomd,_that.photosm,_that.postalCode,_that.status,_that.storeId,_that.subdistrictId,_that.level,_that.levelName,_that.maxStamp,_that.filledStamp,_that.maxTotalStamp,_that.stampFreeCount,_that.availableVoucherCount,_that.cumulativePrev,_that.currentCycle,_that.totalPoint);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ProfileModel implements ProfileModel {
  const _ProfileModel({this.acceptNewsletter = 0, this.address = "", this.avatar = "", this.avatarId = 0, this.cityId = 0, this.code = "", this.company = "", this.countryId = "", this.createdTime = "", this.creditLimit = "", this.customerTypeId, this.email = "", this.favatar = "", this.id = 0, this.isEmailVerified = 0, this.isFrozen = 0, this.isVerified = 0, this.name = "", this.notes = "", this.phone = "", this.photo = "", this.photomd = "", this.photosm = "", this.postalCode = "", this.status = "", this.storeId = 0, this.subdistrictId = 0, this.level = 1, this.levelName = "Cool", this.maxStamp = 0, this.filledStamp = 0, this.maxTotalStamp = 0, this.stampFreeCount = 0, this.availableVoucherCount = 0, this.cumulativePrev = 0, this.currentCycle = 0, this.totalPoint = 0});
  factory _ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);

@override@JsonKey() final  int acceptNewsletter;
@override@JsonKey() final  String address;
@override@JsonKey() final  String avatar;
@override@JsonKey() final  int avatarId;
@override@JsonKey() final  int cityId;
@override@JsonKey() final  String code;
@override@JsonKey() final  String company;
@override@JsonKey() final  String countryId;
@override@JsonKey() final  String createdTime;
@override@JsonKey() final  String creditLimit;
@override final  CustomerTypeId? customerTypeId;
@override@JsonKey() final  String email;
@override@JsonKey() final  String favatar;
@override@JsonKey() final  int id;
@override@JsonKey() final  int isEmailVerified;
@override@JsonKey() final  int isFrozen;
@override@JsonKey() final  int isVerified;
@override@JsonKey() final  String name;
@override@JsonKey() final  String notes;
@override@JsonKey() final  String phone;
@override@JsonKey() final  String photo;
@override@JsonKey() final  String photomd;
@override@JsonKey() final  String photosm;
@override@JsonKey() final  String postalCode;
@override@JsonKey() final  String status;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  int subdistrictId;
@override@JsonKey() final  int level;
@override@JsonKey() final  String levelName;
@override@JsonKey() final  int maxStamp;
@override@JsonKey() final  int filledStamp;
@override@JsonKey() final  int maxTotalStamp;
@override@JsonKey() final  int stampFreeCount;
@override@JsonKey() final  int availableVoucherCount;
@override@JsonKey() final  int cumulativePrev;
@override@JsonKey() final  int currentCycle;
@override@JsonKey() final  int totalPoint;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileModelCopyWith<_ProfileModel> get copyWith => __$ProfileModelCopyWithImpl<_ProfileModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileModel&&(identical(other.acceptNewsletter, acceptNewsletter) || other.acceptNewsletter == acceptNewsletter)&&(identical(other.address, address) || other.address == address)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.avatarId, avatarId) || other.avatarId == avatarId)&&(identical(other.cityId, cityId) || other.cityId == cityId)&&(identical(other.code, code) || other.code == code)&&(identical(other.company, company) || other.company == company)&&(identical(other.countryId, countryId) || other.countryId == countryId)&&(identical(other.createdTime, createdTime) || other.createdTime == createdTime)&&(identical(other.creditLimit, creditLimit) || other.creditLimit == creditLimit)&&(identical(other.customerTypeId, customerTypeId) || other.customerTypeId == customerTypeId)&&(identical(other.email, email) || other.email == email)&&(identical(other.favatar, favatar) || other.favatar == favatar)&&(identical(other.id, id) || other.id == id)&&(identical(other.isEmailVerified, isEmailVerified) || other.isEmailVerified == isEmailVerified)&&(identical(other.isFrozen, isFrozen) || other.isFrozen == isFrozen)&&(identical(other.isVerified, isVerified) || other.isVerified == isVerified)&&(identical(other.name, name) || other.name == name)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.photomd, photomd) || other.photomd == photomd)&&(identical(other.photosm, photosm) || other.photosm == photosm)&&(identical(other.postalCode, postalCode) || other.postalCode == postalCode)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.subdistrictId, subdistrictId) || other.subdistrictId == subdistrictId)&&(identical(other.level, level) || other.level == level)&&(identical(other.levelName, levelName) || other.levelName == levelName)&&(identical(other.maxStamp, maxStamp) || other.maxStamp == maxStamp)&&(identical(other.filledStamp, filledStamp) || other.filledStamp == filledStamp)&&(identical(other.maxTotalStamp, maxTotalStamp) || other.maxTotalStamp == maxTotalStamp)&&(identical(other.stampFreeCount, stampFreeCount) || other.stampFreeCount == stampFreeCount)&&(identical(other.availableVoucherCount, availableVoucherCount) || other.availableVoucherCount == availableVoucherCount)&&(identical(other.cumulativePrev, cumulativePrev) || other.cumulativePrev == cumulativePrev)&&(identical(other.currentCycle, currentCycle) || other.currentCycle == currentCycle)&&(identical(other.totalPoint, totalPoint) || other.totalPoint == totalPoint));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,acceptNewsletter,address,avatar,avatarId,cityId,code,company,countryId,createdTime,creditLimit,customerTypeId,email,favatar,id,isEmailVerified,isFrozen,isVerified,name,notes,phone,photo,photomd,photosm,postalCode,status,storeId,subdistrictId,level,levelName,maxStamp,filledStamp,maxTotalStamp,stampFreeCount,availableVoucherCount,cumulativePrev,currentCycle,totalPoint]);

@override
String toString() {
  return 'ProfileModel(acceptNewsletter: $acceptNewsletter, address: $address, avatar: $avatar, avatarId: $avatarId, cityId: $cityId, code: $code, company: $company, countryId: $countryId, createdTime: $createdTime, creditLimit: $creditLimit, customerTypeId: $customerTypeId, email: $email, favatar: $favatar, id: $id, isEmailVerified: $isEmailVerified, isFrozen: $isFrozen, isVerified: $isVerified, name: $name, notes: $notes, phone: $phone, photo: $photo, photomd: $photomd, photosm: $photosm, postalCode: $postalCode, status: $status, storeId: $storeId, subdistrictId: $subdistrictId, level: $level, levelName: $levelName, maxStamp: $maxStamp, filledStamp: $filledStamp, maxTotalStamp: $maxTotalStamp, stampFreeCount: $stampFreeCount, availableVoucherCount: $availableVoucherCount, cumulativePrev: $cumulativePrev, currentCycle: $currentCycle, totalPoint: $totalPoint)';
}


}

/// @nodoc
abstract mixin class _$ProfileModelCopyWith<$Res> implements $ProfileModelCopyWith<$Res> {
  factory _$ProfileModelCopyWith(_ProfileModel value, $Res Function(_ProfileModel) _then) = __$ProfileModelCopyWithImpl;
@override @useResult
$Res call({
 int acceptNewsletter, String address, String avatar, int avatarId, int cityId, String code, String company, String countryId, String createdTime, String creditLimit, CustomerTypeId? customerTypeId, String email, String favatar, int id, int isEmailVerified, int isFrozen, int isVerified, String name, String notes, String phone, String photo, String photomd, String photosm, String postalCode, String status, int storeId, int subdistrictId, int level, String levelName, int maxStamp, int filledStamp, int maxTotalStamp, int stampFreeCount, int availableVoucherCount, int cumulativePrev, int currentCycle, int totalPoint
});


@override $CustomerTypeIdCopyWith<$Res>? get customerTypeId;

}
/// @nodoc
class __$ProfileModelCopyWithImpl<$Res>
    implements _$ProfileModelCopyWith<$Res> {
  __$ProfileModelCopyWithImpl(this._self, this._then);

  final _ProfileModel _self;
  final $Res Function(_ProfileModel) _then;

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? acceptNewsletter = null,Object? address = null,Object? avatar = null,Object? avatarId = null,Object? cityId = null,Object? code = null,Object? company = null,Object? countryId = null,Object? createdTime = null,Object? creditLimit = null,Object? customerTypeId = freezed,Object? email = null,Object? favatar = null,Object? id = null,Object? isEmailVerified = null,Object? isFrozen = null,Object? isVerified = null,Object? name = null,Object? notes = null,Object? phone = null,Object? photo = null,Object? photomd = null,Object? photosm = null,Object? postalCode = null,Object? status = null,Object? storeId = null,Object? subdistrictId = null,Object? level = null,Object? levelName = null,Object? maxStamp = null,Object? filledStamp = null,Object? maxTotalStamp = null,Object? stampFreeCount = null,Object? availableVoucherCount = null,Object? cumulativePrev = null,Object? currentCycle = null,Object? totalPoint = null,}) {
  return _then(_ProfileModel(
acceptNewsletter: null == acceptNewsletter ? _self.acceptNewsletter : acceptNewsletter // ignore: cast_nullable_to_non_nullable
as int,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,avatarId: null == avatarId ? _self.avatarId : avatarId // ignore: cast_nullable_to_non_nullable
as int,cityId: null == cityId ? _self.cityId : cityId // ignore: cast_nullable_to_non_nullable
as int,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,company: null == company ? _self.company : company // ignore: cast_nullable_to_non_nullable
as String,countryId: null == countryId ? _self.countryId : countryId // ignore: cast_nullable_to_non_nullable
as String,createdTime: null == createdTime ? _self.createdTime : createdTime // ignore: cast_nullable_to_non_nullable
as String,creditLimit: null == creditLimit ? _self.creditLimit : creditLimit // ignore: cast_nullable_to_non_nullable
as String,customerTypeId: freezed == customerTypeId ? _self.customerTypeId : customerTypeId // ignore: cast_nullable_to_non_nullable
as CustomerTypeId?,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,favatar: null == favatar ? _self.favatar : favatar // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isEmailVerified: null == isEmailVerified ? _self.isEmailVerified : isEmailVerified // ignore: cast_nullable_to_non_nullable
as int,isFrozen: null == isFrozen ? _self.isFrozen : isFrozen // ignore: cast_nullable_to_non_nullable
as int,isVerified: null == isVerified ? _self.isVerified : isVerified // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,photomd: null == photomd ? _self.photomd : photomd // ignore: cast_nullable_to_non_nullable
as String,photosm: null == photosm ? _self.photosm : photosm // ignore: cast_nullable_to_non_nullable
as String,postalCode: null == postalCode ? _self.postalCode : postalCode // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,subdistrictId: null == subdistrictId ? _self.subdistrictId : subdistrictId // ignore: cast_nullable_to_non_nullable
as int,level: null == level ? _self.level : level // ignore: cast_nullable_to_non_nullable
as int,levelName: null == levelName ? _self.levelName : levelName // ignore: cast_nullable_to_non_nullable
as String,maxStamp: null == maxStamp ? _self.maxStamp : maxStamp // ignore: cast_nullable_to_non_nullable
as int,filledStamp: null == filledStamp ? _self.filledStamp : filledStamp // ignore: cast_nullable_to_non_nullable
as int,maxTotalStamp: null == maxTotalStamp ? _self.maxTotalStamp : maxTotalStamp // ignore: cast_nullable_to_non_nullable
as int,stampFreeCount: null == stampFreeCount ? _self.stampFreeCount : stampFreeCount // ignore: cast_nullable_to_non_nullable
as int,availableVoucherCount: null == availableVoucherCount ? _self.availableVoucherCount : availableVoucherCount // ignore: cast_nullable_to_non_nullable
as int,cumulativePrev: null == cumulativePrev ? _self.cumulativePrev : cumulativePrev // ignore: cast_nullable_to_non_nullable
as int,currentCycle: null == currentCycle ? _self.currentCycle : currentCycle // ignore: cast_nullable_to_non_nullable
as int,totalPoint: null == totalPoint ? _self.totalPoint : totalPoint // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of ProfileModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CustomerTypeIdCopyWith<$Res>? get customerTypeId {
    if (_self.customerTypeId == null) {
    return null;
  }

  return $CustomerTypeIdCopyWith<$Res>(_self.customerTypeId!, (value) {
    return _then(_self.copyWith(customerTypeId: value));
  });
}
}


/// @nodoc
mixin _$CustomerTypeId {

 int? get id; String? get name;
/// Create a copy of CustomerTypeId
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CustomerTypeIdCopyWith<CustomerTypeId> get copyWith => _$CustomerTypeIdCopyWithImpl<CustomerTypeId>(this as CustomerTypeId, _$identity);

  /// Serializes this CustomerTypeId to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CustomerTypeId&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CustomerTypeId(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $CustomerTypeIdCopyWith<$Res>  {
  factory $CustomerTypeIdCopyWith(CustomerTypeId value, $Res Function(CustomerTypeId) _then) = _$CustomerTypeIdCopyWithImpl;
@useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class _$CustomerTypeIdCopyWithImpl<$Res>
    implements $CustomerTypeIdCopyWith<$Res> {
  _$CustomerTypeIdCopyWithImpl(this._self, this._then);

  final CustomerTypeId _self;
  final $Res Function(CustomerTypeId) _then;

/// Create a copy of CustomerTypeId
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CustomerTypeId].
extension CustomerTypeIdPatterns on CustomerTypeId {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CustomerTypeId value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CustomerTypeId() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CustomerTypeId value)  $default,){
final _that = this;
switch (_that) {
case _CustomerTypeId():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CustomerTypeId value)?  $default,){
final _that = this;
switch (_that) {
case _CustomerTypeId() when $default != null:
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
case _CustomerTypeId() when $default != null:
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
case _CustomerTypeId():
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
case _CustomerTypeId() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _CustomerTypeId implements CustomerTypeId {
  const _CustomerTypeId({this.id = 0, this.name = 'guest'});
  factory _CustomerTypeId.fromJson(Map<String, dynamic> json) => _$CustomerTypeIdFromJson(json);

@override@JsonKey() final  int? id;
@override@JsonKey() final  String? name;

/// Create a copy of CustomerTypeId
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CustomerTypeIdCopyWith<_CustomerTypeId> get copyWith => __$CustomerTypeIdCopyWithImpl<_CustomerTypeId>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CustomerTypeIdToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CustomerTypeId&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'CustomerTypeId(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$CustomerTypeIdCopyWith<$Res> implements $CustomerTypeIdCopyWith<$Res> {
  factory _$CustomerTypeIdCopyWith(_CustomerTypeId value, $Res Function(_CustomerTypeId) _then) = __$CustomerTypeIdCopyWithImpl;
@override @useResult
$Res call({
 int? id, String? name
});




}
/// @nodoc
class __$CustomerTypeIdCopyWithImpl<$Res>
    implements _$CustomerTypeIdCopyWith<$Res> {
  __$CustomerTypeIdCopyWithImpl(this._self, this._then);

  final _CustomerTypeId _self;
  final $Res Function(_CustomerTypeId) _then;

/// Create a copy of CustomerTypeId
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,}) {
  return _then(_CustomerTypeId(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
