part of '../account_bloc.dart';

extension _EventAboutUsHandler on AccountBloc {
  void _onEventAboutUs(_EventAboutUs event, Emitter<AccountState> emit) async {
    emit(state.copyWith(respon: Respons.loading, event: event.runtimeType));

    final result = await getIt<GetAboutUsUc>().call();

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
            aboutUs: _r,
          ),
        );
      },
    );
  }
}
