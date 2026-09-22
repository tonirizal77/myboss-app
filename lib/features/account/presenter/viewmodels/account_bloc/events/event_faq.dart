part of '../account_bloc.dart';

extension _EventFaqHandler on AccountBloc {
  void _onEventFaq(_EventFaq event, Emitter<AccountState> emit) async {
    emit(state.copyWith(respon: Respons.loading, event: event.runtimeType));

    final result = await getIt<GetFaqUc>().call();

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
          state.copyWith(respon: Respons.success, errorMessage: "", faq: _r),
        );
      },
    );
  }
}
