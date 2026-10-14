part of '../datas.dart';

/// 3. [Repository] Implements - guest Home
class GuestHomeRepoImpl implements GuestHomeRepo {
  final GuestHomeSource _source;

  const GuestHomeRepoImpl({required GuestHomeSource source}) : _source = source;

  @override
  ResultFuture<GuestHome> getGuestHome() => _source.getGuestHome();
}
