part of '../domains.dart';

/// 1.a Repo [Interface]
abstract class StoresRepo {
  const StoresRepo();

  ResultFuture<StoreBranchesModel> getStoreBranches(DataMap location);

  ResultFuture<StoreModel> getStore();
}
