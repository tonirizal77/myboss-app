part of 'repositories.dart';

/// 1.a Repo [Interface]
abstract class AuthRepo {
  const AuthRepo();

  ResultFuture<TokenModel> getClientToken();

  ResultFuture<TokenModel> refreshToken();
}
