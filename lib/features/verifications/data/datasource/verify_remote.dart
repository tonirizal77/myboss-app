part of '../datas.dart';

/// 2.a [Remote] Data
abstract class VerifyRemote {
  /// -
  ResultFuture<DataMap> getOtpCode(ParamOtp param);
  ResultFuture<DataMap> sendOtpCode(ParamOtp param);
}

/// 2.b [Remote] Data Implementasi
class VerifyRemoteImpl implements VerifyRemote {
  const VerifyRemoteImpl();

  @override
  ResultFuture<DataMap> getOtpCode(ParamOtp param) async {
    final result = await DioPost.call(url: param.url, body: param.body);

    return result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<DataMap> sendOtpCode(ParamOtp param) async {
    final result = await DioPost.call(url: param.url, body: param.body);

    return result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
