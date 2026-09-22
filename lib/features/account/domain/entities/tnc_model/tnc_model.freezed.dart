// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tnc_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TncModel {

 int get id; int get storeId; String get sitenavLinkTypeId; String get title; String get description;
/// Create a copy of TncModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TncModelCopyWith<TncModel> get copyWith => _$TncModelCopyWithImpl<TncModel>(this as TncModel, _$identity);

  /// Serializes this TncModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TncModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.sitenavLinkTypeId, sitenavLinkTypeId) || other.sitenavLinkTypeId == sitenavLinkTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,sitenavLinkTypeId,title,description);

@override
String toString() {
  return 'TncModel(id: $id, storeId: $storeId, sitenavLinkTypeId: $sitenavLinkTypeId, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class $TncModelCopyWith<$Res>  {
  factory $TncModelCopyWith(TncModel value, $Res Function(TncModel) _then) = _$TncModelCopyWithImpl;
@useResult
$Res call({
 int id, int storeId, String sitenavLinkTypeId, String title, String description
});




}
/// @nodoc
class _$TncModelCopyWithImpl<$Res>
    implements $TncModelCopyWith<$Res> {
  _$TncModelCopyWithImpl(this._self, this._then);

  final TncModel _self;
  final $Res Function(TncModel) _then;

/// Create a copy of TncModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? sitenavLinkTypeId = null,Object? title = null,Object? description = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,sitenavLinkTypeId: null == sitenavLinkTypeId ? _self.sitenavLinkTypeId : sitenavLinkTypeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TncModel].
extension TncModelPatterns on TncModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TncModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TncModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TncModel value)  $default,){
final _that = this;
switch (_that) {
case _TncModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TncModel value)?  $default,){
final _that = this;
switch (_that) {
case _TncModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TncModel() when $default != null:
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description)  $default,) {final _that = this;
switch (_that) {
case _TncModel():
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description)?  $default,) {final _that = this;
switch (_that) {
case _TncModel() when $default != null:
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TncModel implements TncModel {
  const _TncModel({this.id = 0, this.storeId = 0, this.sitenavLinkTypeId = "", this.title = "", this.description = ""});
  factory _TncModel.fromJson(Map<String, dynamic> json) => _$TncModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  String sitenavLinkTypeId;
@override@JsonKey() final  String title;
@override@JsonKey() final  String description;

/// Create a copy of TncModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TncModelCopyWith<_TncModel> get copyWith => __$TncModelCopyWithImpl<_TncModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TncModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TncModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.sitenavLinkTypeId, sitenavLinkTypeId) || other.sitenavLinkTypeId == sitenavLinkTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,sitenavLinkTypeId,title,description);

@override
String toString() {
  return 'TncModel(id: $id, storeId: $storeId, sitenavLinkTypeId: $sitenavLinkTypeId, title: $title, description: $description)';
}


}

/// @nodoc
abstract mixin class _$TncModelCopyWith<$Res> implements $TncModelCopyWith<$Res> {
  factory _$TncModelCopyWith(_TncModel value, $Res Function(_TncModel) _then) = __$TncModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int storeId, String sitenavLinkTypeId, String title, String description
});




}
/// @nodoc
class __$TncModelCopyWithImpl<$Res>
    implements _$TncModelCopyWith<$Res> {
  __$TncModelCopyWithImpl(this._self, this._then);

  final _TncModel _self;
  final $Res Function(_TncModel) _then;

/// Create a copy of TncModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? sitenavLinkTypeId = null,Object? title = null,Object? description = null,}) {
  return _then(_TncModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,sitenavLinkTypeId: null == sitenavLinkTypeId ? _self.sitenavLinkTypeId : sitenavLinkTypeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
