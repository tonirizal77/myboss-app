part of 'popular_products_cubit.dart';

class PopularProductsState extends Equatable {
  const PopularProductsState({
    this.status = Status.initial,
    this.storeDomain = '',
    this.items = const [],
    this.stats = const CatalogStats(),
  });

  final Status status;

  /// Branch (`url_id`) the [items] belong to.
  final String storeDomain;
  final List<CatalogPreview> items;

  /// Product / category totals of the branch (Home copy).
  final CatalogStats stats;

  PopularProductsState copyWith({
    Status? status,
    String? storeDomain,
    List<CatalogPreview>? items,
    CatalogStats? stats,
  }) => PopularProductsState(
    status: status ?? this.status,
    storeDomain: storeDomain ?? this.storeDomain,
    items: items ?? this.items,
    stats: stats ?? this.stats,
  );

  @override
  List<Object?> get props => [status, storeDomain, items, stats];
}
