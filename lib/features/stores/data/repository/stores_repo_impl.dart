part of '../datas.dart';

/// 3. [Repository] Implements
class StoresRepoImpl implements StoresRepo {
  final StoresRemote _remoteData;

  const StoresRepoImpl({required StoresRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<StoreListModel> getStoreList() async {
    final _result = await _remoteData.getStoreList();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<StoreModel> getStore() async {
    final _result = await _remoteData.getStore();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
