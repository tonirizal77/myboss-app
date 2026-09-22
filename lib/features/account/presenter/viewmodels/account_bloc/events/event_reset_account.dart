part of '../account_bloc.dart';

extension _EventResetAccountHandler on AccountBloc {
  /// Drop persisted (hydrated) vouchers/stamps history back to default -
  /// otherwise the previous logged-in user's data keeps showing after
  /// logout/delete account since HydratedBloc restores it from disk.
  /// aboutUs/faq/tnc/contactUs are general content, not user-specific,
  /// so they are kept as-is.
  void _onEventResetAccount(
    _EventResetAccount event,
    Emitter<AccountState> emit,
  ) {
    emit(
      state.copyWith(
        stampsHistory: const StampsHistoryModel(),
        vouchers: const VoucherListModel(),
      ),
    );
  }
}
