part of '../account_bloc.dart';

extension _EventVouchersHandler on AccountBloc {
  void _onEventVouchers(
    _EventVouchers event,
    Emitter<AccountState> emit,
  ) async {
    emit(state.copyWith(respon: Respons.loading, event: event.runtimeType));

    final result = await getIt<GetVouchersUc>().call();

    result.fold(
      (_l) {
        emit(
          state.copyWith(
            respon: Respons.failure,
            errorMessage: _l.error.message,
          ),
        );
      },
      (_r) {
        emit(
          state.copyWith(
            respon: Respons.success,
            errorMessage: "",
            vouchers: _r,
          ),
        );
      },
    );
  }
}
