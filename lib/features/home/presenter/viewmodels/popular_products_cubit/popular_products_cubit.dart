import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/home/home_ft.dart';

part 'popular_products_state.dart';

/// "Our Popular Products" (Home, signed in): products flagged `is_popular`
/// by the backend for the selected branch. Reloads per branch; the answer of
/// a branch that is no longer selected is dropped.
class PopularProductsCubit extends Cubit<PopularProductsState> {
  PopularProductsCubit() : super(const PopularProductsState());

  Future<void> load(String storeDomain) async {
    emit(
      state.copyWith(
        status: Status.loading,
        storeDomain: storeDomain,
        // Another branch: never show the previous branch's products.
        items: storeDomain == state.storeDomain ? null : const [],
      ),
    );

    final result = await getIt<GetPopularProductsUc>().call(storeDomain);
    if (isClosed || state.storeDomain != storeDomain) return;

    result.fold(
      (failure) => emit(state.copyWith(status: Status.failed)),
      (items) => emit(state.copyWith(status: Status.success, items: items)),
    );
  }
}
