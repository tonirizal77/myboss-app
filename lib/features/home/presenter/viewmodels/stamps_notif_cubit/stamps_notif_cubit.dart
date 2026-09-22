import 'dart:async';
import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

part 'stamps_notif_cubit.freezed.dart';
part 'stamps_notif_cubit.g.dart';
part 'stamps_notif_state.dart';

class StampsNotifCubit extends Cubit<StampsNotifState> {
  StreamSubscription? stampsSocketStream;

  StampsNotifCubit() : super(const StampsNotifState());

  FutureOr<void> initializeSocket() async {
    PrintHelper.printError('__initialize notif socket');

    /// initialize (reset)
    emit(state.copyWith(action: ActionNotif.initialize));

    /// Set the stream subscription
    await stampsSocketStream?.cancel();

    getIt<StreamSocket>().dispose();

    /// Connect and listen to socket
    getIt<StreamSocket>().connectAndListen();

    /// Set the stream subscription
    // await stampsSocketStream?.cancel();

    PrintHelper.printError('__initialize new stream');

    stampsSocketStream = getIt<StreamSocket>().getResponse.listen((event) {
      /// If data is the same or contains self order ID. then emit stamps success
      if (event != null) getNotif(event);
    });
  }

  FutureOr<void> getNotif(String notif) async {
    PrintHelper.printWarning('__success stamps Socket: $notif');

    final _eventData = jsonDecode(notif);
    final _data = StampsNotifModel.fromJson(_eventData);

    final int _custId = _data.data.customerId ?? 0;

    if (_custId == AccountFlows.profile.id) {
      /// If data is obtained, then add that response
      emit(
        state.copyWith(
          stampsNotif: _data,
          action: ActionNotif.getNotif,
          status: Status.success,
        ),
      );
    } else {
      PrintHelper.printError("__NOTIF beda Customer ID: $_custId");
    }
  }
}
