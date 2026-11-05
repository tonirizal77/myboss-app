import '../catalog_model/catalog_model.dart';
import 'product.dart';

/// Server placeholder image (`.../img/no_photo/...`) or no URL at all.
bool isPlaceholderPhoto(String? url) =>
    url == null || url.isEmpty || url.contains('/no_photo/');

extension CatalogGroupX on CatalogGroup {
  ProductCategory toCategory() => ProductCategory(
    id: '$id',
    nameEn: nameEn ?? '',
    nameId: nameId ?? '',
    iconUrl: isPlaceholderPhoto(photoMd) ? '' : photoMd!,
  );

  ProductGroup toGroup() => ProductGroup(
    category: toCategory(),
    total: totalProduct,
    products: [for (final p in products) p.toProduct(categoryId: '$id')],
  );
}

extension CatalogItemX on CatalogItem {
  /// [categoryId] for items that do not carry their group (group products,
  /// related products).
  Product toProduct({String? categoryId}) => Product(
    id: '$id',
    name: name,
    images: [if (photoMd != null && photoMd!.isNotEmpty) photoMd!],
    categoryId: categoryId ?? (productGroupId == null ? '' : '$productGroupId'),
  );
}

extension CatalogBrandX on CatalogBrand {
  ProductBrand toBrand() => ProductBrand(id: '$id', name: name);
}

extension CatalogDetailX on CatalogDetail {
  /// Gallery URLs. TODO(backend): element shape of `product_photos` is not
  /// confirmed (always `[]` so far) - accept a URL string or an object with
  /// one of the usual photo keys.
  List<String> get photos => [for (final p in productPhotos) ?_photoUrl(p)];

  /// Full product for the details sheet. [card] is the product it was opened
  /// from: the detail response has no cover and no category.
  Product toProduct(Product card) => Product(
    id: '$id',
    name: name.isEmpty ? card.name : name,
    images: photos.isEmpty ? card.images : photos,
    categoryId: card.categoryId,
    label: labelTag?.trim() ?? '',
    description: description.trim(),
    specs: [
      for (final s in specifications)
        ProductSpec(label: s.name, value: s.value),
    ],
    related: [
      for (final r in relatedProducts) r.toProduct(categoryId: card.categoryId),
    ],
  );
}

String? _photoUrl(Object? photo) => switch (photo) {
  final String url when url.isNotEmpty => url,
  final Map<dynamic, dynamic> map => [
    map['photo_lg'],
    map['photo_md'],
    map['photo'],
    map['url'],
  ].whereType<String>().where((u) => u.isNotEmpty).firstOrNull,
  _ => null,
};
