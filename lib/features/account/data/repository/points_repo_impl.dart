part of '../datas.dart';

/// 3. [Repository] Implements - points
class PointsRepoImpl implements PointsRepo {
  final PointsSource _source;

  const PointsRepoImpl({required PointsSource source}) : _source = source;

  @override
  ResultFuture<PointsSummary> getSummary() => _source.getSummary();

  @override
  ResultFuture<List<PointEntry>> getHistory() => _source.getHistory();

  @override
  ResultFuture<PointDetail> getDetail(int id) => _source.getDetail(id);
}
