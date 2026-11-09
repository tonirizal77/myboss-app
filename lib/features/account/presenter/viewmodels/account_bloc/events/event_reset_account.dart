part of '../account_bloc.dart';

extension _EventResetAccountHandler on AccountBloc {
  /// Logout/delete account hook. The state holds no user-specific data
  /// any more (aboutUs/faq/tnc/contactUs are general content and are kept;
  /// vouchers moved to [PromoCubit], which drops its content when the
  /// session changes - PRD-011), so there is nothing to clear.
  void _onEventResetAccount(
    _EventResetAccount event,
    Emitter<AccountState> emit,
  ) {}
}
