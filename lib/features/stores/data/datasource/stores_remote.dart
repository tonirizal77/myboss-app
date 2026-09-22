part of '../datas.dart';

/// 2.a [Remote] Data
abstract class StoresRemote {
  /// -
  ResultFuture<StoreListModel> getStoreList();

  ResultFuture<StoreModel> getStore();
}

/// 2.b [Remote] Data Implementasi
class StoresRemoteImpl implements StoresRemote {
  const StoresRemoteImpl();

  @override
  ResultFuture<StoreListModel> getStoreList() async {
    final result = await DioGet.call(url: Endpoints.storeListData);

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(StoreListModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<StoreModel> getStore() async {
    final resp = await DioGet.call(url: Endpoints.storeData);

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(StoreModel.fromJson(_r['data']));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
