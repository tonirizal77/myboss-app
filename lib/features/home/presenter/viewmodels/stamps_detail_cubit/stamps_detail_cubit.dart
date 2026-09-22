import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/home/home_ft.dart';

part 'stamps_detail_cubit.freezed.dart';
part 'stamps_detail_cubit.g.dart';
part 'stamps_detail_state.dart';

class StampsDetailCubit extends Cubit<StampsDetailState> {
  StreamSubscription? stampsSocketStream;

  StampsDetailCubit() : super(const StampsDetailState());

  Future<void> getDetail(int id) async {
    emit(state.copyWith(status: Status.loading));

    final result = await getIt<GetDetailStampsUc>().call(id);

    result.fold(
      (_l) {
        emit(
          state.copyWith(status: Status.failed, errorMessage: _l.error.message),
        );
      },
      (_r) {
        emit(
          state.copyWith(
            status: Status.success,
            errorMessage: "",
            stampsDetail: _r,
          ),
        );
      },
    );
  }
}
