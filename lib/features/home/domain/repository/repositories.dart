part of '../domains.dart';

/// 1.a Repo [Interface]
abstract class StampsRepo {
  const StampsRepo();

  ResultFuture<StampsModel> getStamps({DataMap? param});

  ResultFuture<StampsOptionModel> getStampsOption();

  ResultFuture<StampsHistoryModel> historyStamps(DataMap param);

  ResultFuture<StampsDetailModel> getDetail(int id);
}

/// 1.b Repo [Interface] - guest Home content
abstract class GuestHomeRepo {
  const GuestHomeRepo();

  ResultFuture<GuestHome> getGuestHome();
}
