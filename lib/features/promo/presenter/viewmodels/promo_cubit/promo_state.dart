part of 'promo_cubit.dart';

enum PromoTab { all, points, voucher }

class PromoState extends Equatable {
  const PromoState({
    this.status = Status.initial,
    this.content = const PromoContent(),
    this.tab = PromoTab.all,
    this.errorMessage = '',
    this.params = const PromoParams(),
  });

  /// Whole request: `failed` only when every requested section failed (see
  /// [PromoContent.failed] for a single failed section).
  final Status status;
  final PromoContent content;
  final PromoTab tab;
  final String errorMessage;

  /// Branch + guest/signed-in the [content] belongs to.
  final PromoParams params;

  /// `url_id` of the branch [content] belongs to; empty = default domain.
  String get storeDomain => params.storeDomain;

  /// First load (nothing to show yet) - full-page loader.
  bool get isFirstLoad =>
      status == Status.loading &&
      content.rewards.isEmpty &&
      content.vouchers.isEmpty;

  PromoState copyWith({
    Status? status,
    PromoContent? content,
    PromoTab? tab,
    String? errorMessage,
    PromoParams? params,
  }) => PromoState(
    status: status ?? this.status,
    content: content ?? this.content,
    tab: tab ?? this.tab,
    errorMessage: errorMessage ?? this.errorMessage,
    params: params ?? this.params,
  );

  @override
  List<Object?> get props => [status, content, tab, errorMessage, params];
}
