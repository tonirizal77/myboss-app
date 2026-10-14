part of 'product_cubit.dart';

class ProductState extends Equatable {
  const ProductState({
    this.status = Status.initial,
    this.catalog = const ProductCatalog(),
    this.categoryId = '',
    this.brand = '',
    this.query = '',
    this.errorMessage = '',
  });

  final Status status;
  final ProductCatalog catalog;

  /// Empty = "All".
  final String categoryId;
  final String brand;
  final String query;
  final String errorMessage;

  bool get isAll => categoryId.isEmpty;

  /// Products matching the brand + search (any category).
  List<Product> get _matching {
    final q = query.trim().toLowerCase();

    return [
      for (final p in catalog.products)
        if ((brand.isEmpty || p.brand == brand) &&
            (q.isEmpty || p.name.toLowerCase().contains(q)))
          p,
    ];
  }

  /// Products of the selected category (filtered view).
  List<Product> get products => [
    for (final p in _matching)
      if (isAll || p.categoryId == categoryId) p,
  ];

  /// "All" view: one section per category that still has products.
  List<(ProductCategory, List<Product>)> get sections {
    final matching = _matching;

    return [
      for (final c in catalog.categories)
        if (matching.any((p) => p.categoryId == c.id))
          (
            c,
            [
              for (final p in matching)
                if (p.categoryId == c.id) p,
            ],
          ),
    ];
  }

  bool get isEmpty => isAll ? sections.isEmpty : products.isEmpty;

  ProductState copyWith({
    Status? status,
    ProductCatalog? catalog,
    String? categoryId,
    String? brand,
    String? query,
    String? errorMessage,
  }) => ProductState(
    status: status ?? this.status,
    catalog: catalog ?? this.catalog,
    categoryId: categoryId ?? this.categoryId,
    brand: brand ?? this.brand,
    query: query ?? this.query,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object?> get props => [
    status,
    catalog,
    categoryId,
    brand,
    query,
    errorMessage,
  ];
}
