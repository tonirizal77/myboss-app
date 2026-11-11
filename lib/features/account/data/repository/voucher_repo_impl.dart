part of '../datas.dart';

/// 3. [Repository] Implements - the member's vouchers
class MemberVoucherRepoImpl implements MemberVoucherRepo {
  final MemberVoucherRemote _remote;

  const MemberVoucherRepoImpl({required MemberVoucherRemote remote})
    : _remote = remote;

  @override
  ResultFuture<MemberVoucherPage> getVouchers({
    required VoucherStatus status,
    int page = 1,
    String storeDomain = '',
  }) =>
      _remote.getVouchers(status: status, page: page, storeDomain: storeDomain);
}
