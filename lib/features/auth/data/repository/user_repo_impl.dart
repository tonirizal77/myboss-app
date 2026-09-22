part of '../datas.dart';

/// 3. [Repository] Implements
class UserRepoImpl implements UserRepo {
  final UserRemote _remoteData;

  const UserRepoImpl({required UserRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<TokenModel> register(RegistrationModel param) async {
    final _result = await _remoteData.register(param);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<LoginModel> login(DataMap param) async {
    final _result = await _remoteData.login(param);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<DataMap> logout() async {
    final _result = await _remoteData.logout();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<DataMap> deleteAccount() async {
    final _result = await _remoteData.deleteAccount();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
