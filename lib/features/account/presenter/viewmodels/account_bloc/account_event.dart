part of 'account_bloc.dart';

@freezed
abstract class AccountEvent with _$AccountEvent {
  const factory AccountEvent.initial() = _Initial;
  const factory AccountEvent.aboutUs() = _EventAboutUs;
  const factory AccountEvent.faq() = _EventFaq;
  const factory AccountEvent.contactUs() = _EventContactUs;
  const factory AccountEvent.tnc() = _EventTnc;

  const factory AccountEvent.stampsHistory({
    @Default(LoadListData()) LoadListData param,
  }) = _EventStampsHistory;

  const factory AccountEvent.vouchers({@Default({}) DataMap param}) =
      _EventVouchers;

  const factory AccountEvent.reset() = _EventResetAccount;
}
