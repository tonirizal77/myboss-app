part of '../datas.dart';

/// 2.a [Remote] Data
abstract class StampsRemote {
  ResultFuture<StampsModel> getStamps({DataMap? param});

  ResultFuture<StampsOptionModel> getStampsOption();

  ResultFuture<StampsHistoryModel> historyStamps(DataMap param);

  ResultFuture<StampsDetailModel> getDetail(int id);
}

/// 2.b [Remote] Data Implementasi
class StampsRemoteImpl implements StampsRemote {
  const StampsRemoteImpl();

  @override
  ResultFuture<StampsModel> getStamps({DataMap? param}) async {
    final result = await DioGet.call(url: Endpoints.stamps, body: param);

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(StampsModel.fromJson(_r['data']));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<StampsOptionModel> getStampsOption() async {
    final resp = await DioGet.call(url: Endpoints.stampsBreakFree);

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(StampsOptionModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<StampsHistoryModel> historyStamps(DataMap param) async {
    final resp = await DioGet.call(
      url: Endpoints.stampsHistoryList,
      body: param,
    );

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(StampsHistoryModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<StampsDetailModel> getDetail(int id) async {
    final resp = await DioGet.call(
      url: Endpoints.stampsHistoryShow.replaceAll("{id}", id.toString()),
    );

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(StampsDetailModel.fromJson(_r['data']));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
