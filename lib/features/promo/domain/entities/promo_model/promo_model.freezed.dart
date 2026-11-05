// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoPointsModel {

 List<PromoPoint> get data;
/// Create a copy of PromoPointsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoPointsModelCopyWith<PromoPointsModel> get copyWith => _$PromoPointsModelCopyWithImpl<PromoPointsModel>(this as PromoPointsModel, _$identity);

  /// Serializes this PromoPointsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoPointsModel&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PromoPointsModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $PromoPointsModelCopyWith<$Res>  {
  factory $PromoPointsModelCopyWith(PromoPointsModel value, $Res Function(PromoPointsModel) _then) = _$PromoPointsModelCopyWithImpl;
@useResult
$Res call({
 List<PromoPoint> data
});




}
/// @nodoc
class _$PromoPointsModelCopyWithImpl<$Res>
    implements $PromoPointsModelCopyWith<$Res> {
  _$PromoPointsModelCopyWithImpl(this._self, this._then);

  final PromoPointsModel _self;
  final $Res Function(PromoPointsModel) _then;

/// Create a copy of PromoPointsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PromoPoint>,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoPointsModel].
extension PromoPointsModelPatterns on PromoPointsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoPointsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoPointsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoPointsModel value)  $default,){
final _that = this;
switch (_that) {
case _PromoPointsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoPointsModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromoPointsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PromoPoint> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoPointsModel() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PromoPoint> data)  $default,) {final _that = this;
switch (_that) {
case _PromoPointsModel():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PromoPoint> data)?  $default,) {final _that = this;
switch (_that) {
case _PromoPointsModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PromoPointsModel implements PromoPointsModel {
  const _PromoPointsModel({final  List<PromoPoint> data = const []}): _data = data;
  factory _PromoPointsModel.fromJson(Map<String, dynamic> json) => _$PromoPointsModelFromJson(json);

 final  List<PromoPoint> _data;
@override@JsonKey() List<PromoPoint> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of PromoPointsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoPointsModelCopyWith<_PromoPointsModel> get copyWith => __$PromoPointsModelCopyWithImpl<_PromoPointsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoPointsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoPointsModel&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PromoPointsModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PromoPointsModelCopyWith<$Res> implements $PromoPointsModelCopyWith<$Res> {
  factory _$PromoPointsModelCopyWith(_PromoPointsModel value, $Res Function(_PromoPointsModel) _then) = __$PromoPointsModelCopyWithImpl;
@override @useResult
$Res call({
 List<PromoPoint> data
});




}
/// @nodoc
class __$PromoPointsModelCopyWithImpl<$Res>
    implements _$PromoPointsModelCopyWith<$Res> {
  __$PromoPointsModelCopyWithImpl(this._self, this._then);

  final _PromoPointsModel _self;
  final $Res Function(_PromoPointsModel) _then;

/// Create a copy of PromoPointsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_PromoPointsModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PromoPoint>,
  ));
}


}


/// @nodoc
mixin _$PromoPoint {

 int get id; String get name; String? get photo; int get redeemedPoints;
/// Create a copy of PromoPoint
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoPointCopyWith<PromoPoint> get copyWith => _$PromoPointCopyWithImpl<PromoPoint>(this as PromoPoint, _$identity);

  /// Serializes this PromoPoint to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoPoint&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo,redeemedPoints);

@override
String toString() {
  return 'PromoPoint(id: $id, name: $name, photo: $photo, redeemedPoints: $redeemedPoints)';
}


}

/// @nodoc
abstract mixin class $PromoPointCopyWith<$Res>  {
  factory $PromoPointCopyWith(PromoPoint value, $Res Function(PromoPoint) _then) = _$PromoPointCopyWithImpl;
@useResult
$Res call({
 int id, String name, String? photo, int redeemedPoints
});




}
/// @nodoc
class _$PromoPointCopyWithImpl<$Res>
    implements $PromoPointCopyWith<$Res> {
  _$PromoPointCopyWithImpl(this._self, this._then);

  final PromoPoint _self;
  final $Res Function(PromoPoint) _then;

/// Create a copy of PromoPoint
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? photo = freezed,Object? redeemedPoints = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,redeemedPoints: null == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoPoint].
extension PromoPointPatterns on PromoPoint {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoPoint value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoPoint() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoPoint value)  $default,){
final _that = this;
switch (_that) {
case _PromoPoint():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoPoint value)?  $default,){
final _that = this;
switch (_that) {
case _PromoPoint() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String? photo,  int redeemedPoints)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoPoint() when $default != null:
return $default(_that.id,_that.name,_that.photo,_that.redeemedPoints);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String? photo,  int redeemedPoints)  $default,) {final _that = this;
switch (_that) {
case _PromoPoint():
return $default(_that.id,_that.name,_that.photo,_that.redeemedPoints);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String? photo,  int redeemedPoints)?  $default,) {final _that = this;
switch (_that) {
case _PromoPoint() when $default != null:
return $default(_that.id,_that.name,_that.photo,_that.redeemedPoints);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PromoPoint implements PromoPoint {
  const _PromoPoint({this.id = 0, this.name = '', this.photo, this.redeemedPoints = 0});
  factory _PromoPoint.fromJson(Map<String, dynamic> json) => _$PromoPointFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override final  String? photo;
@override@JsonKey() final  int redeemedPoints;

/// Create a copy of PromoPoint
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoPointCopyWith<_PromoPoint> get copyWith => __$PromoPointCopyWithImpl<_PromoPoint>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoPointToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoPoint&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.redeemedPoints, redeemedPoints) || other.redeemedPoints == redeemedPoints));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,photo,redeemedPoints);

