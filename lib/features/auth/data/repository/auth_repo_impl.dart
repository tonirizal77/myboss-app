part of '../datas.dart';

/// 3. [Repository] Implements
class AuthRepoImpl implements AuthRepo {
  final AuthRemote _remoteData;

  const AuthRepoImpl({required AuthRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<TokenModel> getClientToken() async {
    final _result = await _remoteData.getClientToken();

    return await _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<TokenModel> refreshToken() async {
    final resp = await DioPost.call(url: Endpoints.refreshToken, body: null);

    return resp.fold((_l) => Left(_l), (_r) => Right(TokenModel.fromJson(_r)));
  }
}
