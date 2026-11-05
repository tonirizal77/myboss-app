// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalog_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CatalogGroupsModel _$CatalogGroupsModelFromJson(Map<String, dynamic> json) =>
    _CatalogGroupsModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CatalogGroup.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const CatalogMeta()
          : CatalogMeta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CatalogGroupsModelToJson(_CatalogGroupsModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'status': instance.status,
      'error': instance.error,
    };

_CatalogGroup _$CatalogGroupFromJson(Map<String, dynamic> json) =>
    _CatalogGroup(
      id: (json['id'] as num?)?.toInt() ?? 0,
      nameEn: json['name_en'] as String?,
      nameId: json['name_id'] as String?,
      photoMd: json['photo_md'] as String?,
      totalProduct: (json['total_product'] as num?)?.toInt() ?? 0,
      products:
          (json['products'] as List<dynamic>?)
              ?.map((e) => CatalogItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CatalogGroupToJson(_CatalogGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name_en': instance.nameEn,
      'name_id': instance.nameId,
      'photo_md': instance.photoMd,
      'total_product': instance.totalProduct,
      'products': instance.products.map((e) => e.toJson()).toList(),
    };

_CatalogListModel _$CatalogListModelFromJson(Map<String, dynamic> json) =>
    _CatalogListModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CatalogItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const CatalogMeta()
          : CatalogMeta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CatalogListModelToJson(_CatalogListModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'status': instance.status,
      'error': instance.error,
    };

_CatalogItem _$CatalogItemFromJson(Map<String, dynamic> json) => _CatalogItem(
  id: (json['id'] as num?)?.toInt() ?? 0,
  name: json['name'] as String? ?? '',
  photoMd: json['photo_md'] as String?,
  productGroupId: (json['product_group_id'] as num?)?.toInt(),
  productGroupName: json['product_group_name'] as String?,
);

Map<String, dynamic> _$CatalogItemToJson(_CatalogItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'photo_md': instance.photoMd,
      'product_group_id': instance.productGroupId,
      'product_group_name': instance.productGroupName,
    };

_CatalogBrandsModel _$CatalogBrandsModelFromJson(Map<String, dynamic> json) =>
    _CatalogBrandsModel(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => CatalogBrand.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      meta: json['meta'] == null
          ? const CatalogMeta()
          : CatalogMeta.fromJson(json['meta'] as Map<String, dynamic>),
      status: (json['status'] as num?)?.toInt() ?? 0,
      error: (json['error'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CatalogBrandsModelToJson(_CatalogBrandsModel instance) =>
    <String, dynamic>{
      'data': instance.data.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
      'status': instance.status,
      'error': instance.error,
    };

_CatalogBrand _$CatalogBrandFromJson(Map<String, dynamic> json) =>
    _CatalogBrand(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$CatalogBrandToJson(_CatalogBrand instance) =>
    <String, dynamic>{'id': instance.id, 'name': instance.name};

_CatalogDetail _$CatalogDetailFromJson(Map<String, dynamic> json) =>
    _CatalogDetail(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      labelId: (json['label_id'] as num?)?.toInt(),
      labelTag: json['label_tag'] as String?,
      description: json['description'] as String? ?? '',
      productPhotos: json['product_photos'] as List<dynamic>? ?? const [],
      specifications:
          (json['specifications'] as List<dynamic>?)
              ?.map((e) => CatalogSpec.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      relatedProducts:
          (json['related_products'] as List<dynamic>?)
              ?.map((e) => CatalogItem.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$CatalogDetailToJson(
  _CatalogDetail instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'label_id': instance.labelId,
  'label_tag': instance.labelTag,
  'description': instance.description,
  'product_photos': instance.productPhotos,
  'specifications': instance.specifications.map((e) => e.toJson()).toList(),
  'related_products': instance.relatedProducts.map((e) => e.toJson()).toList(),
};

_CatalogSpec _$CatalogSpecFromJson(Map<String, dynamic> json) => _CatalogSpec(
  id: (json['id'] as num?)?.toInt(),
  name: json['name'] as String? ?? '',
  value: json['value'] as String? ?? '',
);

Map<String, dynamic> _$CatalogSpecToJson(_CatalogSpec instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'value': instance.value,
    };

_CatalogMeta _$CatalogMetaFromJson(Map<String, dynamic> json) => _CatalogMeta(
  total: (json['total'] as num?)?.toInt() ?? 0,
  page: (json['page'] as num?)?.toInt() ?? 1,
  offset: (json['offset'] as num?)?.toInt() ?? 0,
  perPage: (json['per_page'] as num?)?.toInt() ?? 15,
  totalPage: (json['total_page'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$CatalogMetaToJson(_CatalogMeta instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'offset': instance.offset,
      'per_page': instance.perPage,
      'total_page': instance.totalPage,
    };
