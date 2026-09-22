import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

part 'verify_event.dart';
part 'verify_state.dart';
part 'verify_bloc.freezed.dart';

/// Handlers Event
part 'events/event_get_otp.dart';
part 'events/event_get_new_otp.dart';
part 'events/event_send_otp.dart';
part 'events/event_initial.dart';
part 'events/event_reset.dart';

class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  VerifyBloc() : super(const VerifyState()) {
    on<_EventInitial>(_onEventInitial);
    on<_EventGetOtp>(_onEventGetOtp);
    on<_EventGetNewOtp>(_onEventGetNewOtp);
    on<_EventSendOtp>(_onEventSendOtp);
    on<_EventReset>(_onEventReset);
  }
}
