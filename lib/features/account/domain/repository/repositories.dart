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
