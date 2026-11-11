part of '../datas.dart';

/// 2.c The member's own vouchers: `GET /profile/discount-vouchers`
/// with `is_used` (required) and paging, on the store domain of the selected
/// branch (vouchers belong to a branch, like the promo list). Mock mode reads
/// `assets/mock/get/profile.discount-vouchers.json`.
abstract class MemberVoucherRemote {
  ResultFuture<MemberVoucherPage> getVouchers({
    required VoucherStatus status,
    int page = 1,
    String storeDomain = '',
  });
}

class MemberVoucherRemoteImpl implements MemberVoucherRemote {
  const MemberVoucherRemoteImpl();

  static const int perPage = 15;

  @override
  ResultFuture<MemberVoucherPage> getVouchers({
    required VoucherStatus status,
    int page = 1,
    String storeDomain = '',
  }) async {
    final result = await DioGet.call(
      url: ConfigServer.urlFor(
        Endpoints.profileDiscountVouchers,
        storeDomain: storeDomain,
      ),
      queryParameters: {
        'is_used': '${status.isUsed}',
        'page': page,
        'per_page': perPage,
      },
    );

    return result.fold((l) => Left(l), (r) {
      try {
        return Right(toPage(MemberVouchersModel.fromJson(r)));
      } catch (e) {
        return Left(Failures(error: Error(message: "Parse Error : $e")));
      }
    });
  }

  @visibleForTesting
  static MemberVoucherPage toPage(MemberVouchersModel m) {
    final meta = m.meta;

    return MemberVoucherPage(
      items: [for (final v in m.data) toVoucher(v)],
      page: meta?.page ?? 1,
      totalPage: meta?.totalPage ?? 1,
      total: meta?.total ?? m.data.length,
    );
  }

  @visibleForTesting
  static Voucher toVoucher(MemberVoucherModel v) => Voucher(
    id: '${v.id}',
    title: v.title,
    discount: v.discountLabel,
    validUntil: DateTime.tryParse(v.expiryDate ?? ''),
    code: v.code ?? '',
    usedAt: DateTime.tryParse(v.usedAt ?? ''),
    terms: v.tnc.isNotEmpty
        ? Voucher.cleanTerms(v.tnc)
        : terms(v.detailVoucher),
  );

  /// Terms from `detail_voucher`. TODO(backend): the field is not sent yet;
  /// accepts a list of strings, `{terms: [...]}` or one text (one term per
  /// line) until its shape is confirmed.
  @visibleForTesting
  static List<String> terms(Object? detail) {
    final raw = switch (detail) {
      final List<dynamic> list => list,
      {'terms': final List<dynamic> list} => list,
      final String text => text.split('\n'),
      _ => const <dynamic>[],
    };

    return Voucher.cleanTerms(raw);
  }
}
