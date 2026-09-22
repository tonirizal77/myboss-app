part of '../account_bloc.dart';

extension _EventStampsHistoryHandler on AccountBloc {
  void _onEventStampsHistory(
    _EventStampsHistory event,
    Emitter<AccountState> emit,
  ) async {
    final _param = event.param;
    final _respon = _param.refresh ? Respons.loading : Respons.loadmore;
    final _filter = _param.filters;

    emit(state.copyWith(respon: _respon, event: event.runtimeType));

    final result = await getIt<HistoryStampsUc>().call(_filter);

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
        /// Old List
        List<StampsHistory> _oldList = _param.refresh
            ? []
            : state.stampsHistory.data?.toList() ?? [];

        final _newData = _r.data?.toList() ?? [];
        _oldList.addAll(_newData);

        final _newList = _r.copyWith(data: _oldList);

        emit(
          state.copyWith(
            respon: Respons.success,
            errorMessage: "",
            stampsHistory: _newList,
          ),
        );
      },
    );
  }
}
