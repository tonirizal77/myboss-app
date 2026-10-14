part of '../account_bloc.dart';

extension _EventReasonsHandler on AccountBloc {
  void _onEventReasons(_EventReasons event, Emitter<AccountState> emit) async {
    emit(state.copyWith(respon: Respons.loading, event: event.runtimeType));

    final result = await getIt<GetReasonsUc>().call();

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
            reasons: _r,
          ),
        );
      },
    );
  }
}
