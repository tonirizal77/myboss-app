import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

/// Answers each `is_used` / page from a fixed list of pages.
class _FakeRemote implements MemberVoucherRemote {
  _FakeRemote(this.pages);

  final Map<VoucherStatus, List<MemberVoucherPage>> pages;
  final calls = <(VoucherStatus, int)>[];
  final domains = <String>[];
  bool fail = false;

  @override
  ResultFuture<MemberVoucherPage> getVouchers({
    required VoucherStatus status,
    int page = 1,
    String storeDomain = '',
  }) async {
    calls.add((status, page));
    domains.add(storeDomain);
    if (fail) return Left(Failures(error: Error(message: 'boom')));
    return Right(pages[status]![page - 1]);
  }
}

Voucher _v(String id) => Voucher(id: id, title: 'T$id', discount: '10% Off');

void main() {
  group('MemberVoucherRemoteImpl parsing', () {
    test('maps the mock file: code, used date, terms and paging', () {
      final json =
          jsonDecode(
                File(
                  'assets/mock/get/profile.discount-vouchers.json',
                ).readAsStringSync(),
              )
              as Map<String, dynamic>;
      final page = MemberVoucherRemoteImpl.toPage(
        MemberVouchersModel.fromJson(json),
      );

      final active = page.items.first;
      expect(active.code, 'MYB1212');
      expect(active.isUsed, isFalse);
      expect(active.terms, hasLength(3));

      final used = page.items.last;
      expect(used.isUsed, isTrue);
      expect(used.usedAt, DateTime(2026, 11, 6, 14, 30));
      expect(page.totalPage, 2);
    });

    test('accepts voucher_code / used_date aliases', () {
      final m = MemberVoucherModel.fromJson({
        'id': 1,
        'title': 'Promo',
        'voucher_code': 'ABC',
        'used_date': '2026-11-05',
      });
      expect(m.code, 'ABC');
      expect(m.usedAt, '2026-11-05');
    });

    test('reads detail_voucher terms in any of the expected shapes', () {
      expect(MemberVoucherRemoteImpl.terms(null), isEmpty);
      expect(MemberVoucherRemoteImpl.terms(['a', ' ', 'b']), ['a', 'b']);
      expect(
        MemberVoucherRemoteImpl.terms({
          'terms': ['x'],
        }),
        ['x'],
      );
      expect(MemberVoucherRemoteImpl.terms('one\ntwo\n'), ['one', 'two']);
    });
  });

  group('mock server is_used filter', () {
    test('splits vouchers by is_used and pages them', () async {
      final json = jsonDecode(
        File(
          'assets/mock/get/profile.discount-vouchers.json',
        ).readAsStringSync(),
      );

      Future<Map<String, dynamic>> get(Map<String, dynamic> query) async =>
          await MockServerSimulation.respond(
                Endpoints.profileDiscountVouchers,
                query,
                json,
                load: (_) async => null,
              )
              as Map<String, dynamic>;

      final active = await get({'is_used': 'false', 'page': 1, 'per_page': 15});
      expect(active['data'], hasLength(15));
      expect(active['meta']['total'], 17);
      expect(active['meta']['total_page'], 2);

      final used = await get({'is_used': 'true', 'page': 1, 'per_page': 15});
      expect(used['meta']['total'], 6);
      expect((used['data'] as List).every((e) => e['used_at'] != null), isTrue);
    });
  });

  group('MemberVoucherCubit', () {
    late _FakeRemote remote;

    setUp(() {
      remote = _FakeRemote({
        VoucherStatus.active: [
          MemberVoucherPage(items: [_v('1'), _v('2')], totalPage: 2, total: 3),
          MemberVoucherPage(items: [_v('3')], page: 2, totalPage: 2, total: 3),
        ],
        VoucherStatus.used: [
          MemberVoucherPage(items: [_v('9')], total: 1),
        ],
      });
      getIt.registerSingleton<GetMemberVouchersUc>(
        GetMemberVouchersUc(MemberVoucherRepoImpl(remote: remote)),
      );
    });

    tearDown(() => getIt.reset());

    test('open loads Active; Load more appends the next page', () async {
      final cubit = MemberVoucherCubit();
      await cubit.open();

      expect(cubit.state.active.items, hasLength(2));
      expect(cubit.state.active.hasMore, isTrue);
      expect(cubit.state.activeCount, 3);

      await cubit.loadMore(VoucherStatus.active);
      expect(cubit.state.active.items.map((v) => v.id), ['1', '2', '3']);
      expect(cubit.state.active.hasMore, isFalse);

      // No more pages: no extra request.
      await cubit.loadMore(VoucherStatus.active);
      expect(remote.calls, [
        (VoucherStatus.active, 1),
        (VoucherStatus.active, 2),
      ]);
    });

    test('Used tab loads with is_used=true when first shown', () async {
      final cubit = MemberVoucherCubit();
      await cubit.open();

      cubit.selectTab(VoucherStatus.used);
      await Future<void>.delayed(Duration.zero);

      expect(cubit.state.tab, VoucherStatus.used);
      expect(cubit.state.used.items.single.id, '9');
      expect(remote.calls.last, (VoucherStatus.used, 1));
    });

    test('failed Load more keeps the list', () async {
      final cubit = MemberVoucherCubit();
      await cubit.open();

      remote.fail = true;
      await cubit.loadMore(VoucherStatus.active);

      expect(cubit.state.active.status, Status.success);
      expect(cubit.state.active.items, hasLength(2));
      expect(cubit.state.active.loadingMore, isFalse);
    });

    test('vouchers are read from the selected branch domain', () async {
      final cubit = MemberVoucherCubit();
      await cubit.open(storeDomain: 'myboss-semarang');
      await cubit.loadMore(VoucherStatus.active);
      expect(remote.domains, ['myboss-semarang', 'myboss-semarang']);

      // Another branch: the old list is dropped and page 1 reloaded there.
      await cubit.load(VoucherStatus.active, storeDomain: 'myboss-magelang');
      expect(remote.domains.last, 'myboss-magelang');
      expect(remote.calls.last, (VoucherStatus.active, 1));
      expect(cubit.state.active.items, hasLength(2));
    });

    test('reset clears the previous member', () async {
      final cubit = MemberVoucherCubit();
      await cubit.open();

      cubit.reset();
      expect(cubit.state.activeCount, 0);
      expect(cubit.state.active.items, isEmpty);
    });
  });
}
