part of 'member_voucher_cubit.dart';

class MemberVoucherState extends Equatable {
  const MemberVoucherState({
    this.tab = VoucherStatus.active,
    this.active = const VoucherListState(),
    this.used = const VoucherListState(),
  });

  final VoucherStatus tab;
  final VoucherListState active;
  final VoucherListState used;

  VoucherListState of(VoucherStatus status) =>
      status == VoucherStatus.active ? active : used;

  /// Unused vouchers (all pages) - Account page count.
  int get activeCount => active.total;

  MemberVoucherState update(VoucherStatus status, VoucherListState list) =>
      status == VoucherStatus.active
      ? copyWith(active: list)
      : copyWith(used: list);

  MemberVoucherState copyWith({
    VoucherStatus? tab,
    VoucherListState? active,
    VoucherListState? used,
  }) => MemberVoucherState(
    tab: tab ?? this.tab,
    active: active ?? this.active,
    used: used ?? this.used,
  );

  @override
  List<Object?> get props => [tab, active, used];
}

/// One tab: loaded pages and the paging position.
class VoucherListState extends Equatable {
  const VoucherListState({
    this.status = Status.initial,
    this.items = const [],
    this.page = 0,
    this.totalPage = 0,
    this.total = 0,
    this.loadingMore = false,
    this.errorMessage = '',
  });

  final Status status;
  final List<Voucher> items;
  final int page;
  final int totalPage;
  final int total;
  final bool loadingMore;
  final String errorMessage;

  bool get hasMore => page < totalPage;

  VoucherListState copyWith({
    Status? status,
    List<Voucher>? items,
    int? page,
    int? totalPage,
    int? total,
    bool? loadingMore,
    String? errorMessage,
  }) => VoucherListState(
    status: status ?? this.status,
    items: items ?? this.items,
    page: page ?? this.page,
    totalPage: totalPage ?? this.totalPage,
    total: total ?? this.total,
    loadingMore: loadingMore ?? this.loadingMore,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object?> get props => [
    status,
    items,
    page,
    totalPage,
    total,
    loadingMore,
    errorMessage,
  ];
}
