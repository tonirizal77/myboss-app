part of '../datas.dart';

/// Moved to folder data [repository]
/// part of '../datas.dart';

/// 3. [Repository] Implements
class MenuYogurtRepoImpl implements MenuYogurtRepo {
  final MenuYogurtRemote _remoteData;

  const MenuYogurtRepoImpl({required MenuYogurtRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<MenuYogurtModel> listMenuYogurt(DataMap params) async {
    final _result = await _remoteData.listMenuYogurt(params);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
