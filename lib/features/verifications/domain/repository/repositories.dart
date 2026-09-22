part of '../domains.dart';

/// 1.a Repo [Interface]
abstract class VerifyRepo {
  const VerifyRepo();

  ResultFuture<DataMap> getOtpCode(ParamOtp param);
  ResultFuture<DataMap> sendOtpCode(ParamOtp param);
}
