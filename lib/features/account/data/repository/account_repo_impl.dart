part of '../datas.dart';

/// 3. [Repository] Implements
class AccountRepoImpl implements AccountRepo {
  final AccountRemote _remoteData;

  const AccountRepoImpl({required AccountRemote remoteData})
    : _remoteData = remoteData;

  @override
  ResultFuture<AboutUsModel> getAboutUs() async {
    final _result = await _remoteData.getAboutUs();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<FaqModel> getFaq() async {
    final _result = await _remoteData.getFaq();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<TncModel> getTnc() async {
    final _result = await _remoteData.getTnc();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }

  @override
  ResultFuture<VoucherListModel> getVouchers() async {
    final _result = await _remoteData.getVouchers();

    return _result.fold((_l) => Left(_l), (_r) => Right(_r));
  }
}
