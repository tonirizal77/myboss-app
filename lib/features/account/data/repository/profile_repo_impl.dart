/// Moved to folder data [repository]
part of '../datas.dart';

/// 3. [Repository] Implements
class ProfileRepoImpl implements ProfileRepo {
  final ProfileRemote _remoteData;

  const ProfileRepoImpl({required ProfileRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<ProfileModel> getProfile() async {
    final _result = await _remoteData.getProfile();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<AvatarListModel> getAvatars() async {
    final _result = await _remoteData.getAvatars();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<ProfileModel> updateProfile({required DataMap param}) async {
    final _result = await _remoteData.updateProfile(param: param);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<GenCodeModel> generateCode() async {
    final _result = await _remoteData.generateCode();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
