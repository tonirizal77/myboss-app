// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specific_page_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SpecificPageModel {

 int get id; int get storeId; String get title; String get sitenavLinkTypeId; String get description; String get metaDescription; String get metaKeywords; List<String> get otherlinks; List<dynamic> get photos;
/// Create a copy of SpecificPageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecificPageModelCopyWith<SpecificPageModel> get copyWith => _$SpecificPageModelCopyWithImpl<SpecificPageModel>(this as SpecificPageModel, _$identity);

  /// Serializes this SpecificPageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecificPageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.sitenavLinkTypeId, sitenavLinkTypeId) || other.sitenavLinkTypeId == sitenavLinkTypeId)&&(identical(other.description, description) || other.description == description)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaKeywords, metaKeywords) || other.metaKeywords == metaKeywords)&&const DeepCollectionEquality().equals(other.otherlinks, otherlinks)&&const DeepCollectionEquality().equals(other.photos, photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,title,sitenavLinkTypeId,description,metaDescription,metaKeywords,const DeepCollectionEquality().hash(otherlinks),const DeepCollectionEquality().hash(photos));

@override
String toString() {
  return 'SpecificPageModel(id: $id, storeId: $storeId, title: $title, sitenavLinkTypeId: $sitenavLinkTypeId, description: $description, metaDescription: $metaDescription, metaKeywords: $metaKeywords, otherlinks: $otherlinks, photos: $photos)';
}


}

/// @nodoc
abstract mixin class $SpecificPageModelCopyWith<$Res>  {
  factory $SpecificPageModelCopyWith(SpecificPageModel value, $Res Function(SpecificPageModel) _then) = _$SpecificPageModelCopyWithImpl;
@useResult
$Res call({
 int id, int storeId, String title, String sitenavLinkTypeId, String description, String metaDescription, String metaKeywords, List<String> otherlinks, List<dynamic> photos
});




}
/// @nodoc
class _$SpecificPageModelCopyWithImpl<$Res>
    implements $SpecificPageModelCopyWith<$Res> {
  _$SpecificPageModelCopyWithImpl(this._self, this._then);

  final SpecificPageModel _self;
  final $Res Function(SpecificPageModel) _then;

/// Create a copy of SpecificPageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? title = null,Object? sitenavLinkTypeId = null,Object? description = null,Object? metaDescription = null,Object? metaKeywords = null,Object? otherlinks = null,Object? photos = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sitenavLinkTypeId: null == sitenavLinkTypeId ? _self.sitenavLinkTypeId : sitenavLinkTypeId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,metaDescription: null == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String,metaKeywords: null == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String,otherlinks: null == otherlinks ? _self.otherlinks : otherlinks // ignore: cast_nullable_to_non_nullable
as List<String>,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}

}


