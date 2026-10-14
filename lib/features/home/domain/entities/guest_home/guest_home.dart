import 'package:equatable/equatable.dart';

/// Content of the guest Home page (Figma `Guest Home`).
class GuestHome extends Equatable {
  const GuestHome({
    this.brands = const [],
    this.catalog = const [],
    this.rewards = const [],
    this.productCount = 0,
    this.categoryCount = 0,
  });

  /// Trusted brand logos.
  final List<BrandLogo> brands;

  /// Product catalog preview (carousel).
  final List<CatalogPreview> catalog;

  /// Items that can be redeemed with points.
  final List<RewardPreview> rewards;

  /// Totals shown in copy ("View all 100+ products", "25 categories").
  final int productCount;
  final int categoryCount;

  @override
  List<Object?> get props => [
    brands,
    catalog,
    rewards,
    productCount,
    categoryCount,
  ];
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
  });

  final String name;
  final String category;
  final String image;

  @override
  List<Object?> get props => [name, category, image];
}

class RewardPreview extends Equatable {
  const RewardPreview({
    required this.name,
    required this.points,
    required this.image,
  });

  final String name;
  final int points;
  final String image;

  @override
  List<Object?> get props => [name, points, image];
}
