import 'package:equatable/equatable.dart';

/// Content of the guest Home page (Figma `Guest Home`).
class GuestHome extends Equatable {
  const GuestHome({
    this.brands = const [],
    this.catalog = const [],
    this.rewards = const [],
  });

  /// Trusted brand logos.
  final List<BrandLogo> brands;

  /// Product catalog preview (carousel).
  final List<CatalogPreview> catalog;

  /// Items that can be redeemed with points.
  final List<RewardPreview> rewards;

  @override
  List<Object?> get props => [brands, catalog, rewards];
}

/// Catalog totals of a branch, shown in the Home copy: "... in more than
/// {categories} categories" and "View all {products}+ products". 0 = not
/// known (not loaded yet or the request failed): the copy is hidden.
class CatalogStats extends Equatable {
  const CatalogStats({this.products = 0, this.categories = 0});

  /// `meta.total` of `GET /catalog/lists`.
  final int products;

  /// Categories of `GET /catalog/group/lists`.
  final int categories;

  @override
  List<Object?> get props => [products, categories];
}

/// [image] is an asset path or an http(s) URL.
class BrandLogo extends Equatable {
  const BrandLogo({required this.name, required this.image});

  final String name;
  final String image;

  @override
  List<Object?> get props => [name, image];
}

class CatalogPreview extends Equatable {
  const CatalogPreview({
    required this.name,
    required this.category,
    required this.image,
    this.productId = '',
  });

  final String name;
  final String category;
  final String image;

  /// Catalog product shown when the card is tapped; empty = no details
  /// (static Figma cards).
  final String productId;

  bool get hasDetail => productId.isNotEmpty;

  @override
  List<Object?> get props => [name, category, image, productId];
}

class RewardPreview extends Equatable {
  const RewardPreview({
    required this.name,
    required this.points,
    required this.image,
    this.productId = '',
  });

  final String name;
  final int points;
  final String image;

  /// Catalog product shown when the reward is tapped; empty = no details
  /// (static rewards, older payloads).
  final String productId;

  bool get hasDetail => productId.isNotEmpty;

  @override
  List<Object?> get props => [name, points, image, productId];
}
