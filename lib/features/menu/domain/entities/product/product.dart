import 'package:equatable/equatable.dart';

/// Product catalog of the MyBoss store (Figma `catalogs`).
class ProductCatalog extends Equatable {
  const ProductCatalog({
    this.categories = const [],
    this.brands = const [],
    this.products = const [],
  });

  final List<ProductCategory> categories;
  final List<String> brands;
  final List<Product> products;

  Product? byId(String id) {
    for (final p in products) {
      if (p.id == id) return p;
    }
    return null;
  }

  @override
  List<Object?> get props => [categories, brands, products];
}

/// Top filter of the catalog (Wearable, Audio, Power, ...). [id] also picks
/// the icon in the UI.
class ProductCategory extends Equatable {
  const ProductCategory({required this.id, required this.name});

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
class Product extends Equatable {
  const Product({
    required this.id,
    required this.name,
    required this.categoryId,
    required this.brand,
    required this.images,
    this.isNew = false,
    this.description = '',
    this.specs = const [],
    this.relatedIds = const [],
  });

  final String id;
  final String name;
  final String categoryId;
  final String brand;
  final List<String> images;
  final bool isNew;
  final String description;
  final List<ProductSpec> specs;
  final List<String> relatedIds;

  String get cover => images.isEmpty ? '' : images.first;

  @override
  List<Object?> get props => [
    id,
    name,
    categoryId,
    brand,
    images,
    isNew,
    description,
    specs,
    relatedIds,
  ];
}
