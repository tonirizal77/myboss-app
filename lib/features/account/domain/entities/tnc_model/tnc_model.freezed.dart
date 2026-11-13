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

 List<TncItemModel> get data;
/// Create a copy of TncModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TncModelCopyWith<TncModel> get copyWith => _$TncModelCopyWithImpl<TncModel>(this as TncModel, _$identity);

  /// Serializes this TncModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TncModel&&const DeepCollectionEquality().equals(other.data, data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'TncModel(data: $data)';
}


}

/// @nodoc
abstract mixin class $TncModelCopyWith<$Res>  {
  factory $TncModelCopyWith(TncModel value, $Res Function(TncModel) _then) = _$TncModelCopyWithImpl;
@useResult
$Res call({
 List<TncItemModel> data
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
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<TncItemModel>,
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TncItemModel> data)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TncModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TncItemModel> data)  $default,) {final _that = this;
switch (_that) {
case _TncModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TncItemModel> data)?  $default,) {final _that = this;
switch (_that) {
case _TncModel() when $default != null:
return $default(_that.data);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _TncModel extends TncModel {
  const _TncModel({final  List<TncItemModel> data = const []}): _data = data,super._();
  factory _TncModel.fromJson(Map<String, dynamic> json) => _$TncModelFromJson(json);

 final  List<TncItemModel> _data;
@override@JsonKey() List<TncItemModel> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}


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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TncModel&&const DeepCollectionEquality().equals(other._data, _data));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data));

@override
String toString() {
  return 'TncModel(data: $data)';
}


}

/// @nodoc
abstract mixin class _$TncModelCopyWith<$Res> implements $TncModelCopyWith<$Res> {
  factory _$TncModelCopyWith(_TncModel value, $Res Function(_TncModel) _then) = __$TncModelCopyWithImpl;
@override @useResult
$Res call({
 List<TncItemModel> data
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
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(_TncModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<TncItemModel>,
  ));
}


}


/// @nodoc
mixin _$TncItemModel {

 int get id; int get storeId;/// `TOU` terms of use, `PPO` privacy policy, `RFP` refund policy.
 String get sitenavLinkTypeId; String get title;/// HTML.
 String get description; bool get published;/// `A` = active.
 String get status;
/// Create a copy of TncItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TncItemModelCopyWith<TncItemModel> get copyWith => _$TncItemModelCopyWithImpl<TncItemModel>(this as TncItemModel, _$identity);

  /// Serializes this TncItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TncItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.sitenavLinkTypeId, sitenavLinkTypeId) || other.sitenavLinkTypeId == sitenavLinkTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.published, published) || other.published == published)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,sitenavLinkTypeId,title,description,published,status);

@override
String toString() {
  return 'TncItemModel(id: $id, storeId: $storeId, sitenavLinkTypeId: $sitenavLinkTypeId, title: $title, description: $description, published: $published, status: $status)';
}


}

/// @nodoc
abstract mixin class $TncItemModelCopyWith<$Res>  {
  factory $TncItemModelCopyWith(TncItemModel value, $Res Function(TncItemModel) _then) = _$TncItemModelCopyWithImpl;
@useResult
$Res call({
 int id, int storeId, String sitenavLinkTypeId, String title, String description, bool published, String status
});




}
/// @nodoc
class _$TncItemModelCopyWithImpl<$Res>
    implements $TncItemModelCopyWith<$Res> {
  _$TncItemModelCopyWithImpl(this._self, this._then);

  final TncItemModel _self;
  final $Res Function(TncItemModel) _then;

/// Create a copy of TncItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? storeId = null,Object? sitenavLinkTypeId = null,Object? title = null,Object? description = null,Object? published = null,Object? status = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,sitenavLinkTypeId: null == sitenavLinkTypeId ? _self.sitenavLinkTypeId : sitenavLinkTypeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TncItemModel].
extension TncItemModelPatterns on TncItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TncItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TncItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TncItemModel value)  $default,){
final _that = this;
switch (_that) {
case _TncItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TncItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _TncItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description,  bool published,  String status)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TncItemModel() when $default != null:
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description,_that.published,_that.status);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description,  bool published,  String status)  $default,) {final _that = this;
switch (_that) {
case _TncItemModel():
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description,_that.published,_that.status);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  int storeId,  String sitenavLinkTypeId,  String title,  String description,  bool published,  String status)?  $default,) {final _that = this;
switch (_that) {
case _TncItemModel() when $default != null:
return $default(_that.id,_that.storeId,_that.sitenavLinkTypeId,_that.title,_that.description,_that.published,_that.status);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TncItemModel extends TncItemModel {
  const _TncItemModel({this.id = 0, this.storeId = 0, this.sitenavLinkTypeId = "", this.title = "", this.description = "", this.published = true, this.status = "A"}): super._();
  factory _TncItemModel.fromJson(Map<String, dynamic> json) => _$TncItemModelFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  int storeId;
/// `TOU` terms of use, `PPO` privacy policy, `RFP` refund policy.
@override@JsonKey() final  String sitenavLinkTypeId;
@override@JsonKey() final  String title;
/// HTML.
@override@JsonKey() final  String description;
@override@JsonKey() final  bool published;
/// `A` = active.
@override@JsonKey() final  String status;

/// Create a copy of TncItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TncItemModelCopyWith<_TncItemModel> get copyWith => __$TncItemModelCopyWithImpl<_TncItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TncItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TncItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.sitenavLinkTypeId, sitenavLinkTypeId) || other.sitenavLinkTypeId == sitenavLinkTypeId)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.published, published) || other.published == published)&&(identical(other.status, status) || other.status == status));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,storeId,sitenavLinkTypeId,title,description,published,status);

@override
String toString() {
  return 'TncItemModel(id: $id, storeId: $storeId, sitenavLinkTypeId: $sitenavLinkTypeId, title: $title, description: $description, published: $published, status: $status)';
}


}

/// @nodoc
abstract mixin class _$TncItemModelCopyWith<$Res> implements $TncItemModelCopyWith<$Res> {
  factory _$TncItemModelCopyWith(_TncItemModel value, $Res Function(_TncItemModel) _then) = __$TncItemModelCopyWithImpl;
@override @useResult
$Res call({
 int id, int storeId, String sitenavLinkTypeId, String title, String description, bool published, String status
});




}
/// @nodoc
class __$TncItemModelCopyWithImpl<$Res>
    implements _$TncItemModelCopyWith<$Res> {
  __$TncItemModelCopyWithImpl(this._self, this._then);

  final _TncItemModel _self;
  final $Res Function(_TncItemModel) _then;

/// Create a copy of TncItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? storeId = null,Object? sitenavLinkTypeId = null,Object? title = null,Object? description = null,Object? published = null,Object? status = null,}) {
  return _then(_TncItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,sitenavLinkTypeId: null == sitenavLinkTypeId ? _self.sitenavLinkTypeId : sitenavLinkTypeId // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as bool,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
