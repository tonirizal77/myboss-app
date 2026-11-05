import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/promo/promo_ft.dart';

part 'promo_state.dart';

/// Promo content of the selected branch and the selected tab
/// (All / Points / Voucher). Shared by the Promo tab and Home.
///
/// - Guest: vouchers only (`promoVoucherList`).
/// - Signed in: rewards + vouchers in parallel (`promoPointList` +
///   `promoVoucherList`).
class PromoCubit extends Cubit<PromoState> {
  PromoCubit() : super(const PromoState());

  /// Bumped by every request; an older response (previous branch or login
  /// state) is dropped.
  int _request = 0;

  /// Content for [storeDomain] (`url_id`) and [isLoggedIn] (default: the
  /// current ones). Already loaded / loading for the same params -> nothing,
  /// unless [force] (pull to refresh, retry) or the last load failed.
  Future<void> load({
    String? storeDomain,
    bool? isLoggedIn,
    bool force = false,
  }) async {
    final params = PromoParams(
      storeDomain: storeDomain ?? state.params.storeDomain,
      isLoggedIn: isLoggedIn ?? state.params.isLoggedIn,
    );
    final same = params == state.params && state.status != Status.initial;
    if (same && !force && state.status != Status.failed) return;

    /// Signed in <-> guest: drop the other session's content right away, so
    /// a guest never sees the rewards of the previous user while loading.
    final sessionChanged = params.isLoggedIn != state.params.isLoggedIn;

    final request = ++_request;
    emit(
      state.copyWith(
        status: Status.loading,
        params: params,
        content: sessionChanged ? const PromoContent() : null,
        errorMessage: '',
      ),
    );

    final result = await getIt<GetPromoUc>().call(params);
    if (isClosed || request != _request) return;

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

  /// Reload the current branch and session (error retry, pull to refresh).
  Future<void> retry() => load(force: true);

  void selectTab(PromoTab tab) => emit(state.copyWith(tab: tab));
}
