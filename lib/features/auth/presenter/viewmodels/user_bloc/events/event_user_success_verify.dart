part of '../user_bloc.dart';

extension _EventUserSuccess on UserBloc {
  FutureOr<void> _userSuccessVerify(
    _UserSuccessVerify event,
    Emitter<UserState> emit,
  ) async {
    PrintHelper.printWarning("_update state user sucess verify: ${event}");
    final _r = LoginModel.fromJson(event.result['data']);

    // PrintHelper.inspectx(_r);

    final _dataToken = TokenModel(
      accessToken: _r.accessToken,
      refreshToken: _r.refreshToken,
      expiredAt: _r.expiredAt,
      customer: _r.customer,
    );

    // update access token to localStorage
    await getIt<SharedPreferencesHelper>().setAccessToken(
      accessToken: _dataToken.accessToken,
      refreshToken: _dataToken.refreshToken,
      expiredAt: _dataToken.expiredAt,
      phone: event.phone,
    );

    /// Reload
    await getIt<SharedPreferencesHelper>().prefInstance.reload();

    emit(
      state.copyWith(
        event: event.runtimeType,
        dataLogin: _r,
        dataToken: _dataToken,
        statusLogin: Status.success,
        statusCheckAuth: Status.success,
      ),
    );
  }
}
