part of 'product_cubit.dart';

class ProductState extends Equatable {
  const ProductState({
    this.status = Status.initial,
    this.storeDomain = '',
    this.categories = const [],
    this.brands = const [],
    this.groups = const [],
    this.products = const [],
    this.page = 1,
    this.totalPage = 1,
    this.loadingMore = false,
    this.categoryId = '',
    this.brandId = '',
    this.query = '',
    this.errorMessage = '',
  });

  /// Status of the catalog view ("All" sections or the category grid).
  final Status status;

  /// `url_id` of the selected branch; empty = default domain.
  final String storeDomain;

  final List<ProductCategory> categories;
  final List<ProductBrand> brands;

  /// "All" view.
  final List<ProductGroup> groups;

  /// Category grid, all pages loaded so far.
  final List<Product> products;
  final int page;
  final int totalPage;
  final bool loadingMore;

  /// Empty = "All".
  final String categoryId;

  /// Empty = all brands.
  final String brandId;

  /// Text in the search field.
  final String query;
  final String errorMessage;

  bool get isAll => categoryId.isEmpty;

  /// What is sent to the server: the trimmed [query] from 2 characters.
  String get searchTerm {
    final q = query.trim();
    return q.length >= 2 ? q : '';
  }

  bool get hasMore => !isAll && page < totalPage;

  bool get isEmpty =>
      status == Status.success && (isAll ? groups.isEmpty : products.isEmpty);

  ProductState copyWith({
    Status? status,
    String? storeDomain,
    List<ProductCategory>? categories,
    List<ProductBrand>? brands,
    List<ProductGroup>? groups,
    List<Product>? products,
    int? page,
    int? totalPage,
    bool? loadingMore,
    String? categoryId,
    String? brandId,
    String? query,
    String? errorMessage,
  }) => ProductState(
    status: status ?? this.status,
    storeDomain: storeDomain ?? this.storeDomain,
    categories: categories ?? this.categories,
    brands: brands ?? this.brands,
    groups: groups ?? this.groups,
    products: products ?? this.products,
    page: page ?? this.page,
    totalPage: totalPage ?? this.totalPage,
    loadingMore: loadingMore ?? this.loadingMore,
    categoryId: categoryId ?? this.categoryId,
    brandId: brandId ?? this.brandId,
    query: query ?? this.query,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object?> get props => [
    status,
    storeDomain,
    categories,
    brands,
    groups,
    products,
    page,
    totalPage,
    loadingMore,
    categoryId,
    brandId,
    query,
    errorMessage,
  ];
}
