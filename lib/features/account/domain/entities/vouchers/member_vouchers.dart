import 'package:equatable/equatable.dart';

import 'package:myboss_app/features/promo/domain/entities/promo/promo.dart'
    show Voucher;

/// Tabs of the Vouchers page; [isUsed] is the `is_used` query param.
enum VoucherStatus {
  active(false),
  used(true);

  const VoucherStatus(this.isUsed);

  final bool isUsed;
}

/// One page of the member's vouchers.
class MemberVoucherPage extends Equatable {
  const MemberVoucherPage({
    this.items = const [],
    this.page = 1,
    this.totalPage = 1,
    this.total = 0,
  });

  final List<Voucher> items;
  final int page;
  final int totalPage;

  /// All vouchers of this status (every page).
  final int total;

  @override
  List<Object?> get props => [items, page, totalPage, total];
}
