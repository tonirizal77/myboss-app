import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

const _screens = {
  'phone': Size(400, 900),
  'tablet': Size(820, 1100),
  'desktop': Size(1400, 900),
};

void main() {
  setUp(() {
    getIt.registerLazySingleton<ProductSource>(() => const ProductStatic());
    getIt.registerLazySingleton<ProductRepo>(
      () => ProductRepoImpl(source: getIt()),
    );
    getIt.registerLazySingleton(() => GetProductCatalogUc(getIt()));
  });
  tearDown(() => getIt.reset());

  group('ProductCubit', () {
    late ProductCubit cubit;

    setUp(() async {
      cubit = ProductCubit();
      await cubit.load();
    });
    tearDown(() => cubit.close());

    test('All shows one section per category', () {
      expect(cubit.state.status, Status.success);
      expect(cubit.state.isAll, isTrue);
      expect(cubit.state.sections.map((s) => s.$1.id), [
        'wearable',
        'audio',
        'power',
      ]);
      expect(cubit.state.sections.first.$2, hasLength(12));
    });

    test('category, brand and search narrow the list', () {
      cubit.selectCategory('audio');
      expect(
        cubit.state.products.every((p) => p.categoryId == 'audio'),
        isTrue,
      );
      expect(cubit.state.products, hasLength(10));

      cubit.selectBrand('Anker');
      expect(cubit.state.products.every((p) => p.brand == 'Anker'), isTrue);
      expect(cubit.state.products, isNotEmpty);

      cubit.selectBrand('');
      cubit.search('freepods');
      expect(cubit.state.products.map((p) => p.name), [
        'FreePods Neo',
        'FreePods 4',
      ]);
    });

    test('Wearable + Anker has no products (empty state)', () {
      cubit.selectCategory('wearable');
      cubit.selectBrand('Anker');
      expect(cubit.state.isEmpty, isTrue);
    });

    test('related products resolve inside the catalog', () {
      final p = cubit.state.catalog.products.first;
      expect(p.relatedIds, isNotEmpty);
      expect(
        p.relatedIds.every((id) => cubit.state.catalog.byId(id) != null),
        isTrue,
      );
    });
  });

  group('Product page layout', () {
    setUpAll(() async {
      TestWidgetsFlutterBinding.ensureInitialized();
      SharedPreferences.setMockInitialValues({});
      await EasyLocalization.ensureInitialized();
      final loader = FontLoader('Poppins');
      for (final w in ['Regular', 'Medium', 'SemiBold', 'Bold']) {
        loader.addFont(
          Future.value(
            ByteData.sublistView(
              File('assets/fonts/Poppins/Poppins-$w.ttf').readAsBytesSync(),
            ),
          ),
        );
      }
      await loader.load();
    });

    Future<ProductCubit> pump(WidgetTester tester, Size size) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);

      final cubit = ProductCubit();
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
              home: BlocProvider.value(value: cubit, child: const MenuPage()),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      return cubit;
    }

    for (final e in _screens.entries) {
      testWidgets('catalog, filter and empty state on ${e.key}', (
        tester,
      ) async {
        final cubit = await pump(tester, e.value);

        // All: category sections; "See more" only when a category has more
        // than the preview (12 on desktop = all 12 wearables).
        expect(find.text('Wearable'), findsWidgets);
        expect(
          find.text('See more'),
          e.key == 'desktop' ? findsNothing : findsWidgets,
        );
        expect(tester.takeException(), isNull);

        // Category filter.
        cubit.selectCategory('audio');
        await tester.pumpAndSettle();
        expect(find.text('See more'), findsNothing);
        expect(find.text('SpaceBuds 2'), findsOneWidget);

        // Nothing matches.
        cubit.selectCategory('wearable');
        cubit.selectBrand('Anker');
        await tester.pumpAndSettle();
        expect(find.text('Product not found'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    }

    testWidgets('product details open from the grid', (tester) async {
      final cubit = await pump(tester, _screens['phone']!);
      cubit.selectCategory('audio');
      await tester.pumpAndSettle();

      await tester.tap(find.text('SpaceBuds 2'));
      await tester.pumpAndSettle();

      expect(find.text('Specifications'), findsOneWidget);
      expect(find.text('OTW-631'), findsOneWidget);
      expect(find.text('1/5'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });
  });
}
