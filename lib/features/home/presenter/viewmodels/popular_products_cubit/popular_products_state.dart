part of 'popular_products_cubit.dart';

class PopularProductsState extends Equatable {
  const PopularProductsState({
    this.status = Status.initial,
    this.storeDomain = '',
    this.items = const [],
  });

  final Status status;

  /// Branch (`url_id`) the [items] belong to.
  final String storeDomain;
  final List<CatalogPreview> items;

  PopularProductsState copyWith({
    Status? status,
    String? storeDomain,
    List<CatalogPreview>? items,
  }) => PopularProductsState(
    status: status ?? this.status,
    storeDomain: storeDomain ?? this.storeDomain,
    items: items ?? this.items,
  );

  @override
  List<Object?> get props => [status, storeDomain, items];
}
