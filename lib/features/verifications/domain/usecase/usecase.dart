part of '../domains.dart';

/// Moved to folder usecase [domain]

/// 4. [usecase] Implements
/// part of 'usecase.dart';

class GetOtpCodeUc extends UsecaseParams<DataMap, ParamOtp> {
  final VerifyRepo _repository;

  GetOtpCodeUc(this._repository);

  @override
  ResultFuture<DataMap> call(params) async {
    return await _repository.getOtpCode(params);
  }
}

class SendOtpCodeUc extends UsecaseParams<DataMap, ParamOtp> {
  final VerifyRepo _repository;

  SendOtpCodeUc(this._repository);

  @override
  ResultFuture<DataMap> call(params) async {
    return await _repository.sendOtpCode(params);
  }
}
