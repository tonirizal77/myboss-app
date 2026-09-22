part of '../account_bloc.dart';

extension _EventTncHandler on AccountBloc {
  void _onEventTnc(_EventTnc event, Emitter<AccountState> emit) async {
    emit(state.copyWith(respon: Respons.loading, event: event.runtimeType));

    final result = await getIt<GetTncUc>().call();

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
          state.copyWith(respon: Respons.success, errorMessage: "", tnc: _r),
        );
      },
    );
  }
}
