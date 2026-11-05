import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/product/product_ft.dart';

part 'product_state.dart';

/// Product tab: category tabs, brand chips and the catalog of the selected
/// branch. Category, brand and search are filtered by the server.
class ProductCubit extends Cubit<ProductState> {
  ProductCubit({this.searchDelay = const Duration(milliseconds: 400)})
    : super(const ProductState());

  /// Debounce of [search].
  final Duration searchDelay;

  Timer? _searchTimer;

  /// Bumped by every catalog request; a response for an older one is
  /// dropped (filters changed meanwhile).
  int _request = 0;

  /// Search term of the last catalog request.
  String _searched = '';

  /// Tabs, chips and the current view. [storeDomain] = `url_id` of the
  /// selected branch (default: the current one).
  Future<void> load({String? storeDomain}) async {
    final domain = storeDomain ?? state.storeDomain;
    if (domain != state.storeDomain) {
      // Group / brand ids belong to a store: start over on another branch.
      emit(state.copyWith(storeDomain: domain, categoryId: '', brandId: ''));
    }

    final query = CatalogQuery(storeDomain: domain);
    final categories = getIt<GetProductCategoriesUc>().call(query);
    final brands = getIt<GetProductBrandsUc>().call(query);
    final view = _fetch();

    (await categories).fold(
      (_) {},
      (data) => _emit(state.copyWith(categories: data)),
    );
    (await brands).fold((_) {}, (data) => _emit(state.copyWith(brands: data)));
    await view;
  }

  /// Selected branch changed; [storeDomain] = its `url_id`.
  Future<void> changeBranch(String storeDomain) async {
    if (storeDomain == state.storeDomain) return;
    await load(storeDomain: storeDomain);
  }

  /// Empty id = All.
  Future<void> selectCategory(String id) async {
    if (id == state.categoryId) return;
    emit(state.copyWith(categoryId: id, products: const [], page: 1));
    await _fetch();
  }

  /// Empty id = all brands.
  Future<void> selectBrand(String id) async {
    if (id == state.brandId) return;
    emit(state.copyWith(brandId: id));
    await _fetch();
  }

  /// Server search after [searchDelay]; under 2 characters = no search.
  void search(String query) {
    emit(state.copyWith(query: query));
    _searchTimer?.cancel();
    _searchTimer = Timer(searchDelay, () {
      if (state.searchTerm != _searched) _fetch();
    });
  }

  /// Next page of the category grid.
  Future<void> loadMore() async {
    if (!state.hasMore || state.loadingMore) return;
    if (state.status == Status.loading) return;

    await _fetch(more: true);
  }

  Future<void> _fetch({bool more = false}) async {
    final request = ++_request;
    final query = CatalogQuery(
      storeDomain: state.storeDomain,
      categoryId: state.categoryId,
      brandId: state.brandId,
      search: state.searchTerm,
      page: more ? state.page + 1 : 1,
    );
    _searched = query.search;

    _emit(
      more
          ? state.copyWith(loadingMore: true)
          : state.copyWith(status: Status.loading, loadingMore: false),
    );

    if (state.isAll) {
      final result = await getIt<GetProductGroupsUc>().call(query);
      if (request != _request) return;

      return result.fold(
        (failure) => _failed(failure.error.message),
        (groups) => _emit(
          state.copyWith(
            status: Status.success,
            groups: groups,
            errorMessage: '',
          ),
        ),
      );
    }

    final result = await getIt<GetProductsUc>().call(query);
    if (request != _request) return;

    result.fold(
      (failure) => more
          ? _emit(state.copyWith(loadingMore: false))
          : _failed(failure.error.message),
      (list) => _emit(
        state.copyWith(
          status: Status.success,
          products: more ? [...state.products, ...list.items] : list.items,
          page: list.page,
          totalPage: list.totalPage,
          loadingMore: false,
          errorMessage: '',
        ),
      ),
    );
  }

  void _failed(String message) => _emit(
    state.copyWith(
      status: Status.failed,
      loadingMore: false,
      errorMessage: message,
    ),
  );

  /// Responses can arrive after the cubit is closed (tests, hot restart).
  void _emit(ProductState next) {
    if (!isClosed) emit(next);
  }

  @override
  Future<void> close() {
    _searchTimer?.cancel();
    return super.close();
  }
}
