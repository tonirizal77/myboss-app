import 'package:equatable/equatable.dart';

/// Top filter of the catalog (product group: Wearable, Audio, ...).
/// [id] empty = "All".
class ProductCategory extends Equatable {
  const ProductCategory({
    required this.id,
    required this.nameEn,
    this.nameId = '',
    this.iconUrl = '',
  });

  final String id;
  final String nameEn;
  final String nameId;

  /// Empty when the server has no icon (placeholder) - the UI falls back to
  /// a built-in icon.
  final String iconUrl;

  /// Name for the app language ([languageCode] `id` -> Indonesian name).
  String name(String languageCode) =>
      languageCode == 'id' && nameId.isNotEmpty ? nameId : nameEn;

  @override
  List<Object?> get props => [id, nameEn, nameId, iconUrl];
}

/// Brand filter chip. [id] empty = all brands.
class ProductBrand extends Equatable {
  const ProductBrand({required this.id, required this.name});

  final String id;
  final String name;

  @override
  List<Object?> get props => [id, name];
}

class ProductSpec extends Equatable {
  const ProductSpec({required this.label, required this.value});

  final String label;
  final String value;

  @override
  List<Object?> get props => [label, value];
}

/// [images] are asset paths or http(s) URLs; the first one is the cover.
///
/// List endpoints only fill id, name, cover and category; [label],
/// [description], [specs] and [related] come from the product details.
class Product extends Equatable {
  const Product({
    required this.id,
    required this.name,
    this.images = const [],
    this.categoryId = '',
    this.label = '',
    this.description = '',
    this.specs = const [],
    this.related = const [],
  });

  final String id;
  final String name;
  final List<String> images;
  final String categoryId;

  /// Badge text ("New Release", "Sale", ...); empty = no badge.
  final String label;
  final String description;
  final List<ProductSpec> specs;
  final List<Product> related;

  String get cover => images.isEmpty ? '' : images.first;

  @override
  List<Object?> get props => [
    id,
    name,
    images,
    categoryId,
    label,
    description,
    specs,
    related,
  ];
}

/// "All" view: one section per category. [total] can exceed
/// [products].length when the server sends a preview only.
class ProductGroup extends Equatable {
  const ProductGroup({
    required this.category,
    required this.products,
    this.total = 0,
  });

  final ProductCategory category;
  final List<Product> products;
  final int total;

  @override
  List<Object?> get props => [category, products, total];
}

/// One page of the product grid.
class ProductList extends Equatable {
  const ProductList({this.items = const [], this.page = 1, this.totalPage = 1});

  final List<Product> items;
  final int page;
  final int totalPage;

  @override
  List<Object?> get props => [items, page, totalPage];
}
