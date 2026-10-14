import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/menu/menu_ft.dart';

part 'product_state.dart';

/// Product tab: catalog + category / brand / search filters.
class ProductCubit extends Cubit<ProductState> {
  ProductCubit() : super(const ProductState());

  Future<void> load() async {
    if (state.status == Status.loading) return;

    emit(state.copyWith(status: Status.loading));

    final result = await getIt<GetProductCatalogUc>().call();

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failed,
          errorMessage: failure.error.message,
        ),
      ),
      (catalog) => emit(
        state.copyWith(
          status: Status.success,
          catalog: catalog,
          errorMessage: '',
        ),
      ),
    );
  }

  /// Empty id = All.
  void selectCategory(String id) => emit(state.copyWith(categoryId: id));

  /// Empty = all brands.
  void selectBrand(String brand) => emit(state.copyWith(brand: brand));

  void search(String query) => emit(state.copyWith(query: query));
}
