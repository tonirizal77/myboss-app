// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_edit_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileEditModel {

 AvatarsModel get avatar; String get name;
/// Create a copy of ProfileEditModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileEditModelCopyWith<ProfileEditModel> get copyWith => _$ProfileEditModelCopyWithImpl<ProfileEditModel>(this as ProfileEditModel, _$identity);

  /// Serializes this ProfileEditModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileEditModel&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,avatar,name);

@override
String toString() {
  return 'ProfileEditModel(avatar: $avatar, name: $name)';
}


}

/// @nodoc
abstract mixin class $ProfileEditModelCopyWith<$Res>  {
  factory $ProfileEditModelCopyWith(ProfileEditModel value, $Res Function(ProfileEditModel) _then) = _$ProfileEditModelCopyWithImpl;
@useResult
$Res call({
 AvatarsModel avatar, String name
});


$AvatarsModelCopyWith<$Res> get avatar;

}
/// @nodoc
class _$ProfileEditModelCopyWithImpl<$Res>
    implements $ProfileEditModelCopyWith<$Res> {
  _$ProfileEditModelCopyWithImpl(this._self, this._then);

  final ProfileEditModel _self;
  final $Res Function(ProfileEditModel) _then;

/// Create a copy of ProfileEditModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? avatar = null,Object? name = null,}) {
  return _then(_self.copyWith(
avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as AvatarsModel,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of ProfileEditModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarsModelCopyWith<$Res> get avatar {
  
  return $AvatarsModelCopyWith<$Res>(_self.avatar, (value) {
    return _then(_self.copyWith(avatar: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileEditModel].
extension ProfileEditModelPatterns on ProfileEditModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileEditModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileEditModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileEditModel value)  $default,){
final _that = this;
switch (_that) {
case _ProfileEditModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileEditModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileEditModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AvatarsModel avatar,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileEditModel() when $default != null:
return $default(_that.avatar,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AvatarsModel avatar,  String name)  $default,) {final _that = this;
switch (_that) {
case _ProfileEditModel():
return $default(_that.avatar,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AvatarsModel avatar,  String name)?  $default,) {final _that = this;
switch (_that) {
case _ProfileEditModel() when $default != null:
return $default(_that.avatar,_that.name);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ProfileEditModel implements ProfileEditModel {
  const _ProfileEditModel({this.avatar = const AvatarsModel(), this.name = ""});
  factory _ProfileEditModel.fromJson(Map<String, dynamic> json) => _$ProfileEditModelFromJson(json);

@override@JsonKey() final  AvatarsModel avatar;
@override@JsonKey() final  String name;

/// Create a copy of ProfileEditModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileEditModelCopyWith<_ProfileEditModel> get copyWith => __$ProfileEditModelCopyWithImpl<_ProfileEditModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileEditModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileEditModel&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,avatar,name);

@override
String toString() {
  return 'ProfileEditModel(avatar: $avatar, name: $name)';
}


}

/// @nodoc
abstract mixin class _$ProfileEditModelCopyWith<$Res> implements $ProfileEditModelCopyWith<$Res> {
  factory _$ProfileEditModelCopyWith(_ProfileEditModel value, $Res Function(_ProfileEditModel) _then) = __$ProfileEditModelCopyWithImpl;
@override @useResult
$Res call({
 AvatarsModel avatar, String name
});


@override $AvatarsModelCopyWith<$Res> get avatar;

}
/// @nodoc
class __$ProfileEditModelCopyWithImpl<$Res>
    implements _$ProfileEditModelCopyWith<$Res> {
  __$ProfileEditModelCopyWithImpl(this._self, this._then);

  final _ProfileEditModel _self;
  final $Res Function(_ProfileEditModel) _then;

/// Create a copy of ProfileEditModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? avatar = null,Object? name = null,}) {
  return _then(_ProfileEditModel(
avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as AvatarsModel,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of ProfileEditModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AvatarsModelCopyWith<$Res> get avatar {
  
  return $AvatarsModelCopyWith<$Res>(_self.avatar, (value) {
    return _then(_self.copyWith(avatar: value));
  });
}
}

// dart format on
