import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

part 'account_bloc.freezed.dart';
part 'account_event.dart';
part 'account_state.dart';

/// Handlers Event
/// - About Us
/// - FAQ
/// - TNC
/// - Contact Us
/// - Stamps History
/// - Vouchers
/// - Reset (user-specific data on logout/delete account)
part 'events/event_about_us.dart';
part 'events/event_faq.dart';
part 'events/event_contact_us.dart';
part 'events/event_tnc.dart';
part 'events/event_stamps_history.dart';
part 'events/event_vouchers.dart';
part 'events/event_reset_account.dart';

class AccountBloc extends HydratedBloc<AccountEvent, AccountState> {
  AccountBloc() : super(const AccountState()) {
    on<_EventAboutUs>(_onEventAboutUs);
    on<_EventFaq>(_onEventFaq);
    on<_EventContactUs>(_onEventContactUs);
    on<_EventTnc>(_onEventTnc);
    on<_EventStampsHistory>(_onEventStampsHistory);
    on<_EventVouchers>(_onEventVouchers);
    on<_EventResetAccount>(_onEventResetAccount);
  }

  @override
  AccountState? fromJson(Map<String, dynamic> json) {
    return state.copyWith(
      aboutUs: AboutUsModel.fromJson(json['about_us']),
      faq: FaqModel.fromJson(json['faq']),
      tnc: TncModel.fromJson(json['tnc']),
      contactUs: ContactUsModel.fromJson(json['contact_us']),
      stampsHistory: StampsHistoryModel.fromJson(json['stamps_history']),
      vouchers: VoucherListModel.fromJson(json['vouchers']),
    );
  }

  @override
  Map<String, dynamic>? toJson(AccountState state) {
    return {
      'about_us': state.aboutUs.toJson(),
      'faq': state.faq.toJson(),
      'tnc': state.tnc.toJson(),
      'contact_us': state.contactUs.toJson(),
      'stamps_history': state.stampsHistory.toJson(),
      'vouchers': state.vouchers.toJson(),
    };
  }
}
