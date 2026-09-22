part of '../domains.dart';

/// 1.a Repo [Interface]
abstract class StampsRepo {
  const StampsRepo();

  ResultFuture<StampsModel> getStamps({DataMap? param});

  ResultFuture<StampsOptionModel> getStampsOption();

  ResultFuture<StampsHistoryModel> historyStamps(DataMap param);

  ResultFuture<StampsDetailModel> getDetail(int id);
}
