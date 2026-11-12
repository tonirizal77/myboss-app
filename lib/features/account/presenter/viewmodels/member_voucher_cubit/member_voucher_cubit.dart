import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/account/account_ft.dart';
import 'package:myboss_app/features/promo/domain/entities/promo/promo.dart'
    show Voucher;

part 'member_voucher_state.dart';

/// The member's own vouchers (`GET /profile/discount-vouchers`): Active /
/// Used tabs of the Vouchers page, paged with "Load more". The Active total
/// is also the voucher count on the Account page.
class MemberVoucherCubit extends Cubit<MemberVoucherState> {
  MemberVoucherCubit() : super(const MemberVoucherState());

  /// Bumped by [reset] so answers of a previous session are dropped.
  int _session = 0;

  /// Store domain (branch `url_id`) the vouchers are read from; empty =
  /// default domain.
  String _storeDomain = '';

  /// Another branch: its vouchers are different, drop the loaded ones.
  void _useBranch(String? storeDomain) {
    if (storeDomain == null || storeDomain == _storeDomain) return;
    _storeDomain = storeDomain;
    _session++;
    emit(MemberVoucherState(tab: state.tab));
  }

  /// Language changed: the server texts (title, discount, `tnc`) come in the
  /// language of the request, so every tab already loaded is fetched again
  /// (first page). Tabs never opened stay untouched; the rows shown keep
  /// showing until the new ones arrive.
  Future<void> reloadLoaded() => Future.wait([
    for (final status in VoucherStatus.values)
      if (state.of(status).status != Status.initial) load(status),
  ]);

  /// First page of [status] (open, pull to refresh, Refresh button).
  /// [storeDomain]: branch to read from; null keeps the current one.
  Future<void> load(VoucherStatus status, {String? storeDomain}) async {
    _useBranch(storeDomain);
    final current = state.of(status);
    if (current.status == Status.loading) return;

    emit(state.update(status, current.copyWith(status: Status.loading)));
    await _fetch(status, page: 1);
  }

  /// Next page of [status], appended to the list.
  Future<void> loadMore(VoucherStatus status) async {
    final current = state.of(status);
    if (!current.hasMore || current.loadingMore) return;
    if (current.status == Status.loading) return;

    emit(state.update(status, current.copyWith(loadingMore: true)));
    await _fetch(status, page: current.page + 1);
  }

  /// Vouchers page opened: Active tab, fresh first page. Used is marked
  /// stale and reloads when its tab is shown.
  Future<void> open({String? storeDomain}) {
    _useBranch(storeDomain);
    emit(
      state.copyWith(tab: VoucherStatus.active, used: const VoucherListState()),
    );
    return load(VoucherStatus.active);
  }

  /// Switches tab; loads it the first time it is shown.
  void selectTab(VoucherStatus status) {
    if (state.tab != status) emit(state.copyWith(tab: status));
    if (state.of(status).status == Status.initial) load(status);
  }

  /// Logout / account deleted: drop the previous member's vouchers.
  void reset() {
    _session++;
    _storeDomain = '';
    emit(const MemberVoucherState());
  }

  Future<void> _fetch(VoucherStatus status, {required int page}) async {
    final session = _session;
    final result = await getIt<GetMemberVouchersUc>().call((
      status: status,
      page: page,
      storeDomain: _storeDomain,
    ));
    if (isClosed || session != _session) return;

    final current = state.of(status);
    final next = result.fold(
      (l) => current.copyWith(
        // A failed "Load more" keeps the list: only the button comes back.
        status: page == 1 ? Status.failed : current.status,
        loadingMore: false,
        errorMessage: l.error.message,
      ),
      (r) => current.copyWith(
        status: Status.success,
        loadingMore: false,
        errorMessage: '',
        items: page == 1 ? r.items : [...current.items, ...r.items],
        page: r.page,
        totalPage: r.totalPage,
        total: r.total,
      ),
    );

    emit(state.update(status, next));
  }
}
