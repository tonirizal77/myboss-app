import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart' show Left, Right;
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

void main() {
  group('PointsFormat', () {
    test('groups thousands', () {
      expect(PointsFormat.thousands(6969), '6,969');
      expect(PointsFormat.thousands(100), '100');
      expect(PointsFormat.thousands(1234567), '1,234,567');
      expect(PointsFormat.thousands(0), '0');
      expect(PointsFormat.thousands(-1500), '-1,500');
    });

    test('formats rupiah with the requested separator', () {
      expect(PointsFormat.rupiah(30000), 'Rp 30.000');
      expect(PointsFormat.rupiah(26000, separator: ','), 'Rp 26,000');
    });

    test('formats dates in English and Indonesian', () {
      final d = DateTime(2026, 3, 5);
      expect(PointsFormat.date(d), '5 Mar 2026');
      expect(PointsFormat.date(DateTime(2026, 5, 20), id: true), '20 Mei 2026');
      expect(
        PointsFormat.dateLong(DateTime(2026, 9, 19)),
        'September 19, 2026',
      );
      expect(
        PointsFormat.dateLong(DateTime(2026, 9, 19), id: true),
        '19 September 2026',
      );
    });
  });

  group('points data', () {
    const source = PointsStatic();

    test('history has the Figma entries, newest first', () async {
      final history = (await source.getHistory())
          .getOrElse(() => const PointHistoryPage())
          .items;

      expect(history, hasLength(7));
      expect(history.first.points, 2);
      expect(history.first.amount, 30000);
      expect(history.every((e) => e.isEarned), isTrue);
      expect(
        history.first.date.isAfter(history.last.date) ||
            history.first.date == history.last.date,
        isTrue,
      );
    });

    test('receipt of the first entry matches the Figma sheet', () async {
      final detail = (await source.getDetail(
        1,
      )).getOrElse(() => throw StateError('no detail'));

      expect(detail.lines.map((l) => l.name), [
        'Signature Glow',
        'Nata de Coco',
        'Earl Grey Sauce',
      ]);
      expect(detail.lines.fold<int>(0, (s, l) => s + l.price), detail.subtotal);
      expect(detail.total, 30000);
      expect(detail.itemCount, 2);
    });

    test('other entries get a one-line receipt', () async {
      final detail = (await source.getDetail(
        4,
      )).getOrElse(() => throw StateError('no detail'));

      expect(detail.lines, hasLength(1));
      expect(detail.total, detail.entry.amount);
    });
  });

  test('profile/info staging shape: balance_points, voucher_count', () {
    final p = ProfileModel.fromJson(const {
      'id': 1,
      'name': 'Test User',
      'avatar_id': null,
      'avatar': null,
      'favatar': null,
      'balance_points': 269,
      'voucher_count': 3,
    });

    expect(p.balancePoints, 269);
    expect(p.voucherCount, 3);
    expect(p.favatar, '');
  });

  group('PointsRemote mapping (/profile/loyalty-points)', () {
    LoyaltyPointsModel mock() => LoyaltyPointsModel.fromJson(
      (jsonDecode(
                File(
                  MockServerInterceptor.assetKey(
                    'GET',
                    Endpoints.profileLoyaltyPoints,
                  ),
                ).readAsStringSync(),
              )
              as DataMap)['data']
          as DataMap,
    );

    test('summary: total_balance_point and expiring_points', () {
      final summary = PointsRemote.toSummary(
        LoyaltyPointsModel.fromJson(const {
          'total_balance_point': 1250,
          'expiring_points': {
            'balance_points': 100,
            'expire_date': '2026-11-18',
          },
        }),
      );

      expect(summary.balance, 1250);
      expect(summary.expiringPoints, 100);
      expect(summary.expiresAt, DateTime(2026, 11, 18));
    });

    test('staging: balance_points + expiring_points (2026-11-11)', () {
      final summary = PointsRemote.toSummary(
        LoyaltyPointsModel.fromJson(const {
          'balance_points': 269,
          'expiring_points': {
            'balance_points': 65,
            'expire_date': '2026-11-13',
            'expire_date_subtext': 'Expires in 1 days',
          },
          'all_point': [],
        }),
      );

      expect(summary.balance, 269);
      expect(summary.hasBalance, isTrue);
      expect(summary.expiringPoints, 65);
      expect(summary.expiresAt, DateTime(2026, 11, 13));

      // Mock file follows the same shape.
      expect(PointsRemote.toSummary(mock()).balance, 1250);
    });

    test('staging 2026-11-12: total_balance_point, null expiring, meta', () {
      final page = PointsRemote.parse(const {
        'data': {
          'total_balance_point': 0,
          'expiring_points': null,
          'all_point': [],
        },
        'meta': {
          'total': 0,
          'page': 1,
          'offset': 0,
          'per_page': 15,
          'total_page': 0,
        },
        'status': 200,
        'error': 0,
      });

      final summary = PointsRemote.toSummary(page.data);
      expect(summary.balance, 0);
      expect(summary.hasBalance, isTrue);
      expect(summary.expiringPoints, 0);
      expect(summary.expiresAt, isNull);

      // No history: one empty page, nothing more to load.
      final history = PointsRemote.toPage(page);
      expect(history.items, isEmpty);
      expect(history.totalPage, 1);
      expect(history.hasMore, isFalse);
    });

    test('meta pages the history', () {
      final page = PointsRemote.toPage(
        PointsRemote.parse({
          'data': {
            'total_balance_point': 40,
            'all_point': [
              {
                'id': 7,
                'status': 'Active',
                'date': '2026-11-01 10:00:00',
                'displayed_point': 5,
              },
            ],
          },
          'meta': {'total': 31, 'page': 2, 'per_page': 15, 'total_page': 3},
        }),
      );

      expect(page.items.single.id, 7);
      expect(page.page, 2);
      expect(page.totalPage, 3);
      expect(page.total, 31);
      expect(page.hasMore, isTrue);
    });

    test('no balance in the payload: flagged for the profile fallback', () {
      final summary = PointsRemote.toSummary(
        LoyaltyPointsModel.fromJson(const {'all_point': []}),
      );
      expect(summary.hasBalance, isFalse);
    });

    test('no expiring_points: nothing expiring', () {
      final summary = PointsRemote.toSummary(
        LoyaltyPointsModel.fromJson(const {
          'total_balance_point': 269,
          'expiring_points': null,
          'active_point': [],
        }),
      );

      expect(summary.balance, 269);
      expect(summary.expiringPoints, 0);
      expect(summary.expiresAt, isNull);
    });

    test('history: all_point, earned and redeemed rows', () {
      final history = PointsRemote.toHistory(mock());

      expect(history, hasLength(5));
      // `Expired`: negative, flagged.
      expect(history.last.points, -26);
      expect(history.last.isExpired, isTrue);
      expect(history.where((e) => e.isExpired), hasLength(1));
      // `Deducted` = redeemed: negative.
      expect(history.first.points, -20);
      expect(history.first.isEarned, isFalse);
      expect(history.first.title, 'Point Redeemed');
      expect(history[1].points, 20);
      expect(history[1].amount, 300000);
      expect(history[1].date, DateTime(2026, 11, 5, 10, 15));
      expect(history[2].amount, 0); // sales_order_id / order_total null
    });

    test('staging payload (all_point, displayed_point, status)', () {
      final history = PointsRemote.toHistory(
        LoyaltyPointsModel.fromJson(const {
          'all_point': [
            {
              'id': 296,
              'status': 'Deducted',
              'detail': 'Point Redeemed',
              'date': '2026-11-01 02:00:00',
              'displayed_point': 20,
              'sales_order_id': 1,
              'order_total': 158000,
              'forder_total': '158.000',
            },
            {
              'id': 8241,
              'status': 'Active',
              'detail': 'Point Earned',
              'date': '2026-11-01 01:36:43',
              'displayed_point': 10,
              'sales_order_id': 1,
              'order_total': 158000,
              'forder_total': '158.000',
            },
          ],
        }),
      );

      expect(history.map((e) => e.points), [-20, 10]);
      expect(history.map((e) => e.id), [296, 8241]);
      expect(history.first.salesOrderId, 1);
    });

    test('receipt from /profile/orders/find (staging payload)', () {
      final entry = PointEntry(
        id: 8241,
        title: 'Point Earned',
        date: DateTime(2026, 11, 1),
        points: 10,
        amount: 158000,
        salesOrderId: 1290528552,
      );
      final detail = PointsRemote.toDetail(
        entry,
        OrderDetailModel.fromJson(const {
          'id': 1290528552,
          'order_no': 'SMPL-MBS-0001',
          'order_date': '2026-11-01',
          'store_name': 'Oraimo Semarang',
          'total_qty': 2,
          'items': [
            {
              'id': 3272548838,
              'item_id': 106802919,
              'name': 'Ugreen USB-C Cable 1m',
              'variant_name': '',
              'qty': 2,
              'amount': 158000,
              'famount': '158.000',
            },
          ],
          'amount': {
            'order_amount': 158000,
            'discount_amount': 0,
            'redeemed_amount': 0,
            'service_charge_amount': 0,
            'tax_amount': 0,
            'shipping_cost': 0,
            'rounded_amount': 0,
            'total_amount': 158000,
          },
        }),
      );

      expect(detail.lines.single.name, 'Ugreen USB-C Cable 1m');
      expect(detail.lines.single.quantity, 2);
      expect(detail.lines.single.price, 158000);
      expect(detail.itemCount, 2);
      expect(detail.subtotal, 158000);
      expect(detail.total, 158000);
    });

    test('receipt: variant name is appended', () {
      final m = OrderDetailModel.fromJson(
        jsonDecode(
              File(
                MockServerInterceptor.assetKey(
                  'GET',
                  Endpoints.profileOrdersPoints,
                ),
              ).readAsStringSync(),
            )['data']
            as DataMap,
      );
      final detail = PointsRemote.toDetail(
        PointEntry(
          id: 1,
          title: '',
          date: DateTime(2026),
          points: 1,
          amount: 0,
        ),
        m,
      );

      expect(detail.lines.map((l) => l.name), [
        'Ugreen USB-C Cable 1m',
        'Oraimo FreePods 4 - Black',
      ]);
      expect(detail.itemCount, 3);
    });

    test('rows with an unreadable date are skipped', () {
      final history = PointsRemote.toHistory(
        LoyaltyPointsModel.fromJson(const {
          'active_point': [
            {'id': 1, 'date': null, 'earned_points': 5},
            {'id': 2, 'date': '2026-11-01 01:36:43', 'earned_points': 10},
          ],
        }),
      );

      expect(history.map((e) => e.id), [2]);
    });
  });

  group('PointsCubit', () {
    setUp(() {
      getIt.registerLazySingleton<PointsRepo>(
        () => const PointsRepoImpl(source: PointsStatic()),
      );
      getIt.registerLazySingleton(() => GetPointsSummaryUc(getIt()));
      getIt.registerLazySingleton(() => GetPointHistoryUc(getIt()));
    });
    tearDown(() => getIt.reset());

    test('load fills the summary and the history', () async {
      final cubit = PointsCubit();
      addTearDown(cubit.close);

      await cubit.load();

      expect(cubit.state.status, Status.success);
      expect(cubit.state.summary.balance, 6969);
      expect(cubit.state.summary.expiringPoints, 100);
      expect(cubit.state.history, hasLength(7));
      expect(cubit.state.hasMore, isFalse);
    });
  });

  group('PointsCubit paging', () {
    late _PagedPoints source;

    setUp(() {
      source = _PagedPoints();
      getIt.registerLazySingleton<PointsRepo>(
        () => PointsRepoImpl(source: source),
      );
      getIt.registerLazySingleton(() => GetPointsSummaryUc(getIt()));
      getIt.registerLazySingleton(() => GetPointHistoryUc(getIt()));
    });
    tearDown(() => getIt.reset());

    test('loadMore appends the next pages until the last one', () async {
      final cubit = PointsCubit();
      addTearDown(cubit.close);

      await cubit.load();
      expect(cubit.state.history.map((e) => e.id), [1, 2]);
      expect(cubit.state.hasMore, isTrue);

      await cubit.loadMore();
      await cubit.loadMore();
      expect(cubit.state.history.map((e) => e.id), [1, 2, 3, 4, 5]);
      expect(cubit.state.page, 3);
      expect(cubit.state.hasMore, isFalse);

      // Last page reached: no more requests.
      await cubit.loadMore();
      expect(source.pages, [1, 2, 3]);
    });

    test('a failed next page keeps the rows; reload starts over', () async {
      final cubit = PointsCubit();
      addTearDown(cubit.close);

      await cubit.load();
      source.fail = true;
      await cubit.loadMore();
      expect(cubit.state.history, hasLength(2));
      expect(cubit.state.loadingMore, isFalse);
      expect(cubit.state.page, 1);

      source.fail = false;
      await cubit.load();
      expect(cubit.state.history.map((e) => e.id), [1, 2]);
      expect(source.pages, [1, 2, 1]);
    });
  });
}

/// Three history pages: ids 1-2, 3-4, 5. Records every page asked for.
class _PagedPoints implements PointsSource {
  final pages = <int>[];
  bool fail = false;

  static PointEntry _e(int id) => PointEntry(
    id: id,
    title: 'Point Earned',
    date: DateTime(2026, 11, id),
    points: id,
    amount: 0,
  );

  @override
  ResultFuture<PointsSummary> getSummary() async =>
      const Right(PointsSummary(balance: 15));

  @override
  ResultFuture<PointHistoryPage> getHistory({int page = 1}) async {
    pages.add(page);
    if (fail) return Left(Failures(error: Error(message: 'boom')));

    const ids = [
      [1, 2],
      [3, 4],
      [5],
    ];
    return Right(
      PointHistoryPage(
        items: [for (final id in ids[page - 1]) _e(id)],
        page: page,
        totalPage: ids.length,
        total: 5,
      ),
    );
  }

  @override
  ResultFuture<PointDetail> getDetail(int id) async =>
      Left(Failures(error: Error(message: 'unused')));
}
