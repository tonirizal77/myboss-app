part of '../domains.dart';

/// 4. [Usecase] Implements
/// part of 'usecases.dart';

class GetStoreBranchesUc extends UsecaseParams<StoreBranchesModel, DataMap> {
  final StoresRepo _repository;

  GetStoreBranchesUc(this._repository);

  @override
  ResultFuture<StoreBranchesModel> call(DataMap param) async {
    return await _repository.getStoreBranches(param);
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
