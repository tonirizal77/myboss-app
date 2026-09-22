part of 'usecase.dart';

class UserLogoutUc extends Usecase<DataMap> {
  final UserRepo _repository;

  UserLogoutUc(this._repository);

  @override
  ResultFuture<DataMap> call() async => await _repository.logout();
}
