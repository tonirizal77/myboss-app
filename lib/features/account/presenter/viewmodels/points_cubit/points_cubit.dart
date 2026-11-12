import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/account/account_ft.dart';

part 'points_state.dart';

/// Points balance + history (Account overview and Points page). The history
/// is paged (`/profile/loyalty-points` `meta`): [load] gets the first page,
/// [loadMore] appends the next one.
class PointsCubit extends Cubit<PointsState> {
  PointsCubit() : super(const PointsState());

  /// Bumped by [load]; a [loadMore] answering after a reload is dropped.
  int _request = 0;

  Future<void> load() async {
    if (state.status == Status.loading) return;

    final request = ++_request;
    emit(state.copyWith(status: Status.loading, loadingMore: false));

    final summary = await getIt<GetPointsSummaryUc>().call();
    final history = await getIt<GetPointHistoryUc>().call(1);
    if (isClosed || request != _request) return;

    final failure =
        summary.fold((l) => l, (_) => null) ??
        history.fold((l) => l, (_) => null);

    if (failure != null) {
      emit(
        state.copyWith(
          status: Status.failed,
          errorMessage: failure.error.message,
        ),
      );
      return;
    }

    final page = history.getOrElse(() => const PointHistoryPage());
    emit(
      state.copyWith(
        status: Status.success,
        errorMessage: '',
        summary: summary.getOrElse(() => const PointsSummary()),
        history: page.items,
        page: page.page,
        totalPage: page.totalPage,
      ),
    );
  }

  /// Next history page, appended. A failure keeps the rows already shown
  /// (scrolling to the end again retries).
  Future<void> loadMore() async {
    if (!state.hasMore || state.loadingMore) return;
    if (state.status == Status.loading) return;

    final request = _request;
    emit(state.copyWith(loadingMore: true));

    final result = await getIt<GetPointHistoryUc>().call(state.page + 1);
    if (isClosed || request != _request) return;

    result.fold(
      (_) => emit(state.copyWith(loadingMore: false)),
      (page) => emit(
        state.copyWith(
          loadingMore: false,
          history: [...state.history, ...page.items],
          page: page.page,
          totalPage: page.totalPage,
        ),
      ),
    );
  }
}
