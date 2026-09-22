part of '../domains.dart';

class GetStampsUc extends UsecaseParams<StampsModel, DataMap> {
  final StampsRepo _repository;

  GetStampsUc(this._repository);

  @override
  ResultFuture<StampsModel> call(DataMap param) async {
    return await _repository.getStamps(param: param);
  }
}

class GetStampsOptionUc extends Usecase<StampsOptionModel> {
  final StampsRepo _repository;

  GetStampsOptionUc(this._repository);

  @override
  ResultFuture<StampsOptionModel> call() async {
    return await _repository.getStampsOption();
  }
}

class HistoryStampsUc extends UsecaseParams<StampsHistoryModel, DataMap> {
  final StampsRepo _repository;

  HistoryStampsUc(this._repository);

  @override
  ResultFuture<StampsHistoryModel> call(DataMap param) async {
    return await _repository.historyStamps(param);
  }
}

class GetDetailStampsUc extends UsecaseParams<StampsDetailModel, int> {
  final StampsRepo _repository;

  GetDetailStampsUc(this._repository);

  @override
  ResultFuture<StampsDetailModel> call(int id) async {
    return await _repository.getDetail(id);
  }
}
