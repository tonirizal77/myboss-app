part of 'usecase.dart';

class GetRefreshTokenUc extends Usecase<TokenModel> {
  final AuthRepo _repository;

  GetRefreshTokenUc(this._repository);

  @override
  ResultFuture<TokenModel> call() async => await _repository.refreshToken();
}
