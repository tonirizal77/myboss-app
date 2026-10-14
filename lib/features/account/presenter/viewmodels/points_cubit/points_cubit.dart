import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/account/account_ft.dart';

part 'points_state.dart';

/// Points balance + history (Account overview and Points page).
class PointsCubit extends Cubit<PointsState> {
  PointsCubit() : super(const PointsState());

  Future<void> load() async {
    if (state.status == Status.loading) return;

    emit(state.copyWith(status: Status.loading));

    final summary = await getIt<GetPointsSummaryUc>().call();
    final history = await getIt<GetPointHistoryUc>().call();

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

    emit(
      state.copyWith(
        status: Status.success,
        errorMessage: '',
        summary: summary.getOrElse(() => const PointsSummary()),
        history: history.getOrElse(() => const []),
      ),
    );
  }
}
