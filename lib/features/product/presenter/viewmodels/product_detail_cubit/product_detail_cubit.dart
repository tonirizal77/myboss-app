import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/product/product_ft.dart';

part 'product_detail_state.dart';

/// Product details sheet: starts with the card (name, cover) and fills in
/// label, description, specifications and related products from
/// `GET /catalog/show/{id}`. One instance per sheet.
class ProductDetailCubit extends Cubit<ProductDetailState> {
  ProductDetailCubit({required Product product, required this.storeDomain})
    : super(ProductDetailState(product: product));

  /// `url_id` of the selected branch.
  final String storeDomain;

  int _request = 0;

  /// Details of [product] (default: the current one) - also used to open a
  /// related product in the same sheet.
  Future<void> open([Product? product]) async {
    final card = product ?? state.product;
    final request = ++_request;
    emit(ProductDetailState(product: card, status: Status.loading));

    final result = await getIt<GetProductDetailUc>().call((
      card: card,
      storeDomain: storeDomain,
    ));
    // Sheet closed or another product opened meanwhile.
    if (isClosed || request != _request) return;

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failed,
          errorMessage: failure.error.message,
        ),
      ),
      (detail) => emit(state.copyWith(status: Status.success, product: detail)),
    );
  }
}
