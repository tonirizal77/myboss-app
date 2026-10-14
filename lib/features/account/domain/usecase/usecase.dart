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

class GetReasonsUc extends Usecase<ReasonsModel> {
  final AccountRepo _repository;

  GetReasonsUc(this._repository);

  @override
  ResultFuture<ReasonsModel> call() async {
    return await _repository.getReasons();
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

class GetPointsSummaryUc extends Usecase<PointsSummary> {
  final PointsRepo _repository;

  GetPointsSummaryUc(this._repository);

  @override
  ResultFuture<PointsSummary> call() => _repository.getSummary();
}

class GetPointHistoryUc extends Usecase<List<PointEntry>> {
  final PointsRepo _repository;

  GetPointHistoryUc(this._repository);

  @override
  ResultFuture<List<PointEntry>> call() => _repository.getHistory();
}

class GetPointDetailUc extends UsecaseParams<PointDetail, int> {
  final PointsRepo _repository;

  GetPointDetailUc(this._repository);

  @override
  ResultFuture<PointDetail> call(int id) => _repository.getDetail(id);
}
