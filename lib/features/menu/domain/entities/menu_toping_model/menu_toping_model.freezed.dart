// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'menu_toping_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuTopingModel {

 List<DataToping> get data; Meta get meta; int get status; int get error;
/// Create a copy of MenuTopingModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuTopingModelCopyWith<MenuTopingModel> get copyWith => _$MenuTopingModelCopyWithImpl<MenuTopingModel>(this as MenuTopingModel, _$identity);

  /// Serializes this MenuTopingModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuTopingModel&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data),meta,status,error);

@override
String toString() {
  return 'MenuTopingModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class $MenuTopingModelCopyWith<$Res>  {
  factory $MenuTopingModelCopyWith(MenuTopingModel value, $Res Function(MenuTopingModel) _then) = _$MenuTopingModelCopyWithImpl;
@useResult
$Res call({
 List<DataToping> data, Meta meta, int status, int error
});


$MetaCopyWith<$Res> get meta;

}
/// @nodoc
class _$MenuTopingModelCopyWithImpl<$Res>
    implements $MenuTopingModelCopyWith<$Res> {
  _$MenuTopingModelCopyWithImpl(this._self, this._then);

  final MenuTopingModel _self;
  final $Res Function(MenuTopingModel) _then;

/// Create a copy of MenuTopingModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_self.copyWith(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as List<DataToping>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}
/// Create a copy of MenuTopingModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [MenuTopingModel].
extension MenuTopingModelPatterns on MenuTopingModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuTopingModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuTopingModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuTopingModel value)  $default,){
final _that = this;
switch (_that) {
case _MenuTopingModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuTopingModel value)?  $default,){
final _that = this;
switch (_that) {
case _MenuTopingModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<DataToping> data,  Meta meta,  int status,  int error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuTopingModel() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<DataToping> data,  Meta meta,  int status,  int error)  $default,) {final _that = this;
switch (_that) {
case _MenuTopingModel():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<DataToping> data,  Meta meta,  int status,  int error)?  $default,) {final _that = this;
switch (_that) {
case _MenuTopingModel() when $default != null:
return $default(_that.data,_that.meta,_that.status,_that.error);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _MenuTopingModel implements MenuTopingModel {
  const _MenuTopingModel({final  List<DataToping> data = const [], this.meta = const Meta(), this.status = 0, this.error = 0}): _data = data;
  factory _MenuTopingModel.fromJson(Map<String, dynamic> json) => _$MenuTopingModelFromJson(json);

 final  List<DataToping> _data;
@override@JsonKey() List<DataToping> get data {
  if (_data is EqualUnmodifiableListView) return _data;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_data);
}

@override@JsonKey() final  Meta meta;
@override@JsonKey() final  int status;
@override@JsonKey() final  int error;

/// Create a copy of MenuTopingModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuTopingModelCopyWith<_MenuTopingModel> get copyWith => __$MenuTopingModelCopyWithImpl<_MenuTopingModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuTopingModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuTopingModel&&const DeepCollectionEquality().equals(other._data, _data)&&(identical(other.meta, meta) || other.meta == meta)&&(identical(other.status, status) || other.status == status)&&(identical(other.error, error) || other.error == error));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_data),meta,status,error);

@override
String toString() {
  return 'MenuTopingModel(data: $data, meta: $meta, status: $status, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MenuTopingModelCopyWith<$Res> implements $MenuTopingModelCopyWith<$Res> {
  factory _$MenuTopingModelCopyWith(_MenuTopingModel value, $Res Function(_MenuTopingModel) _then) = __$MenuTopingModelCopyWithImpl;
@override @useResult
$Res call({
 List<DataToping> data, Meta meta, int status, int error
});


@override $MetaCopyWith<$Res> get meta;

}
/// @nodoc
class __$MenuTopingModelCopyWithImpl<$Res>
    implements _$MenuTopingModelCopyWith<$Res> {
  __$MenuTopingModelCopyWithImpl(this._self, this._then);

  final _MenuTopingModel _self;
  final $Res Function(_MenuTopingModel) _then;

/// Create a copy of MenuTopingModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? data = null,Object? meta = null,Object? status = null,Object? error = null,}) {
  return _then(_MenuTopingModel(
data: null == data ? _self._data : data // ignore: cast_nullable_to_non_nullable
as List<DataToping>,meta: null == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as Meta,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as int,error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

/// Create a copy of MenuTopingModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MetaCopyWith<$Res> get meta {
  
  return $MetaCopyWith<$Res>(_self.meta, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// @nodoc
mixin _$DataToping {

 int get id; String get name; int get storeid; String get status; List<ProductsModel> get products;
/// Create a copy of DataToping
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DataTopingCopyWith<DataToping> get copyWith => _$DataTopingCopyWithImpl<DataToping>(this as DataToping, _$identity);

  /// Serializes this DataToping to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DataToping&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.storeid, storeid) || other.storeid == storeid)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.products, products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,storeid,status,const DeepCollectionEquality().hash(products));

@override
String toString() {
  return 'DataToping(id: $id, name: $name, storeid: $storeid, status: $status, products: $products)';
}


}

/// @nodoc
abstract mixin class $DataTopingCopyWith<$Res>  {
  factory $DataTopingCopyWith(DataToping value, $Res Function(DataToping) _then) = _$DataTopingCopyWithImpl;
@useResult
$Res call({
 int id, String name, int storeid, String status, List<ProductsModel> products
});




}
/// @nodoc
class _$DataTopingCopyWithImpl<$Res>
    implements $DataTopingCopyWith<$Res> {
  _$DataTopingCopyWithImpl(this._self, this._then);

  final DataToping _self;
  final $Res Function(DataToping) _then;

/// Create a copy of DataToping
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? storeid = null,Object? status = null,Object? products = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,storeid: null == storeid ? _self.storeid : storeid // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self.products : products // ignore: cast_nullable_to_non_nullable
as List<ProductsModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [DataToping].
extension DataTopingPatterns on DataToping {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DataToping value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DataToping() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DataToping value)  $default,){
final _that = this;
switch (_that) {
case _DataToping():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DataToping value)?  $default,){
final _that = this;
switch (_that) {
case _DataToping() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int storeid,  String status,  List<ProductsModel> products)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DataToping() when $default != null:
return $default(_that.id,_that.name,_that.storeid,_that.status,_that.products);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int storeid,  String status,  List<ProductsModel> products)  $default,) {final _that = this;
switch (_that) {
case _DataToping():
return $default(_that.id,_that.name,_that.storeid,_that.status,_that.products);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int storeid,  String status,  List<ProductsModel> products)?  $default,) {final _that = this;
switch (_that) {
case _DataToping() when $default != null:
return $default(_that.id,_that.name,_that.storeid,_that.status,_that.products);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DataToping implements DataToping {
  const _DataToping({this.id = 0, this.name = "", this.storeid = 0, this.status = "", final  List<ProductsModel> products = const []}): _products = products;
  factory _DataToping.fromJson(Map<String, dynamic> json) => _$DataTopingFromJson(json);

@override@JsonKey() final  int id;
@override@JsonKey() final  String name;
@override@JsonKey() final  int storeid;
@override@JsonKey() final  String status;
 final  List<ProductsModel> _products;
@override@JsonKey() List<ProductsModel> get products {
  if (_products is EqualUnmodifiableListView) return _products;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_products);
}


/// Create a copy of DataToping
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DataTopingCopyWith<_DataToping> get copyWith => __$DataTopingCopyWithImpl<_DataToping>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DataTopingToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DataToping&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.storeid, storeid) || other.storeid == storeid)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._products, _products));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,storeid,status,const DeepCollectionEquality().hash(_products));

@override
String toString() {
  return 'DataToping(id: $id, name: $name, storeid: $storeid, status: $status, products: $products)';
}


}

/// @nodoc
abstract mixin class _$DataTopingCopyWith<$Res> implements $DataTopingCopyWith<$Res> {
  factory _$DataTopingCopyWith(_DataToping value, $Res Function(_DataToping) _then) = __$DataTopingCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int storeid, String status, List<ProductsModel> products
});




}
/// @nodoc
class __$DataTopingCopyWithImpl<$Res>
    implements _$DataTopingCopyWith<$Res> {
  __$DataTopingCopyWithImpl(this._self, this._then);

  final _DataToping _self;
  final $Res Function(_DataToping) _then;

/// Create a copy of DataToping
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? storeid = null,Object? status = null,Object? products = null,}) {
  return _then(_DataToping(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,storeid: null == storeid ? _self.storeid : storeid // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,products: null == products ? _self._products : products // ignore: cast_nullable_to_non_nullable
as List<ProductsModel>,
  ));
}


}

// dart format on
