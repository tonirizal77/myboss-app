// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ProductsModel _$ProductsModelFromJson(Map<String, dynamic> json) =>
    _ProductsModel(
      barcode: json['barcode'] as String? ?? "",
      brandId: (json['brand_id'] as num?)?.toInt() ?? 0,
      brandName: json['brand_name'] as String? ?? "",
      categoryId: (json['category_id'] as num?)?.toInt() ?? 0,
      categoryNameEn: json['category_name_en'] as String? ?? "",
      categoryNameId: json['category_name_id'] as String? ?? "",
      description: json['description'] as String? ?? "",
      id: (json['id'] as num?)?.toInt() ?? 0,
      isOutStock: (json['is_out_stock'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? "",
      notes: json['notes'] as String? ?? "",
      photo: json['photo'] as String? ?? "",
      photoId: (json['photo_id'] as num?)?.toInt() ?? 0,
      photoMd: json['photo_md'] as String? ?? "",
      productGroup: json['product_group'] as String? ?? "",
      productGroupId: (json['product_group_id'] as num?)?.toInt() ?? 0,
      published: (json['published'] as num?)?.toInt() ?? 0,
      sku: json['sku'] as String? ?? "",
      status: json['status'] as String? ?? "",
      storeId: (json['store_id'] as num?)?.toInt() ?? 0,
      type: json['type'] as String? ?? "",
      viewed: (json['viewed'] as num?)?.toInt() ?? 0,
      viewedTime: json['viewed_time'] as String? ?? "",
    );

Map<String, dynamic> _$ProductsModelToJson(_ProductsModel instance) =>
    <String, dynamic>{
      'barcode': instance.barcode,
      'brand_id': instance.brandId,
      'brand_name': instance.brandName,
      'category_id': instance.categoryId,
      'category_name_en': instance.categoryNameEn,
      'category_name_id': instance.categoryNameId,
      'description': instance.description,
      'id': instance.id,
      'is_out_stock': instance.isOutStock,
      'name': instance.name,
      'notes': instance.notes,
      'photo': instance.photo,
      'photo_id': instance.photoId,
      'photo_md': instance.photoMd,
      'product_group': instance.productGroup,
      'product_group_id': instance.productGroupId,
      'published': instance.published,
      'sku': instance.sku,
      'status': instance.status,
      'store_id': instance.storeId,
      'type': instance.type,
      'viewed': instance.viewed,
      'viewed_time': instance.viewedTime,
    };
