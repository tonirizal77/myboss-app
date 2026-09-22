import 'dart:async';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:myboss_app/features/home/home_ft.dart';

part 'stamps_cubit.freezed.dart';
part 'stamps_cubit.g.dart';
part 'stamps_state.dart';

class StampsCubit extends HydratedCubit<StampsState> {
  StreamSubscription? stampsSocketStream;

  StampsCubit() : super(const StampsState());

  Future<void> getStamps({DataMap? param}) async {
    emit(state.copyWith(status: Status.loading, action: ActionStamps.getList));

    final result = await getIt<GetStampsUc>().call(param ?? {});

    result.fold(
      (_l) {
        emit(
          state.copyWith(status: Status.failed, errorMessage: _l.error.message),
        );
      },
      (_r) {
        emit(
          state.copyWith(status: Status.success, errorMessage: "", stamps: _r),
        );
      },
    );
  }

  Future<void> getStampsBreak() async {
    emit(state.copyWith(status: Status.loading, action: ActionStamps.getList));

    final result = await getIt<GetStampsOptionUc>().call();

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
            stampsOptions: _r,
          ),
        );
      },
    );
  }

  @override
  StampsState? fromJson(Map<String, dynamic> json) {
    return StampsState(
      stamps: StampsModel.fromJson(json['stamps']),
      stampsOptions: StampsOptionModel.fromJson(json['stamps_options']),
      stampsNotif: StampsNotifModel.fromJson(json['stamps_notif']),
    );
  }

  @override
  Map<String, dynamic>? toJson(StampsState state) {
    return {
      'stamps': state.stamps.toJson(),
      'stamps_notif': state.stampsNotif.toJson(),
      'stamps_options': state.stampsOptions.toJson(),
    };
  }
}
