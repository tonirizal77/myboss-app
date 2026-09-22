part of '../domains.dart';

/// 4. [Usecase] Implements
/// part of 'usecases.dart';

class GetStoreListUc extends Usecase<StoreListModel> {
  final StoresRepo _repository;

  GetStoreListUc(this._repository);

  @override
  ResultFuture<StoreListModel> call() async {
    return await _repository.getStoreList();
  }
}

class GetStoreUc extends Usecase<StoreModel> {
  final StoresRepo _repository;

  GetStoreUc(this._repository);

  @override
  ResultFuture<StoreModel> call() async {
    return await _repository.getStore();
  }
}
