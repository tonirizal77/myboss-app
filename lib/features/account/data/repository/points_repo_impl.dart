part of '../datas.dart';

/// 3. [Repository] Implements - points
class PointsRepoImpl implements PointsRepo {
  final PointsSource _source;

  const PointsRepoImpl({required PointsSource source}) : _source = source;

  @override
  ResultFuture<PointsSummary> getSummary() => _source.getSummary();

  @override
  ResultFuture<PointHistoryPage> getHistory({int page = 1}) =>
      _source.getHistory(page: page);

  @override
  ResultFuture<PointDetail> getDetail(int id) => _source.getDetail(id);
}
