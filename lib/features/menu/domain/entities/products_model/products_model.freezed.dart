// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'products_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProductsModel {

 String get barcode; int get brandId; String get brandName; int get categoryId; String get categoryNameEn; String get categoryNameId; String get description; int get id; int get isOutStock; String get name; String get notes; String get photo; int get photoId; String get photoMd; String get productGroup; int get productGroupId; int get published; String get sku; String get status; int get storeId; String get type; int get viewed; String get viewedTime;
/// Create a copy of ProductsModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductsModelCopyWith<ProductsModel> get copyWith => _$ProductsModelCopyWithImpl<ProductsModel>(this as ProductsModel, _$identity);

  /// Serializes this ProductsModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductsModel&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryNameEn, categoryNameEn) || other.categoryNameEn == categoryNameEn)&&(identical(other.categoryNameId, categoryNameId) || other.categoryNameId == categoryNameId)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.isOutStock, isOutStock) || other.isOutStock == isOutStock)&&(identical(other.name, name) || other.name == name)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.photoId, photoId) || other.photoId == photoId)&&(identical(other.photoMd, photoMd) || other.photoMd == photoMd)&&(identical(other.productGroup, productGroup) || other.productGroup == productGroup)&&(identical(other.productGroupId, productGroupId) || other.productGroupId == productGroupId)&&(identical(other.published, published) || other.published == published)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.type, type) || other.type == type)&&(identical(other.viewed, viewed) || other.viewed == viewed)&&(identical(other.viewedTime, viewedTime) || other.viewedTime == viewedTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,barcode,brandId,brandName,categoryId,categoryNameEn,categoryNameId,description,id,isOutStock,name,notes,photo,photoId,photoMd,productGroup,productGroupId,published,sku,status,storeId,type,viewed,viewedTime]);

@override
String toString() {
  return 'ProductsModel(barcode: $barcode, brandId: $brandId, brandName: $brandName, categoryId: $categoryId, categoryNameEn: $categoryNameEn, categoryNameId: $categoryNameId, description: $description, id: $id, isOutStock: $isOutStock, name: $name, notes: $notes, photo: $photo, photoId: $photoId, photoMd: $photoMd, productGroup: $productGroup, productGroupId: $productGroupId, published: $published, sku: $sku, status: $status, storeId: $storeId, type: $type, viewed: $viewed, viewedTime: $viewedTime)';
}


}

