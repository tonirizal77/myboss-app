import 'package:equatable/equatable.dart';

/// Filters + paging of a catalog request, and the branch it is made for.
///
/// Filters go out in the Postman `search[n]` format, indexes from 0 in this
/// order (as in Postman): brand (`brand_id =`), category
/// (`product_group_id =`), name (`name like`). Empty values are not sent.
class CatalogQuery extends Equatable {
  const CatalogQuery({
    this.storeDomain = '',
    this.categoryId = '',
    this.brandId = '',
    this.search = '',
    this.page = 1,
    this.perPage = 15,
  });

  /// `url_id` of the selected branch; empty = default domain.
  final String storeDomain;
  final String categoryId;
  final String brandId;
  final String search;
  final int page;
  final int perPage;

  /// `search[n][...]` entries only (no paging).
  Map<String, dynamic> get filters {
    final conditions = [
      if (brandId.isNotEmpty) ('brand_id', brandId, '='),
      if (categoryId.isNotEmpty) ('product_group_id', categoryId, '='),
      if (search.isNotEmpty) ('name', search, 'like'),
    ];

    return {
      for (final (i, (column, text, condition)) in conditions.indexed) ...{
        'search[$i][search_column]': column,
        'search[$i][search_text]': text,
        'search[$i][search_condition]': condition,
      },
    };
  }

  /// [filters] + `page` / `per_page`.
  Map<String, dynamic> get params => {
    ...filters,
    'page': page,
    'per_page': perPage,
  };

  CatalogQuery copyWith({
    String? storeDomain,
    String? categoryId,
    String? brandId,
    String? search,
    int? page,
    int? perPage,
  }) => CatalogQuery(
    storeDomain: storeDomain ?? this.storeDomain,
    categoryId: categoryId ?? this.categoryId,
    brandId: brandId ?? this.brandId,
    search: search ?? this.search,
    page: page ?? this.page,
    perPage: perPage ?? this.perPage,
  );

  @override
  List<Object?> get props => [
    storeDomain,
    categoryId,
    brandId,
    search,
    page,
    perPage,
  ];
}
