part of 'promo_cubit.dart';

enum PromoTab { all, points, voucher }

class PromoState extends Equatable {
  const PromoState({
    this.status = Status.initial,
    this.content = const PromoContent(),
    this.tab = PromoTab.all,
    this.errorMessage = '',
  });

  final Status status;
  final PromoContent content;
  final PromoTab tab;
  final String errorMessage;

  PromoState copyWith({
    Status? status,
    PromoContent? content,
    PromoTab? tab,
    String? errorMessage,
  }) => PromoState(
    status: status ?? this.status,
    content: content ?? this.content,
    tab: tab ?? this.tab,
    errorMessage: errorMessage ?? this.errorMessage,
  );

  @override
  List<Object?> get props => [status, content, tab, errorMessage];
}
