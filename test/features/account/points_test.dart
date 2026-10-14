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
      final history = (await source.getHistory()).getOrElse(() => const []);

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
    });
  });
}
