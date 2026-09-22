part of '../datas.dart';

/// 3. [Repository] Implements
class StampsRepoImpl implements StampsRepo {
  final StampsRemote _remoteData;

  const StampsRepoImpl({required StampsRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<StampsModel> getStamps({DataMap? param}) async {
    final _result = await _remoteData.getStamps(param: param);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<StampsOptionModel> getStampsOption() async {
    final _result = await _remoteData.getStampsOption();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<StampsHistoryModel> historyStamps(DataMap param) async {
    final _result = await _remoteData.historyStamps(param);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<StampsDetailModel> getDetail(int id) async {
    final _result = await _remoteData.getDetail(id);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
