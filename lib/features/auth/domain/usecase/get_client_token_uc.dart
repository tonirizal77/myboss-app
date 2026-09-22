part of 'usecase.dart';

class GetClientTokenUc extends Usecase<TokenModel> {
  final AuthRepo _repository;

  GetClientTokenUc(this._repository);

  @override
  ResultFuture<TokenModel> call() async => await _repository.getClientToken();
}
