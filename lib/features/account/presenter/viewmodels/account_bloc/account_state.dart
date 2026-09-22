part of 'account_bloc.dart';

@freezed
abstract class AccountState with _$AccountState {
  const factory AccountState({
    Type? event,
    @Default(Respons.initial) Respons respon,
    @Default('') String errorMessage,

    /// Models Data
    @Default(AboutUsModel()) AboutUsModel aboutUs,
    @Default(FaqModel()) FaqModel faq,
    @Default(TncModel()) TncModel tnc,
    @Default(ContactUsModel()) ContactUsModel contactUs,
    @Default(StampsHistoryModel()) StampsHistoryModel stampsHistory,
    @Default(VoucherListModel()) VoucherListModel vouchers,
    @Default(LoadListData()) LoadListData filter,
  }) = _AccountState;
}