/// Adds pattern-matching-related methods to [SpecificPageModel].
extension SpecificPageModelPatterns on SpecificPageModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpecificPageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpecificPageModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpecificPageModel value)  $default,){
final _that = this;
switch (_that) {
case _SpecificPageModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpecificPageModel value)?  $default,){
final _that = this;
switch (_that) {
case _SpecificPageModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int storeId,  String title,  String sitenavLinkTypeId,  String description,  String metaDescription,  String metaKeywords,  List<String> otherlinks,  List<dynamic> photos)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpecificPageModel() when $default != null:
return $default(_that.id,_that.storeId,_that.title,_that.sitenavLinkTypeId,_that.description,_that.metaDescription,_that.metaKeywords,_that.otherlinks,_that.photos);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int storeId,  String title,  String sitenavLinkTypeId,  String description,  String metaDescription,  String metaKeywords,  List<String> otherlinks,  List<dynamic> photos)  $default,) {final _that = this;
switch (_that) {
case _SpecificPageModel():
return $default(_that.id,_that.storeId,_that.title,_that.sitenavLinkTypeId,_that.description,_that.metaDescription,_that.metaKeywords,_that.otherlinks,_that.photos);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int storeId,  String title,  String sitenavLinkTypeId,  String description,  String metaDescription,  String metaKeywords,  List<String> otherlinks,  List<dynamic> photos)?  $default,) {final _that = this;
switch (_that) {
case _SpecificPageModel() when $default != null:
return $default(_that.id,_that.storeId,_that.title,_that.sitenavLinkTypeId,_that.description,_that.metaDescription,_that.metaKeywords,_that.otherlinks,_that.photos);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _SpecificPageModel implements SpecificPageModel {
  const _SpecificPageModel({this.id = 0, this.storeId = 0, this.title = '', this.sitenavLinkTypeId = '', this.description = '', this.metaDescription = '', this.metaKeywords = '', final  List<String> otherlinks = const [''], final  List<dynamic> photos = const []}): _otherlinks = otherlinks,_photos = photos;
  factory _SpecificPageModel.fromJson(Map<String, dynamic> json) => _$SpecificPageModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String sitenavLinkTypeId;
@override@JsonKey() final  String description;
@override@JsonKey() final  String metaDescription;
@override@JsonKey() final  String metaKeywords;
 final  List<String> _otherlinks;
@override@JsonKey() List<String> get otherlinks {
  if (_otherlinks is EqualUnmodifiableListView) return _otherlinks;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_otherlinks);
}

 final  List<dynamic> _photos;
@override@JsonKey() List<dynamic> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}


/// Create a copy of SpecificPageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecificPageModelCopyWith<_SpecificPageModel> get copyWith => __$SpecificPageModelCopyWithImpl<_SpecificPageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SpecificPageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecificPageModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.sitenavLinkTypeId, sitenavLinkTypeId) || other.sitenavLinkTypeId == sitenavLinkTypeId)&&(identical(other.description, description) || other.description == description)&&(identical(other.metaDescription, metaDescription) || other.metaDescription == metaDescription)&&(identical(other.metaKeywords, metaKeywords) || other.metaKeywords == metaKeywords)&&const DeepCollectionEquality().equals(other._otherlinks, _otherlinks)&&const DeepCollectionEquality().equals(other._photos, _photos));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,title,sitenavLinkTypeId,description,metaDescription,metaKeywords,const DeepCollectionEquality().hash(_otherlinks),const DeepCollectionEquality().hash(_photos));

@override
String toString() {
  return 'SpecificPageModel(id: $id, storeId: $storeId, title: $title, sitenavLinkTypeId: $sitenavLinkTypeId, description: $description, metaDescription: $metaDescription, metaKeywords: $metaKeywords, otherlinks: $otherlinks, photos: $photos)';
}


}

/// @nodoc
abstract mixin class _$SpecificPageModelCopyWith<$Res> implements $SpecificPageModelCopyWith<$Res> {
  factory _$SpecificPageModelCopyWith(_SpecificPageModel value, $Res Function(_SpecificPageModel) _then) = __$SpecificPageModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int storeId, String title, String sitenavLinkTypeId, String description, String metaDescription, String metaKeywords, List<String> otherlinks, List<dynamic> photos
});




}
/// @nodoc
class __$SpecificPageModelCopyWithImpl<$Res>
    implements _$SpecificPageModelCopyWith<$Res> {
  __$SpecificPageModelCopyWithImpl(this._self, this._then);

  final _SpecificPageModel _self;
  final $Res Function(_SpecificPageModel) _then;

/// Create a copy of SpecificPageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? title = null,Object? sitenavLinkTypeId = null,Object? description = null,Object? metaDescription = null,Object? metaKeywords = null,Object? otherlinks = null,Object? photos = null,}) {
  return _then(_SpecificPageModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,sitenavLinkTypeId: null == sitenavLinkTypeId ? _self.sitenavLinkTypeId : sitenavLinkTypeId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,metaDescription: null == metaDescription ? _self.metaDescription : metaDescription // ignore: cast_nullable_to_non_nullable
as String,metaKeywords: null == metaKeywords ? _self.metaKeywords : metaKeywords // ignore: cast_nullable_to_non_nullable
as String,otherlinks: null == otherlinks ? _self._otherlinks : otherlinks // ignore: cast_nullable_to_non_nullable
as List<String>,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<dynamic>,
  ));
}


}

// dart format on