/// @nodoc
abstract mixin class $ProductsModelCopyWith<$Res>  {
  factory $ProductsModelCopyWith(ProductsModel value, $Res Function(ProductsModel) _then) = _$ProductsModelCopyWithImpl;
@useResult
$Res call({
 String barcode, int brandId, String brandName, int categoryId, String categoryNameEn, String categoryNameId, String description, int id, int isOutStock, String name, String notes, String photo, int photoId, String photoMd, String productGroup, int productGroupId, int published, String sku, String status, int storeId, String type, int viewed, String viewedTime
});




}
/// @nodoc
class _$ProductsModelCopyWithImpl<$Res>
    implements $ProductsModelCopyWith<$Res> {
  _$ProductsModelCopyWithImpl(this._self, this._then);

  final ProductsModel _self;
  final $Res Function(ProductsModel) _then;

/// Create a copy of ProductsModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? barcode = null,Object? brandId = null,Object? brandName = null,Object? categoryId = null,Object? categoryNameEn = null,Object? categoryNameId = null,Object? description = null,Object? id = null,Object? isOutStock = null,Object? name = null,Object? notes = null,Object? photo = null,Object? photoId = null,Object? photoMd = null,Object? productGroup = null,Object? productGroupId = null,Object? published = null,Object? sku = null,Object? status = null,Object? storeId = null,Object? type = null,Object? viewed = null,Object? viewedTime = null,}) {
  return _then(_self.copyWith(
barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryNameEn: null == categoryNameEn ? _self.categoryNameEn : categoryNameEn // ignore: cast_nullable_to_non_nullable
as String,categoryNameId: null == categoryNameId ? _self.categoryNameId : categoryNameId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isOutStock: null == isOutStock ? _self.isOutStock : isOutStock // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,photoId: null == photoId ? _self.photoId : photoId // ignore: cast_nullable_to_non_nullable
as int,photoMd: null == photoMd ? _self.photoMd : photoMd // ignore: cast_nullable_to_non_nullable
as String,productGroup: null == productGroup ? _self.productGroup : productGroup // ignore: cast_nullable_to_non_nullable
as String,productGroupId: null == productGroupId ? _self.productGroupId : productGroupId // ignore: cast_nullable_to_non_nullable
as int,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as int,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,viewed: null == viewed ? _self.viewed : viewed // ignore: cast_nullable_to_non_nullable
as int,viewedTime: null == viewedTime ? _self.viewedTime : viewedTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ProductsModel].
extension ProductsModelPatterns on ProductsModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProductsModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductsModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProductsModel value)  $default,){
final _that = this;
switch (_that) {
case _ProductsModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProductsModel value)?  $default,){
final _that = this;
switch (_that) {
case _ProductsModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String barcode,  int brandId,  String brandName,  int categoryId,  String categoryNameEn,  String categoryNameId,  String description,  int id,  int isOutStock,  String name,  String notes,  String photo,  int photoId,  String photoMd,  String productGroup,  int productGroupId,  int published,  String sku,  String status,  int storeId,  String type,  int viewed,  String viewedTime)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductsModel() when $default != null:
return $default(_that.barcode,_that.brandId,_that.brandName,_that.categoryId,_that.categoryNameEn,_that.categoryNameId,_that.description,_that.id,_that.isOutStock,_that.name,_that.notes,_that.photo,_that.photoId,_that.photoMd,_that.productGroup,_that.productGroupId,_that.published,_that.sku,_that.status,_that.storeId,_that.type,_that.viewed,_that.viewedTime);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String barcode,  int brandId,  String brandName,  int categoryId,  String categoryNameEn,  String categoryNameId,  String description,  int id,  int isOutStock,  String name,  String notes,  String photo,  int photoId,  String photoMd,  String productGroup,  int productGroupId,  int published,  String sku,  String status,  int storeId,  String type,  int viewed,  String viewedTime)  $default,) {final _that = this;
switch (_that) {
case _ProductsModel():
return $default(_that.barcode,_that.brandId,_that.brandName,_that.categoryId,_that.categoryNameEn,_that.categoryNameId,_that.description,_that.id,_that.isOutStock,_that.name,_that.notes,_that.photo,_that.photoId,_that.photoMd,_that.productGroup,_that.productGroupId,_that.published,_that.sku,_that.status,_that.storeId,_that.type,_that.viewed,_that.viewedTime);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String barcode,  int brandId,  String brandName,  int categoryId,  String categoryNameEn,  String categoryNameId,  String description,  int id,  int isOutStock,  String name,  String notes,  String photo,  int photoId,  String photoMd,  String productGroup,  int productGroupId,  int published,  String sku,  String status,  int storeId,  String type,  int viewed,  String viewedTime)?  $default,) {final _that = this;
switch (_that) {
case _ProductsModel() when $default != null:
return $default(_that.barcode,_that.brandId,_that.brandName,_that.categoryId,_that.categoryNameEn,_that.categoryNameId,_that.description,_that.id,_that.isOutStock,_that.name,_that.notes,_that.photo,_that.photoId,_that.photoMd,_that.productGroup,_that.productGroupId,_that.published,_that.sku,_that.status,_that.storeId,_that.type,_that.viewed,_that.viewedTime);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _ProductsModel implements ProductsModel {
  const _ProductsModel({this.barcode = "", this.brandId = 0, this.brandName = "", this.categoryId = 0, this.categoryNameEn = "", this.categoryNameId = "", this.description = "", this.id = 0, this.isOutStock = 0, this.name = "", this.notes = "", this.photo = "", this.photoId = 0, this.photoMd = "", this.productGroup = "", this.productGroupId = 0, this.published = 0, this.sku = "", this.status = "", this.storeId = 0, this.type = "", this.viewed = 0, this.viewedTime = ""});
  factory _ProductsModel.fromJson(Map<String, dynamic> json) => _$ProductsModelFromJson(json);

@override@JsonKey() final  String barcode;
@override@JsonKey() final  int brandId;
@override@JsonKey() final  String brandName;
@override@JsonKey() final  int categoryId;
@override@JsonKey() final  String categoryNameEn;
@override@JsonKey() final  String categoryNameId;
@override@JsonKey() final  String description;
@override@JsonKey() final  int id;
@override@JsonKey() final  int isOutStock;
@override@JsonKey() final  String name;
@override@JsonKey() final  String notes;
@override@JsonKey() final  String photo;
@override@JsonKey() final  int photoId;
@override@JsonKey() final  String photoMd;
@override@JsonKey() final  String productGroup;
@override@JsonKey() final  int productGroupId;
@override@JsonKey() final  int published;
@override@JsonKey() final  String sku;
@override@JsonKey() final  String status;
@override@JsonKey() final  int storeId;
@override@JsonKey() final  String type;
@override@JsonKey() final  int viewed;
@override@JsonKey() final  String viewedTime;

/// Create a copy of ProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductsModelCopyWith<_ProductsModel> get copyWith => __$ProductsModelCopyWithImpl<_ProductsModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProductsModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductsModel&&(identical(other.barcode, barcode) || other.barcode == barcode)&&(identical(other.brandId, brandId) || other.brandId == brandId)&&(identical(other.brandName, brandName) || other.brandName == brandName)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryNameEn, categoryNameEn) || other.categoryNameEn == categoryNameEn)&&(identical(other.categoryNameId, categoryNameId) || other.categoryNameId == categoryNameId)&&(identical(other.description, description) || other.description == description)&&(identical(other.id, id) || other.id == id)&&(identical(other.isOutStock, isOutStock) || other.isOutStock == isOutStock)&&(identical(other.name, name) || other.name == name)&&(identical(other.notes, notes) || other.notes == notes)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.photoId, photoId) || other.photoId == photoId)&&(identical(other.photoMd, photoMd) || other.photoMd == photoMd)&&(identical(other.productGroup, productGroup) || other.productGroup == productGroup)&&(identical(other.productGroupId, productGroupId) || other.productGroupId == productGroupId)&&(identical(other.published, published) || other.published == published)&&(identical(other.sku, sku) || other.sku == sku)&&(identical(other.status, status) || other.status == status)&&(identical(other.storeId, storeId) || other.storeId == storeId)&&(identical(other.type, type) || other.type == type)&&(identical(other.viewed, viewed) || other.viewed == viewed)&&(identical(other.viewedTime, viewedTime) || other.viewedTime == viewedTime));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,barcode,brandId,brandName,categoryId,categoryNameEn,categoryNameId,description,id,isOutStock,name,notes,photo,photoId,photoMd,productGroup,productGroupId,published,sku,status,storeId,type,viewed,viewedTime]);

@override
String toString() {
  return 'ProductsModel(barcode: $barcode, brandId: $brandId, brandName: $brandName, categoryId: $categoryId, categoryNameEn: $categoryNameEn, categoryNameId: $categoryNameId, description: $description, id: $id, isOutStock: $isOutStock, name: $name, notes: $notes, photo: $photo, photoId: $photoId, photoMd: $photoMd, productGroup: $productGroup, productGroupId: $productGroupId, published: $published, sku: $sku, status: $status, storeId: $storeId, type: $type, viewed: $viewed, viewedTime: $viewedTime)';
}


}

/// @nodoc
abstract mixin class _$ProductsModelCopyWith<$Res> implements $ProductsModelCopyWith<$Res> {
  factory _$ProductsModelCopyWith(_ProductsModel value, $Res Function(_ProductsModel) _then) = __$ProductsModelCopyWithImpl;
@override @useResult
$Res call({
 String barcode, int brandId, String brandName, int categoryId, String categoryNameEn, String categoryNameId, String description, int id, int isOutStock, String name, String notes, String photo, int photoId, String photoMd, String productGroup, int productGroupId, int published, String sku, String status, int storeId, String type, int viewed, String viewedTime
});




}
/// @nodoc
class __$ProductsModelCopyWithImpl<$Res>
    implements _$ProductsModelCopyWith<$Res> {
  __$ProductsModelCopyWithImpl(this._self, this._then);

  final _ProductsModel _self;
  final $Res Function(_ProductsModel) _then;

/// Create a copy of ProductsModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? barcode = null,Object? brandId = null,Object? brandName = null,Object? categoryId = null,Object? categoryNameEn = null,Object? categoryNameId = null,Object? description = null,Object? id = null,Object? isOutStock = null,Object? name = null,Object? notes = null,Object? photo = null,Object? photoId = null,Object? photoMd = null,Object? productGroup = null,Object? productGroupId = null,Object? published = null,Object? sku = null,Object? status = null,Object? storeId = null,Object? type = null,Object? viewed = null,Object? viewedTime = null,}) {
  return _then(_ProductsModel(
barcode: null == barcode ? _self.barcode : barcode // ignore: cast_nullable_to_non_nullable
as String,brandId: null == brandId ? _self.brandId : brandId // ignore: cast_nullable_to_non_nullable
as int,brandName: null == brandName ? _self.brandName : brandName // ignore: cast_nullable_to_non_nullable
as String,categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryNameEn: null == categoryNameEn ? _self.categoryNameEn : categoryNameEn // ignore: cast_nullable_to_non_nullable
as String,categoryNameId: null == categoryNameId ? _self.categoryNameId : categoryNameId // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,isOutStock: null == isOutStock ? _self.isOutStock : isOutStock // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,notes: null == notes ? _self.notes : notes // ignore: cast_nullable_to_non_nullable
as String,photo: null == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String,photoId: null == photoId ? _self.photoId : photoId // ignore: cast_nullable_to_non_nullable
as int,photoMd: null == photoMd ? _self.photoMd : photoMd // ignore: cast_nullable_to_non_nullable
as String,productGroup: null == productGroup ? _self.productGroup : productGroup // ignore: cast_nullable_to_non_nullable
as String,productGroupId: null == productGroupId ? _self.productGroupId : productGroupId // ignore: cast_nullable_to_non_nullable
as int,published: null == published ? _self.published : published // ignore: cast_nullable_to_non_nullable
as int,sku: null == sku ? _self.sku : sku // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,storeId: null == storeId ? _self.storeId : storeId // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,viewed: null == viewed ? _self.viewed : viewed // ignore: cast_nullable_to_non_nullable
as int,viewedTime: null == viewedTime ? _self.viewedTime : viewedTime // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
