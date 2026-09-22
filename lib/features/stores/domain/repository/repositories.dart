part of '../domains.dart';

/// 1.a Repo [Interface]
abstract class StoresRepo {
  const StoresRepo();

  ResultFuture<StoreListModel> getStoreList();

  ResultFuture<StoreModel> getStore();
}
