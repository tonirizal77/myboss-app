part of '../account_bloc.dart';

extension _EventResetAccountHandler on AccountBloc {
  /// Logout/delete account hook. The state holds no user-specific data
  /// any more (aboutUs/faq/tnc/contactUs are general content and are kept;
  /// the member's vouchers live in [MemberVoucherCubit], reset next to this
  /// event), so there is nothing to clear.
  void _onEventResetAccount(
    _EventResetAccount event,
    Emitter<AccountState> emit,
  ) {}
}
