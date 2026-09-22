// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'about_us_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AboutUsModel {

 int get id; int get storeId; String get sitenavLinkTypeId; String get title; String get description; dynamic get otherlinks; List<Photos> get photos;
/// Create a copy of AboutUsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AboutUsModelCopyWith<AboutUsModel> get copyWith => _$AboutUsModelCopyWithImpl<AboutUsModel>(this as AboutUsModel, _$identity);

  /// Serializes this AboutUsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AboutUsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.sitenavLinkTypeId, sitenavLinkTypeId) || other.sitenavLinkTypeId == sitenavLinkTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.otherlinks, otherlinks)&&const DeepCollectionEquality().equals(other.photos, photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,sitenavLinkTypeId,title,description,const DeepCollectionEquality().hash(otherlinks),const DeepCollectionEquality().hash(photos));

@override
String toString() {
  return 'AboutUsModel(id: $id, storeId: $storeId, sitenavLinkTypeId: $sitenavLinkTypeId, title: $title, description: $description, otherlinks: $otherlinks, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $AboutUsModelCopyWith<$Res>  {
  factory $AboutUsModelCopyWith(AboutUsModel value, $Res Function(AboutUsModel) _then) = _$AboutUsModelCopyWithImpl;
@useResult
$Res call({
 int id, int storeId, String sitenavLinkTypeId, String title, String description, dynamic otherlinks, List<Photos> photos
});




}
/// @nodoc
class _$AboutUsModelCopyWithImpl<$Res>
    implements $AboutUsModelCopyWith<$Res> {
  _$AboutUsModelCopyWithImpl(this._self, this._then);

  final AboutUsModel _self;
  final $Res Function(AboutUsModel) _then;

/// Create a copy of AboutUsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? sitenavLinkTypeId = null,Object? title = null,Object? description = null,Object? otherlinks = freezed,Object? photos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,sitenavLinkTypeId: null == sitenavLinkTypeId ? _self.sitenavLinkTypeId : sitenavLinkTypeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,otherlinks: freezed == otherlinks ? _self.otherlinks : otherlinks // ignore: cast_nullable_to_non_nullable
as dynamic,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photos>,
  ));
}

}


/// Adds pattern-matching-related methods to [AboutUsModel].
extension AboutUsModelPatterns on AboutUsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AboutUsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AboutUsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AboutUsModel value)  $default,){
final _that = this;
switch (_that) {
case _AboutUsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AboutUsModel value)?  $default,){
final _that = this;
switch (_that) {
case _AboutUsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description,  dynamic otherlinks,  List<Photos> photos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AboutUsModel() when $default != null:
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description,_that.otherlinks,_that.photos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description,  dynamic otherlinks,  List<Photos> photos)  $default,) {final _that = this;
switch (_that) {
case _AboutUsModel():
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description,_that.otherlinks,_that.photos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description,  dynamic otherlinks,  List<Photos> photos)?  $default,) {final _that = this;
switch (_that) {
case _AboutUsModel() when $default != null:
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description,_that.otherlinks,_that.photos);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _AboutUsModel implements AboutUsModel {
  const _AboutUsModel({this.id = 0, this.storeId = 0, this.sitenavLinkTypeId = "", this.title = "", this.description = "", this.otherlinks, final  List<Photos> photos = const []}): _photos = photos;
  factory _AboutUsModel.fromJson(Map<String, dynamic> json) => _$AboutUsModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  String sitenavLinkTypeId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;
@override final  dynamic otherlinks;
 final  List<Photos> _photos;
@override@JsonKey() List<Photos> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}


/// Create a copy of AboutUsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AboutUsModelCopyWith<_AboutUsModel> get copyWith => __$AboutUsModelCopyWithImpl<_AboutUsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AboutUsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AboutUsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.sitenavLinkTypeId, sitenavLinkTypeId) || other.sitenavLinkTypeId == sitenavLinkTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&const DeepCollectionEquality().equals(other.otherlinks, otherlinks)&&const DeepCollectionEquality().equals(other._photos, _photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,sitenavLinkTypeId,title,description,const DeepCollectionEquality().hash(otherlinks),const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'AboutUsModel(id: $id, storeId: $storeId, sitenavLinkTypeId: $sitenavLinkTypeId, title: $title, description: $description, otherlinks: $otherlinks, photos: $photos)';
}


}

/// @nodoc
abstract mixin class _$AboutUsModelCopyWith<$Res> implements $AboutUsModelCopyWith<$Res> {
  factory _$AboutUsModelCopyWith(_AboutUsModel value, $Res Function(_AboutUsModel) _then) = __$AboutUsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int storeId, String sitenavLinkTypeId, String title, String description, dynamic otherlinks, List<Photos> photos
});




}
/// @nodoc
class __$AboutUsModelCopyWithImpl<$Res>
    implements _$AboutUsModelCopyWith<$Res> {
  __$AboutUsModelCopyWithImpl(this._self, this._then);

  final _AboutUsModel _self;
  final $Res Function(_AboutUsModel) _then;

/// Create a copy of AboutUsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? sitenavLinkTypeId = null,Object? title = null,Object? description = null,Object? otherlinks = freezed,Object? photos = null,}) {
  return _then(_AboutUsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,sitenavLinkTypeId: null == sitenavLinkTypeId ? _self.sitenavLinkTypeId : sitenavLinkTypeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,otherlinks: freezed == otherlinks ? _self.otherlinks : otherlinks // ignore: cast_nullable_to_non_nullable
as dynamic,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<Photos>,
  ));
}


}


