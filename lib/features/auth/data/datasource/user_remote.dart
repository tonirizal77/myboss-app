/// Moved to folder data [datasource]
part of '../datas.dart';

/// 2.a [Remote] Data
abstract class UserRemote {
  /// Register
  ResultFuture<TokenModel> register(RegistrationModel param);

  /// Login
  ResultFuture<LoginModel> login(DataMap param);

  /// Logout
  ResultFuture<DataMap> logout();

  /// Delete Account
  ResultFuture<DataMap> deleteAccount();
}

/// 2.b [Remote] Data Implementasi
class UserRemoteImpl implements UserRemote {
  const UserRemoteImpl();

  @override
  ResultFuture<LoginModel> login(DataMap param) async {
    final result = await DioPost.call(url: Endpoints.signIn, body: param);

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(LoginModel.fromJson(_r["data"]));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<TokenModel> register(RegistrationModel param) async {
    final result = await DioPost.call(url: Endpoints.signUp, body: param);

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(TokenModel.fromJson(_r["data"]));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<DataMap> logout() async {
    final resp = await DioPost.call(url: Endpoints.signOut, body: null);

    return resp.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<DataMap> deleteAccount() async {
    final resp = await DioPost.call(url: Endpoints.deleteAccount, body: null);

    return resp.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
