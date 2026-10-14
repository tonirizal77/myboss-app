import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/home/home_ft.dart';

part 'guest_home_state.dart';

/// Loads the content of the guest Home page.
class GuestHomeCubit extends Cubit<GuestHomeState> {
  GuestHomeCubit() : super(const GuestHomeState());

  Future<void> load() async {
    if (state.status == Status.loading) return;

    emit(state.copyWith(status: Status.loading));

    final result = await getIt<GetGuestHomeUc>().call();

    result.fold(
      (failure) => emit(
        state.copyWith(
          status: Status.failed,
          errorMessage: failure.error.message,
        ),
      ),
      (data) => emit(
        state.copyWith(status: Status.success, data: data, errorMessage: ''),
      ),
    );
  }
}