/// @nodoc
mixin _$Photos {

 int get width; int get height; int get viewOrder; String get title; String get status; String get filename;
/// Create a copy of Photos
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhotosCopyWith<Photos> get copyWith => _$PhotosCopyWithImpl<Photos>(this as Photos, _$identity);

  /// Serializes this Photos to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Photos&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.viewOrder, viewOrder) || other.viewOrder == viewOrder)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.filename, filename) || other.filename == filename));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,viewOrder,title,status,filename);

@override
String toString() {
  return 'Photos(width: $width, height: $height, viewOrder: $viewOrder, title: $title, status: $status, filename: $filename)';
}


}

/// @nodoc
abstract mixin class $PhotosCopyWith<$Res>  {
  factory $PhotosCopyWith(Photos value, $Res Function(Photos) _then) = _$PhotosCopyWithImpl;
@useResult
$Res call({
 int width, int height, int viewOrder, String title, String status, String filename
});




}
/// @nodoc
class _$PhotosCopyWithImpl<$Res>
    implements $PhotosCopyWith<$Res> {
  _$PhotosCopyWithImpl(this._self, this._then);

  final Photos _self;
  final $Res Function(Photos) _then;

/// Create a copy of Photos
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? width = null,Object? height = null,Object? viewOrder = null,Object? title = null,Object? status = null,Object? filename = null,}) {
  return _then(_self.copyWith(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,viewOrder: null == viewOrder ? _self.viewOrder : viewOrder // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Photos].
extension PhotosPatterns on Photos {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Photos value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Photos() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Photos value)  $default,){
final _that = this;
switch (_that) {
case _Photos():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Photos value)?  $default,){
final _that = this;
switch (_that) {
case _Photos() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int width,  int height,  int viewOrder,  String title,  String status,  String filename)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Photos() when $default != null:
return $default(_that.width,_that.height,_that.viewOrder,_that.title,_that.status,_that.filename);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int width,  int height,  int viewOrder,  String title,  String status,  String filename)  $default,) {final _that = this;
switch (_that) {
case _Photos():
return $default(_that.width,_that.height,_that.viewOrder,_that.title,_that.status,_that.filename);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int width,  int height,  int viewOrder,  String title,  String status,  String filename)?  $default,) {final _that = this;
switch (_that) {
case _Photos() when $default != null:
return $default(_that.width,_that.height,_that.viewOrder,_that.title,_that.status,_that.filename);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _Photos implements Photos {
  const _Photos({this.width = 0, this.height = 0, this.viewOrder = 0, this.title = "", this.status = "", this.filename = ""});
  factory _Photos.fromJson(Map<String, dynamic> json) => _$PhotosFromJson(json);

@override@JsonKey() final  int width;
@override@JsonKey() final  int height;
@override@JsonKey() final  int viewOrder;
@override@JsonKey() final  String title;
@override@JsonKey() final  String status;
@override@JsonKey() final  String filename;

/// Create a copy of Photos
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PhotosCopyWith<_Photos> get copyWith => __$PhotosCopyWithImpl<_Photos>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PhotosToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Photos&&(identical(other.width, width) || other.width == width)&&(identical(other.height, height) || other.height == height)&&(identical(other.viewOrder, viewOrder) || other.viewOrder == viewOrder)&&(identical(other.title, title) || other.title == title)&&(identical(other.status, status) || other.status == status)&&(identical(other.filename, filename) || other.filename == filename));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,width,height,viewOrder,title,status,filename);

@override
String toString() {
  return 'Photos(width: $width, height: $height, viewOrder: $viewOrder, title: $title, status: $status, filename: $filename)';
}


}

/// @nodoc
abstract mixin class _$PhotosCopyWith<$Res> implements $PhotosCopyWith<$Res> {
  factory _$PhotosCopyWith(_Photos value, $Res Function(_Photos) _then) = __$PhotosCopyWithImpl;
@override @useResult
$Res call({
 int width, int height, int viewOrder, String title, String status, String filename
});




}
/// @nodoc
class __$PhotosCopyWithImpl<$Res>
    implements _$PhotosCopyWith<$Res> {
  __$PhotosCopyWithImpl(this._self, this._then);

  final _Photos _self;
  final $Res Function(_Photos) _then;

/// Create a copy of Photos
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? width = null,Object? height = null,Object? viewOrder = null,Object? title = null,Object? status = null,Object? filename = null,}) {
  return _then(_Photos(
width: null == width ? _self.width : width // ignore: cast_nullable_to_non_nullable
as int,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,viewOrder: null == viewOrder ? _self.viewOrder : viewOrder // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,filename: null == filename ? _self.filename : filename // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
