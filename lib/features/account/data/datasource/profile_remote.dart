/// Moved to folder data [datasource]
part of '../datas.dart';

/// 2.a [Remote] Data
abstract class ProfileRemote {
  /// -
  ResultFuture<ProfileModel> getProfile();

  ResultFuture<AvatarListModel> getAvatars();

  ResultFuture<ProfileModel> updateProfile({required DataMap param});

  ResultFuture<GenCodeModel> generateCode();
}

/// 2.b [Remote] Data Implementasi
class ProfileRemoteImpl implements ProfileRemote {
  const ProfileRemoteImpl();

  @override
  ResultFuture<ProfileModel> getProfile() async {
    final result = await DioGet.call(url: Endpoints.profileInfo, body: null);

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(ProfileModel.fromJson(_r['data']));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<AvatarListModel> getAvatars() async {
    final result = await DioGet.call(url: Endpoints.avatarList);

    return result.fold((_l) => Left(_l), (_r) {
      try {
        return Right(AvatarListModel.fromJson(_r));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<ProfileModel> updateProfile({required DataMap param}) async {
    final resp = await DioPut.call(url: Endpoints.updateProfile, body: param);

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(ProfileModel.fromJson(_r['data']));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @override
  ResultFuture<GenCodeModel> generateCode() async {
    final resp = await DioPost.call(url: Endpoints.generateCode, body: null);

    return resp.fold((_l) => Left(_l), (_r) {
      try {
        return Right(GenCodeModel.fromJson(_r['data']));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }
}
