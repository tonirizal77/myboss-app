import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';
import 'package:shared_preferences/shared_preferences.dart';

class _FileAssets extends AssetLoader {
  const _FileAssets();

  @override
  Future<Map<String, dynamic>> load(String path, Locale locale) async =>
      jsonDecode(
            File(
              'assets/translations/${locale.languageCode}.json',
            ).readAsStringSync(),
          )
          as Map<String, dynamic>;
}

/// Phone / tablet / desktop (window width classes used by `Responsive`).
const _screens = {
  'phone': Size(400, 800),
  'tablet': Size(800, 1100),
  'desktop': Size(1400, 900),
};

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
  });

  for (final entry in _screens.entries) {
    testWidgets('Points page lays out on ${entry.key}', (tester) async {
      tester.view.physicalSize = entry.value;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);

      getIt.registerLazySingleton<PointsRepo>(
        () => const PointsRepoImpl(source: PointsStatic()),
      );
      getIt.registerLazySingleton(() => GetPointsSummaryUc(getIt()));
      getIt.registerLazySingleton(() => GetPointHistoryUc(getIt()));
      addTearDown(getIt.reset);

      final cubit = PointsCubit();
      addTearDown(cubit.close);

      await tester.pumpWidget(
        EasyLocalization(
          supportedLocales: const [Locale('en')],
          path: 'unused',
          assetLoader: const _FileAssets(),
          child: Builder(
            builder: (context) => MaterialApp(
              locale: context.locale,
              localizationsDelegates: context.localizationDelegates,
              supportedLocales: context.supportedLocales,
              theme: MyBossTheme.dark,
              home: BlocProvider.value(value: cubit, child: const PointsPage()),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();

      final header = tester.getRect(find.byType(MyBossHeader));
      final badge = tester.getRect(find.byType(PointsBadge));
      final screen = Offset.zero & entry.value;

      // Banner is not hidden under the header.
      expect(badge.top, greaterThanOrEqualTo(header.bottom));

      // Every history row is inside the screen (nothing spills sideways).
      final rows = find.text('Point Earned');
      expect(rows, findsWidgets);
      for (final e in rows.evaluate()) {
        final r = tester.getRect(find.byElementPredicate((x) => x == e));
        expect(
          screen.contains(r.topLeft) && screen.contains(r.bottomRight),
          isTrue,
          reason: 'row $r outside $screen',
        );
      }

      // No RenderFlex overflow anywhere.
      expect(tester.takeException(), isNull);
    });
  }
}
