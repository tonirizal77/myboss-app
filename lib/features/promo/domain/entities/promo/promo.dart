import 'package:equatable/equatable.dart';

import 'package:myboss_app/features/home/domain/entities/guest_home/guest_home.dart'
    show RewardPreview;

export 'package:myboss_app/features/home/domain/entities/guest_home/guest_home.dart'
    show RewardPreview;

/// Content of the Promo tab (Figma `promotions`): items to redeem with points
/// and discount vouchers.
class PromoContent extends Equatable {
  const PromoContent({this.rewards = const [], this.vouchers = const []});

  final List<RewardPreview> rewards;
  final List<Voucher> vouchers;

  @override
  List<Object?> get props => [rewards, vouchers];
}

/// Discount voucher shown as a coupon (Figma `voucher`).
class Voucher extends Equatable {
  const Voucher({
    required this.id,
    required this.title,
    required this.discount,
    required this.validUntil,
    required this.code,
    this.terms = const [],
  });

  final String id;

  /// "Promo 12.12"
  final String title;

  /// "Diskon 50%"
  final String discount;

  /// "Hingga 31 Des 2026"
  final String validUntil;
  final String code;
  final List<String> terms;

  @override
  List<Object?> get props => [id, title, discount, validUntil, code, terms];
}
