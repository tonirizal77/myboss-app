import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/home/home_ft.dart';

part 'popular_products_state.dart';

/// "Our Popular Products" (Home): products flagged `is_popular` by the
/// backend for the selected branch, plus the branch's catalog totals for the
/// Home copy ([CatalogStats]). Reloads per branch; the answer of a branch
/// that is no longer selected is dropped.
class PopularProductsCubit extends Cubit<PopularProductsState> {
  PopularProductsCubit() : super(const PopularProductsState());

  Future<void> load(String storeDomain) async {
    emit(
      state.copyWith(
        status: Status.loading,
        storeDomain: storeDomain,
        // Another branch: never show the previous branch's products or
        // totals.
        items: storeDomain == state.storeDomain ? null : const [],
        stats: storeDomain == state.storeDomain ? null : const CatalogStats(),
      ),
    );

    final (result, stats) = await (
      getIt<GetPopularProductsUc>().call(storeDomain),
      getIt<GetCatalogStatsUc>().call(storeDomain),
    ).wait;
    if (isClosed || state.storeDomain != storeDomain) return;

    // Totals failing keep the previous ones of this branch.
    final nextStats = stats.fold((_) => null, (s) => s);

    result.fold(
      (failure) =>
          emit(state.copyWith(status: Status.failed, stats: nextStats)),
      (items) => emit(
        state.copyWith(status: Status.success, items: items, stats: nextStats),
      ),
    );
  }
}
