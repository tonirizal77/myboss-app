import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

part 'user_event.dart';
part 'user_state.dart';
part 'user_bloc.freezed.dart';

/// Events
part 'events/event_user_check_auth.dart';
part 'events/event_user_logout.dart';
part 'events/event_user_delete_account.dart';
part 'events/event_user_reset.dart';
part 'events/event_user_success_verify.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc() : super(const UserState()) {
    on<UserCheckAuth>(_userCheckAuth);
    on<UserLogout>(_userLogout);
    on<UserDeleteAccount>(_userDeleteAccount);
    on<_UserReset>(_userReset);
    on<_UserSuccessVerify>(_userSuccessVerify);
  }
}
