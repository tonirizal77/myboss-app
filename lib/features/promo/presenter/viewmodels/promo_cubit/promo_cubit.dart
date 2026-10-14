import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/promo/promo_ft.dart';

part 'promo_state.dart';

/// Promo tab: content + selected tab (All / Points / Voucher).
class PromoCubit extends Cubit<PromoState> {
  PromoCubit() : super(const PromoState());

  Future<void> load() async {
    if (state.status == Status.loading) return;

    emit(state.copyWith(status: Status.loading));

    final result = await getIt<GetPromoUc>().call();

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failed,
          errorMessage: failure.error.message,
        ),
      ),
      (content) => emit(
        state.copyWith(
          status: Status.success,
          content: content,
          errorMessage: '',
        ),
      ),
    );
  }

  void selectTab(PromoTab tab) => emit(state.copyWith(tab: tab));
}
