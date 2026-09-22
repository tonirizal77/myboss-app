part of '../datas.dart';

/// 3. [Repository] Implements
class VerifyRepoImpl implements VerifyRepo {
  final VerifyRemote _remoteData;

  const VerifyRepoImpl({required VerifyRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<DataMap> getOtpCode(ParamOtp param) async {
    final _result = await _remoteData.getOtpCode(param);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<DataMap> sendOtpCode(ParamOtp param) async {
    final _result = await _remoteData.sendOtpCode(param);

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
