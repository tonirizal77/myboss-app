import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/home/home_ft.dart';

Widget _host(Widget child) => MaterialApp(
  theme: MyBossTheme.dark,
  home: Scaffold(body: SingleChildScrollView(child: child)),
);

void main() {
  group('GuestHomeStatic', () {
    test('provides the Figma content', () async {
      final result = await const GuestHomeStatic().getGuestHome();
      final data = result.getOrElse(() => const GuestHome());

      expect(data.brands, hasLength(6));
      expect(data.catalog, hasLength(5));
      expect(data.rewards, hasLength(4));
      expect(data.productCount, 100);
      expect(data.categoryCount, 25);
      expect(data.catalog.map((c) => c.category), contains('Wearable'));
    });
  });

  group('GuestHomeCubit', () {
    setUp(() {
      getIt.registerLazySingleton<GetGuestHomeUc>(
        () =>
            GetGuestHomeUc(const GuestHomeRepoImpl(source: GuestHomeStatic())),
      );
    });
    tearDown(() => getIt.reset());

    test('load emits loading then success with data', () async {
      final cubit = GuestHomeCubit();
      addTearDown(cubit.close);

      final states = <Status>[];
      cubit.stream.listen((s) => states.add(s.status));

      await cubit.load();
      await Future<void>.delayed(Duration.zero); // let the stream deliver

      expect(states, [Status.loading, Status.success]);
      expect(cubit.state.data.catalog, isNotEmpty);
    });
  });

  group('guest widgets', () {
    final catalog = [
      const CatalogPreview(
        name: 'SpaceBuds 2',
        category: 'Power',
        image: 'assets/images/products/product_01.png',
      ),
      const CatalogPreview(
        name: 'Watch',
        category: 'Wearable',
        image: 'assets/images/products/product_03.png',
      ),
      const CatalogPreview(
        name: 'Earbuds',
        category: 'Audio',
        image: 'assets/images/products/product_02.png',
      ),
    ];

    testWidgets('GuestProductCard shows name and category chip', (
      tester,
    ) async {
      await tester.pumpWidget(
        _host(
          const GuestProductCard(
            name: 'SpaceBuds 2',
            image: 'assets/images/products/product_01.png',
            chip: 'Audio',
            focused: true,
          ),
        ),
      );

      expect(find.text('SpaceBuds 2'), findsOneWidget);
      expect(find.text('Audio'), findsOneWidget);
    });

    testWidgets('GuestCatalog renders the focused card of the carousel', (
      tester,
    ) async {
      await tester.pumpWidget(_host(GuestCatalog(items: catalog, total: 100)));
      await tester.pump();

      // Initial page is the third item (index 2).
      expect(find.text('Earbuds'), findsOneWidget);
      expect(find.text('guest_home.catalogs_title'), findsOneWidget);
    });

    testWidgets('GuestRewards renders every reward with its points', (
      tester,
    ) async {
      await tester.pumpWidget(
        _host(
          const GuestRewards(
            rewards: [
              RewardPreview(
                name: 'A',
                points: 100,
                image: 'assets/images/products/product_02.png',
              ),
              RewardPreview(
                name: 'B',
                points: 250,
                image: 'assets/images/products/product_06.png',
              ),
            ],
          ),
        ),
      );

      expect(find.text('A'), findsOneWidget);
      expect(find.text('B'), findsOneWidget);
      expect(find.text('guest_home.earn_title'), findsOneWidget);
    });

    testWidgets('GuestBrands shows every logo and the caption', (tester) async {
      await tester.pumpWidget(
        _host(
          const GuestBrands(
            categories: 25,
            brands: [
              BrandLogo(
                name: 'Oraimo',
                image: 'assets/images/brands/brand_oraimo.png',
              ),
              BrandLogo(
                name: 'Oppo',
                image: 'assets/images/brands/brand_oppo.png',
              ),
            ],
          ),
        ),
      );

      expect(find.byType(Image), findsNWidgets(2));
      expect(find.text('guest_home.brands_caption'), findsOneWidget);
    });
  });
}
