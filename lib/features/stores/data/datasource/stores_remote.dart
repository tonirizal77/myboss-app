part of '../datas.dart';

/// 2.a [Remote] Data
abstract class StoresRemote {
  /// [location]: `{'lat': .., 'lon': ..}` or empty when the position is unknown.
  ResultFuture<StoreBranchesModel> getStoreBranches(DataMap location);

  ResultFuture<StoreModel> getStore();
}

/// 2.b [Remote] Data Implementasi
class StoresRemoteImpl implements StoresRemote {
  const StoresRemoteImpl();

  @override
  ResultFuture<StoreBranchesModel> getStoreBranches(DataMap location) async {
    final result = await DioGet.call(
      url: Endpoints.storeBranches,
      queryParameters: location,
    );

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(StoreBranchesModel.fromJson(_r));
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
