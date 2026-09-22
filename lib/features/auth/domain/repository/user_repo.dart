/// Moved to folder data [repository]
part of 'repositories.dart';

/// 1.a Repo [Interface]
abstract class UserRepo {
  const UserRepo();

  ResultFuture<TokenModel> register(RegistrationModel param);

  ResultFuture<LoginModel> login(DataMap param);

  ResultFuture<DataMap> logout();

  ResultFuture<DataMap> deleteAccount();
}
