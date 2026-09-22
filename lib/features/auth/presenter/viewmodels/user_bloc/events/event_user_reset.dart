part of '../user_bloc.dart';

extension _EventUserReset on UserBloc {
  void _userReset(_UserReset event, Emitter<UserState> emit) {
    emit(const UserState());
  }
}
