part of '../domains.dart';

/// === Account === ///

class GetAboutUsUc extends Usecase<AboutUsModel> {
  final AccountRepo _repository;

  GetAboutUsUc(this._repository);

  @override
  ResultFuture<AboutUsModel> call() async {
    return await _repository.getAboutUs();
  }
}

class GetFaqUc extends Usecase<FaqModel> {
  final AccountRepo _repository;

  GetFaqUc(this._repository);

  @override
  ResultFuture<FaqModel> call() async {
    return await _repository.getFaq();
  }
}

class GetTncUc extends Usecase<TncModel> {
  final AccountRepo _repository;

  GetTncUc(this._repository);

  @override
  ResultFuture<TncModel> call() async {
    return await _repository.getTnc();
  }
}

class GetVouchersUc extends Usecase<VoucherListModel> {
  final AccountRepo _repository;

  GetVouchersUc(this._repository);

  @override
  ResultFuture<VoucherListModel> call() async {
    return await _repository.getVouchers();
  }
}

/// === Profile === ///

class GetAvatarsUc extends Usecase<AvatarListModel> {
  final ProfileRepo _repository;

  GetAvatarsUc(this._repository);

  @override
  ResultFuture<AvatarListModel> call() async => await _repository.getAvatars();
}

class GetProfileUc extends Usecase<ProfileModel> {
  final ProfileRepo _repository;

  GetProfileUc(this._repository);

  @override
  ResultFuture<ProfileModel> call() async {
    return await _repository.getProfile();
  }
}

class UpdateProfileUc extends UsecaseParams<ProfileModel, DataMap> {
  final ProfileRepo _repository;

  UpdateProfileUc(this._repository);

  @override
  ResultFuture<ProfileModel> call(DataMap param) async {
    return await _repository.updateProfile(param: param);
  }
}

class GenerateCodeUc extends Usecase<GenCodeModel> {
  final ProfileRepo _repository;

  GenerateCodeUc(this._repository);

  @override
  ResultFuture<GenCodeModel> call() async {
    return await _repository.generateCode();
  }
}