@override
String toString() {
  return 'PromoPoint(id: $id, name: $name, photo: $photo, redeemedPoints: $redeemedPoints)';
}


}

/// @nodoc
abstract mixin class _$PromoPointCopyWith<$Res> implements $PromoPointCopyWith<$Res> {
  factory _$PromoPointCopyWith(_PromoPoint value, $Res Function(_PromoPoint) _then) = __$PromoPointCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String? photo, int redeemedPoints
});




}
/// @nodoc
class __$PromoPointCopyWithImpl<$Res>
    implements _$PromoPointCopyWith<$Res> {
  __$PromoPointCopyWithImpl(this._self, this._then);

  final _PromoPoint _self;
  final $Res Function(_PromoPoint) _then;

/// Create a copy of PromoPoint
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? photo = freezed,Object? redeemedPoints = null,}) {
  return _then(_PromoPoint(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,redeemedPoints: null == redeemedPoints ? _self.redeemedPoints : redeemedPoints // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PromoVouchersModel {

 List<PromoVoucher> get data;
/// Create a copy of PromoVouchersModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoVouchersModelCopyWith<PromoVouchersModel> get copyWith => _$PromoVouchersModelCopyWithImpl<PromoVouchersModel>(this as PromoVouchersModel, _$identity);

  /// Serializes this PromoVouchersModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoVouchersModel&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'PromoVouchersModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $PromoVouchersModelCopyWith<$Res>  {
  factory $PromoVouchersModelCopyWith(PromoVouchersModel value, $Res Function(PromoVouchersModel) _then) = _$PromoVouchersModelCopyWithImpl;
@useResult
$Res call({
 List<PromoVoucher> data
});




}
/// @nodoc
class _$PromoVouchersModelCopyWithImpl<$Res>
    implements $PromoVouchersModelCopyWith<$Res> {
  _$PromoVouchersModelCopyWithImpl(this._self, this._then);

  final PromoVouchersModel _self;
  final $Res Function(PromoVouchersModel) _then;

/// Create a copy of PromoVouchersModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<PromoVoucher>,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoVouchersModel].
extension PromoVouchersModelPatterns on PromoVouchersModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoVouchersModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoVouchersModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoVouchersModel value)  $default,){
final _that = this;
switch (_that) {
case _PromoVouchersModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoVouchersModel value)?  $default,){
final _that = this;
switch (_that) {
case _PromoVouchersModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PromoVoucher> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoVouchersModel() when $default != null:
return $default(_that.data);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PromoVoucher> data)  $default,) {final _that = this;
switch (_that) {
case _PromoVouchersModel():
return $default(_that.data);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PromoVoucher> data)?  $default,) {final _that = this;
switch (_that) {
case _PromoVouchersModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _PromoVouchersModel implements PromoVouchersModel {
  const _PromoVouchersModel({final  List<PromoVoucher> data = const []}): _data = data;
  factory _PromoVouchersModel.fromJson(Map<String, dynamic> json) => _$PromoVouchersModelFromJson(json);

 final  List<PromoVoucher> _data;
@override@JsonKey() List<PromoVoucher> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


/// Create a copy of PromoVouchersModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoVouchersModelCopyWith<_PromoVouchersModel> get copyWith => __$PromoVouchersModelCopyWithImpl<_PromoVouchersModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoVouchersModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoVouchersModel&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'PromoVouchersModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$PromoVouchersModelCopyWith<$Res> implements $PromoVouchersModelCopyWith<$Res> {
  factory _$PromoVouchersModelCopyWith(_PromoVouchersModel value, $Res Function(_PromoVouchersModel) _then) = __$PromoVouchersModelCopyWithImpl;
@override @useResult
$Res call({
 List<PromoVoucher> data
});




}
/// @nodoc
class __$PromoVouchersModelCopyWithImpl<$Res>
    implements _$PromoVouchersModelCopyWith<$Res> {
  __$PromoVouchersModelCopyWithImpl(this._self, this._then);

  final _PromoVouchersModel _self;
  final $Res Function(_PromoVouchersModel) _then;

/// Create a copy of PromoVouchersModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_PromoVouchersModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<PromoVoucher>,
  ));
}


}


