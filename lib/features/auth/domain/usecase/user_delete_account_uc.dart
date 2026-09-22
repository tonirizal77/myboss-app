part of 'usecase.dart';

class UserDeleteAccountUc extends Usecase<DataMap> {
  final UserRepo _repository;

  UserDeleteAccountUc(this._repository);

  @override
  ResultFuture<DataMap> call() async => await _repository.deleteAccount();
}
