part of '../domains.dart';

/// 1. Profile
abstract class ProfileRepo {
  const ProfileRepo();

  ResultFuture<ProfileModel> getProfile();

  ResultFuture<AvatarListModel> getAvatars();

  ResultFuture<ProfileModel> updateProfile({required DataMap param});

  ResultFuture<GenCodeModel> generateCode();
}

abstract class AccountRepo {
  const AccountRepo();

  ResultFuture<AboutUsModel> getAboutUs();

  ResultFuture<FaqModel> getFaq();

  ResultFuture<TncModel> getTnc();

  ResultFuture<VoucherListModel> getVouchers();
}

/// Points (replaces the hayo stamps).
abstract class PointsRepo {
  const PointsRepo();

  ResultFuture<PointsSummary> getSummary();

  ResultFuture<List<PointEntry>> getHistory();

  ResultFuture<PointDetail> getDetail(int id);
}
