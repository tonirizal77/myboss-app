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

/// One page of the points history (params: the page, from 1).
class GetPointHistoryUc extends UsecaseParams<PointHistoryPage, int> {
  final PointsRepo _repository;

  GetPointHistoryUc(this._repository);

  @override
  ResultFuture<PointHistoryPage> call(int params) =>
      _repository.getHistory(page: params);
}

/// The member's vouchers: one page of the given status.
class GetMemberVouchersUc
    extends
        UsecaseParams<
          MemberVoucherPage,
          ({VoucherStatus status, int page, String storeDomain})
        > {
  final MemberVoucherRepo _repository;

  GetMemberVouchersUc(this._repository);

  @override
  ResultFuture<MemberVoucherPage> call(
    ({VoucherStatus status, int page, String storeDomain}) params,
  ) => _repository.getVouchers(
    status: params.status,
    page: params.page,
    storeDomain: params.storeDomain,
  );
}

class GetPointDetailUc extends UsecaseParams<PointDetail, int> {
  final PointsRepo _repository;

  GetPointDetailUc(this._repository);

  @override
  ResultFuture<PointDetail> call(int id) => _repository.getDetail(id);
}
