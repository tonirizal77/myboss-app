// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_us_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContactUsModel {

 int get id; int get storeId; String get title; String get links;
/// Create a copy of ContactUsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactUsModelCopyWith<ContactUsModel> get copyWith => _$ContactUsModelCopyWithImpl<ContactUsModel>(this as ContactUsModel, _$identity);

  /// Serializes this ContactUsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactUsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,title,links);

@override
String toString() {
  return 'ContactUsModel(id: $id, storeId: $storeId, title: $title, links: $links)';
}


}

/// @nodoc
abstract mixin class $ContactUsModelCopyWith<$Res>  {
  factory $ContactUsModelCopyWith(ContactUsModel value, $Res Function(ContactUsModel) _then) = _$ContactUsModelCopyWithImpl;
@useResult
$Res call({
 int id, int storeId, String title, String links
});




}
/// @nodoc
class _$ContactUsModelCopyWithImpl<$Res>
    implements $ContactUsModelCopyWith<$Res> {
  _$ContactUsModelCopyWithImpl(this._self, this._then);

  final ContactUsModel _self;
  final $Res Function(ContactUsModel) _then;

/// Create a copy of ContactUsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? title = null,Object? links = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ContactUsModel].
extension ContactUsModelPatterns on ContactUsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactUsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactUsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactUsModel value)  $default,){
final _that = this;
switch (_that) {
case _ContactUsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactUsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ContactUsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int storeId,  String title,  String links)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactUsModel() when $default != null:
return $default(_that.id,_that.storeId,_that.title,_that.links);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int storeId,  String title,  String links)  $default,) {final _that = this;
switch (_that) {
case _ContactUsModel():
return $default(_that.id,_that.storeId,_that.title,_that.links);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int storeId,  String title,  String links)?  $default,) {final _that = this;
switch (_that) {
case _ContactUsModel() when $default != null:
return $default(_that.id,_that.storeId,_that.title,_that.links);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ContactUsModel implements ContactUsModel {
  const _ContactUsModel({this.id = 0, this.storeId = 0, this.title = "", this.links = ""});
  factory _ContactUsModel.fromJson(Map<String, dynamic> json) => _$ContactUsModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String links;

/// Create a copy of ContactUsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactUsModelCopyWith<_ContactUsModel> get copyWith => __$ContactUsModelCopyWithImpl<_ContactUsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactUsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactUsModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.links, links) || other.links == links));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,title,links);

@override
String toString() {
  return 'ContactUsModel(id: $id, storeId: $storeId, title: $title, links: $links)';
}


}

/// @nodoc
abstract mixin class _$ContactUsModelCopyWith<$Res> implements $ContactUsModelCopyWith<$Res> {
  factory _$ContactUsModelCopyWith(_ContactUsModel value, $Res Function(_ContactUsModel) _then) = __$ContactUsModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int storeId, String title, String links
});




}
/// @nodoc
class __$ContactUsModelCopyWithImpl<$Res>
    implements _$ContactUsModelCopyWith<$Res> {
  __$ContactUsModelCopyWithImpl(this._self, this._then);

  final _ContactUsModel _self;
  final $Res Function(_ContactUsModel) _then;

/// Create a copy of ContactUsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? title = null,Object? links = null,}) {
  return _then(_ContactUsModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,links: null == links ? _self.links : links // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
