part of '../datas.dart';

/// 2.a [Remote] Data
abstract class AuthRemote {
  /// Client Token
  ResultFuture<TokenModel> getClientToken();

  /// Refresh Token
  ResultFuture<TokenModel> refreshToken();
}

/// 2.b [Remote] Data Implementasi
class AuthRemoteImpl implements AuthRemote {
  const AuthRemoteImpl();

  @override
  ResultFuture<TokenModel> getClientToken() async {
    final result = await DioPost.call(
      url: Endpoints.clientAuth,
      body: ConfigServer.secretCliendID,
    );

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(TokenModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<TokenModel> refreshToken() async {
    final _tokenRefresh = getIt<SharedPreferencesHelper>().getRefreshToken();

    final resp = await DioPost.call(
      url: Endpoints.refreshToken,
      newHeaders: {'Authorization': 'Bearer $_tokenRefresh'},
      body: null,
    );

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(TokenModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
