part of 'usecase.dart';

class UserCancelDeleteAccountUc extends Usecase<DataMap> {
  final UserRepo _repository;

  UserCancelDeleteAccountUc(this._repository);

  @override
  ResultFuture<DataMap> call() async => await _repository.cancelDeleteAccount();
}
