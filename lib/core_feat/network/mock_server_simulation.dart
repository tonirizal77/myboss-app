part of 'configs.dart';

/// Server behaviour applied to a mock response, so mock mode reacts like the
/// API does: `search[n]` filters, `page` / `per_page` paging with a matching
/// `meta`, `is_used` on the member vouchers, and `/catalog/show/{id}`
/// answering for the requested product.
///
/// Mock-only data: catalog products carry a `brand_id` (the API keeps it
/// server side) so the brand filter has something to match.
class MockServerSimulation {
  const MockServerSimulation._();

  /// [data] after the server rules for [path]; `null` when the server would
  /// answer 404 (unknown product id). [load] reads another mock of the same
  /// branch by endpoint (`GET`).
  static Future<Object?> respond(
    String path,
    Map<String, dynamic> query,
    Object? data, {
    required Future<Object?> Function(String endpoint) load,
  }) async {
    if (data is! Map<String, dynamic>) return data;

    final detailId = _detailId(path);
    if (detailId != null) return _detail(detailId, data, load);

    final list = data['data'];
    if (list is! List) return data;

    final filters = _filters(query);
    var items = list.whereType<Map<String, dynamic>>().toList();
    if (filters.isNotEmpty) {
      items = ServerAccess.normalizePath(path) == Endpoints.catalogGroupProd
          ? _filterGroups(items, filters)
          : items.where((e) => _matches(e, filters)).toList();
    }

    // `/profile/discount-vouchers?is_used=true|false`: mock vouchers carry a
    // mock-only `is_used` flag to split them between the two tabs.
    if (query['is_used'] case final isUsed?) {
      items = items
          .where((e) => '${e['is_used'] ?? false}' == '$isUsed')
          .toList();
    }

    return data['meta'] is Map<String, dynamic>
        ? _page(data, items, query)
        : {...data, 'data': items};
  }

  /// `search[n][search_column|search_text|search_condition]`, n from 0.
  static List<({String column, String text, String condition})> _filters(
    Map<String, dynamic> query,
  ) => [
    for (var i = 0; query.containsKey('search[$i][search_column]'); i++)
      (
        column: '${query['search[$i][search_column]']}',
        text: '${query['search[$i][search_text]'] ?? ''}',
        condition: '${query['search[$i][search_condition]'] ?? '='}',
      ),
  ];

  static bool _matches(
    Map<String, dynamic> item,
    List<({String column, String text, String condition})> filters,
  ) => filters.every((f) {
    final value = '${item[f.column] ?? ''}';
    return f.condition == 'like'
        ? value.toLowerCase().contains(f.text.toLowerCase())
        : value == f.text;
  });

  /// `/catalog/lists/group`: filters apply to the products of each group;
  /// groups left without products are dropped.
  static List<Map<String, dynamic>> _filterGroups(
    List<Map<String, dynamic>> groups,
    List<({String column, String text, String condition})> filters,
  ) => [
    for (final group in groups)
      if ([
            for (final p in (group['products'] as List? ?? const []))
              if (p is Map<String, dynamic> &&
                  _matches({'product_group_id': group['id'], ...p}, filters))
                p,
          ]
          case final products when products.isNotEmpty)
        {...group, 'total_product': products.length, 'products': products},
  ];

  static Map<String, dynamic> _page(
    Map<String, dynamic> data,
    List<Map<String, dynamic>> items,
    Map<String, dynamic> query,
  ) {
    final meta = data['meta'] as Map<String, dynamic>;
    final perPage =
        int.tryParse('${query['per_page'] ?? meta['per_page'] ?? 15}') ?? 15;
    final page = int.tryParse('${query['page'] ?? 1}') ?? 1;

    // `per_page <= 0` (e.g. -1) = everything on one page.
    final size = perPage > 0 ? perPage : items.length;
    final offset = (page - 1) * size;
    final pageItems = items.skip(offset).take(size).toList();
    final totalPage = size == 0 ? 0 : (items.length / size).ceil();

    return {
      ...data,
      'data': pageItems,
      'meta': {
        ...meta,
        'total': items.length,
        'page': page,
        'offset': offset,
        'per_page': perPage,
        'total_page': totalPage,
      },
    };
  }

  static String? _detailId(String path) {
    const prefix = '/catalog/show/';
    if (!path.startsWith(prefix)) return null;
    return path.substring(prefix.length).split('/').first;
  }

  /// One detail file serves every product: id and name come from the
  /// branch catalog, an id that is not there answers 404.
  static Future<Object?> _detail(
    String id,
    Map<String, dynamic> data,
    Future<Object?> Function(String endpoint) load,
  ) async {
    final catalog = await load(Endpoints.catalogList);
    final items = catalog is Map ? catalog['data'] : null;
    final item = items is List
        ? items.whereType<Map>().where((e) => '${e['id']}' == id).firstOrNull
        : null;
    if (item == null) return null;

    final detail = data['data'];
    return {
      ...data,
      'data': {
        if (detail is Map<String, dynamic>) ...detail,
        'id': item['id'],
        'name': item['name'],
      },
    };
  }
}
