import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

part 'events/event_get_client_token.dart';
part 'events/event_check_auth_client.dart';
part 'events/event_refresh_token.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(const AuthState()) {
    on<GetClientToken>(_onEventGetClientToken);
    on<CheckAuth>(_onEventCheckAuth);
    on<RefreshToken>(_onEventRefreshToken);
  }
}
