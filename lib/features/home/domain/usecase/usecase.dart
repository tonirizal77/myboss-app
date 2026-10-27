part of '../domains.dart';

class GetGuestHomeUc extends Usecase<GuestHome> {
  final GuestHomeRepo _repository;

  GetGuestHomeUc(this._repository);

  @override
  ResultFuture<GuestHome> call() async {
    return await _repository.getGuestHome();
  }
}
