part of '../datas.dart';

/// 2.a [Remote] Data - MyBoss product catalog.
///
/// Every request goes to the store domain of the selected branch
/// ([CatalogQuery.storeDomain], see [ConfigServer.urlFor]).
abstract class ProductRemote {
  /// `GET /catalog/group/lists` - category tabs.
  ResultFuture<CatalogGroupsModel> getGroups(CatalogQuery query);

  /// `GET /catalog/brand/lists` - brand chips.
  ResultFuture<CatalogBrandsModel> getBrands(CatalogQuery query);

  /// `GET /catalog/lists/group` - "All" view, brand / name filters.
  ResultFuture<CatalogGroupsModel> getGroupProducts(CatalogQuery query);

  /// `GET /catalog/lists` - grid of one category, all filters + paging.
  ResultFuture<CatalogListModel> getProducts(CatalogQuery query);

  /// `GET /catalog/show/{id}` - product details.
  ResultFuture<CatalogDetail> getDetail(String id, String storeDomain);
}

/// 2.b [Remote] Data Implementasi
class ProductRemoteImpl implements ProductRemote {
  const ProductRemoteImpl();

  /// Lists that fill one bar (tabs, chips, "All" sections) - server default
  /// is 15.
  ///
  /// TODO(backend): 100 is an app-side guess, not a confirmed server limit.
  /// Ask BE for the max `per_page` (or an "all" value such as `-1`) and use
  /// it here; above the real limit the list is cut off or the request fails.
  static const _all = {'per_page': 100};

  @override
  ResultFuture<CatalogGroupsModel> getGroups(CatalogQuery query) => _get(
    Endpoints.catalogGroupList,
    query.storeDomain,
    queryParameters: _all,
    parse: CatalogGroupsModel.fromJson,
  );

  @override
  ResultFuture<CatalogBrandsModel> getBrands(CatalogQuery query) => _get(
    Endpoints.catalogBrandList,
    query.storeDomain,
    queryParameters: _all,
    parse: CatalogBrandsModel.fromJson,
  );

  @override
  ResultFuture<CatalogGroupsModel> getGroupProducts(CatalogQuery query) => _get(
    Endpoints.catalogGroupProd,
    query.storeDomain,
    // The category filter is the "All" view itself - never sent here.
    queryParameters: {
      ...query.copyWith(categoryId: '').filters,
      ..._all,
    },
    parse: CatalogGroupsModel.fromJson,
  );

  @override
  ResultFuture<CatalogListModel> getProducts(CatalogQuery query) => _get(
    Endpoints.catalogList,
    query.storeDomain,
    queryParameters: query.params,
    parse: CatalogListModel.fromJson,
  );

  @override
  ResultFuture<CatalogDetail> getDetail(String id, String storeDomain) => _get(
    Endpoints.catalogShow.replaceFirst('{id}', id),
    storeDomain,
    parse: (json) => CatalogDetail.fromJson(json['data']),
  );

  static ResultFuture<T> _get<T>(
    String endpoint,
    String storeDomain, {
    DataMap? queryParameters,
    required T Function(DataMap json) parse,
  }) async {
    final result = await DioGet.call(
      url: ConfigServer.urlFor(endpoint, storeDomain: storeDomain),
      queryParameters: queryParameters,
    );

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(parse(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
