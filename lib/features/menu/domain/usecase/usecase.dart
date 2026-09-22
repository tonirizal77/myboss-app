part of '../domains.dart';

class ListMenuYogurtUc extends UsecaseParams<MenuYogurtModel, DataMap> {
  final MenuYogurtRepo _repository;

  ListMenuYogurtUc(this._repository);

  @override
  ResultFuture<MenuYogurtModel> call(params) async {
    return await _repository.listMenuYogurt(params);
  }
}

class ListMenuTopingUc extends UsecaseParams<MenuTopingModel, DataMap> {
  final MenuTopingRepo _repository;

  ListMenuTopingUc(this._repository);

  @override
  ResultFuture<MenuTopingModel> call(params) async {
    return await _repository.listMenuToping(params);
  }
}