/// @nodoc
mixin _$PromoVoucher {

 int get id; String get title; String get discountLabel;/// `yyyy-MM-dd`; null = no expiry.
 String? get expiryDate;
/// Create a copy of PromoVoucher
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoVoucherCopyWith<PromoVoucher> get copyWith => _$PromoVoucherCopyWithImpl<PromoVoucher>(this as PromoVoucher, _$identity);

  /// Serializes this PromoVoucher to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoVoucher&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.discountLabel, discountLabel) || other.discountLabel == discountLabel)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,discountLabel,expiryDate);

@override
String toString() {
  return 'PromoVoucher(id: $id, title: $title, discountLabel: $discountLabel, expiryDate: $expiryDate)';
}


}

/// @nodoc
abstract mixin class $PromoVoucherCopyWith<$Res>  {
  factory $PromoVoucherCopyWith(PromoVoucher value, $Res Function(PromoVoucher) _then) = _$PromoVoucherCopyWithImpl;
@useResult
$Res call({
 int id, String title, String discountLabel, String? expiryDate
});




}
/// @nodoc
class _$PromoVoucherCopyWithImpl<$Res>
    implements $PromoVoucherCopyWith<$Res> {
  _$PromoVoucherCopyWithImpl(this._self, this._then);

  final PromoVoucher _self;
  final $Res Function(PromoVoucher) _then;

/// Create a copy of PromoVoucher
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? discountLabel = null,Object? expiryDate = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,discountLabel: null == discountLabel ? _self.discountLabel : discountLabel // ignore: cast_nullable_to_non_nullable
as String,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoVoucher].
extension PromoVoucherPatterns on PromoVoucher {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoVoucher value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoVoucher() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoVoucher value)  $default,){
final _that = this;
switch (_that) {
case _PromoVoucher():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoVoucher value)?  $default,){
final _that = this;
switch (_that) {
case _PromoVoucher() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String title,  String discountLabel,  String? expiryDate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoVoucher() when $default != null:
return $default(_that.id,_that.title,_that.discountLabel,_that.expiryDate);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String title,  String discountLabel,  String? expiryDate)  $default,) {final _that = this;
switch (_that) {
case _PromoVoucher():
return $default(_that.id,_that.title,_that.discountLabel,_that.expiryDate);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String title,  String discountLabel,  String? expiryDate)?  $default,) {final _that = this;
switch (_that) {
case _PromoVoucher() when $default != null:
return $default(_that.id,_that.title,_that.discountLabel,_that.expiryDate);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _PromoVoucher implements PromoVoucher {
  const _PromoVoucher({this.id = 0, this.title = '', this.discountLabel = '', this.expiryDate});
  factory _PromoVoucher.fromJson(Map<String, dynamic> json) => _$PromoVoucherFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String title;
@override@JsonKey() final  String discountLabel;
/// `yyyy-MM-dd`; null = no expiry.
@override final  String? expiryDate;

/// Create a copy of PromoVoucher
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoVoucherCopyWith<_PromoVoucher> get copyWith => __$PromoVoucherCopyWithImpl<_PromoVoucher>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoVoucherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoVoucher&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.discountLabel, discountLabel) || other.discountLabel == discountLabel)&&(identical(other.expiryDate, expiryDate) || other.expiryDate == expiryDate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,title,discountLabel,expiryDate);

@override
String toString() {
  return 'PromoVoucher(id: $id, title: $title, discountLabel: $discountLabel, expiryDate: $expiryDate)';
}


}

/// @nodoc
abstract mixin class _$PromoVoucherCopyWith<$Res> implements $PromoVoucherCopyWith<$Res> {
  factory _$PromoVoucherCopyWith(_PromoVoucher value, $Res Function(_PromoVoucher) _then) = __$PromoVoucherCopyWithImpl;
@override @useResult
$Res call({
 int id, String title, String discountLabel, String? expiryDate
});




}
/// @nodoc
class __$PromoVoucherCopyWithImpl<$Res>
    implements _$PromoVoucherCopyWith<$Res> {
  __$PromoVoucherCopyWithImpl(this._self, this._then);

  final _PromoVoucher _self;
  final $Res Function(_PromoVoucher) _then;

/// Create a copy of PromoVoucher
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? discountLabel = null,Object? expiryDate = freezed,}) {
  return _then(_PromoVoucher(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,discountLabel: null == discountLabel ? _self.discountLabel : discountLabel // ignore: cast_nullable_to_non_nullable
as String,expiryDate: freezed == expiryDate ? _self.expiryDate : expiryDate // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
