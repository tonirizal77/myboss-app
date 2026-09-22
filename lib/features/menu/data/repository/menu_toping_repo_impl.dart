part of '../datas.dart';

/// 3. [Repository] Implements
class MenuTopingRepoImpl implements MenuTopingRepo {
  final MenuTopingRemote _remoteData;

  const MenuTopingRepoImpl({required MenuTopingRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<MenuTopingModel> listMenuToping(DataMap param) async {
    final _result = await _remoteData.listMenuToping(param);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
