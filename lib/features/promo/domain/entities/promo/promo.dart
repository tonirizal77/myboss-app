import 'package:equatable/equatable.dart';

import 'package:myboss_app/features/home/domain/entities/guest_home/guest_home.dart'
    show RewardPreview;

export 'package:myboss_app/features/home/domain/entities/guest_home/guest_home.dart'
    show RewardPreview;

/// One request of the Promo content.
enum PromoSection {
  /// `GET /promotion/loyalty-points/list` - signed-in only.
  points,

  /// `GET /promotion/discount-vouchers/list` - guest and signed-in.
  vouchers,
}

/// What to load: the branch and whether the user is signed in.
class PromoParams extends Equatable {
  const PromoParams({this.storeDomain = '', this.isLoggedIn = false});

  /// `url_id` of the selected branch; empty = default domain.
  final String storeDomain;

  /// Guest: vouchers only (no loyalty points). Signed in: both, in parallel.
  final bool isLoggedIn;

  Set<PromoSection> get sections => isLoggedIn
      ? const {PromoSection.points, PromoSection.vouchers}
      : const {PromoSection.vouchers};

  @override
  List<Object?> get props => [storeDomain, isLoggedIn];
}

/// Content of the Promo tab (Figma `promotions`): items to redeem with points
/// and discount vouchers.
class PromoContent extends Equatable {
  const PromoContent({
    this.rewards = const [],
    this.vouchers = const [],
    this.failed = const {},
  });

  final List<RewardPreview> rewards;
  final List<Voucher> vouchers;

  /// Sections whose request failed while the other one succeeded - the UI
  /// shows a retry in that panel instead of failing the whole page.
  final Set<PromoSection> failed;

  @override
  List<Object?> get props => [rewards, vouchers, failed];
}

/// Discount voucher shown as a coupon (Figma `voucher`).
class Voucher extends Equatable {
  const Voucher({
    required this.id,
    required this.title,
    required this.discount,
    this.validUntil,
    this.code = '',
    this.terms = const [],
    this.usedAt,
  });

  final String id;

  /// "Promo 12.12"
  final String title;

  /// "Diskon 50%"
  final String discount;

  /// Last valid day; null = no expiry.
  final DateTime? validUntil;

  /// Empty when the server sends none (the code box is hidden).
  final String code;
  final List<String> terms;

  /// Member vouchers only: when it was used; null = still active.
  final DateTime? usedAt;

  bool get isUsed => usedAt != null;

  /// Terms without the server's own numbering ("1. Discount 10%" ->
  /// "Discount 10%"): the details sheet numbers them itself. Blank lines
  /// are dropped.
  static List<String> cleanTerms(Iterable<Object?> raw) => [
    for (final t in raw)
      if (t != null)
        if ('$t'.replaceFirst(RegExp(r'^\s*\d+[.)]\s*'), '').trim() case final s
            when s.isNotEmpty)
          s,
  ];

  @override
  List<Object?> get props => [
    id,
    title,
    discount,
    validUntil,
    code,
    terms,
    usedAt,
  ];
}
