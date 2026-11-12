import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart' show Right;
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

/// Answers `/catalog/show/{id}` with a fixed description and records
/// `<id>@<storeDomain>`.
class _Products implements ProductRepo {
  final calls = <String>[];

  @override
  ResultFuture<Product> getDetail(Product card, String storeDomain) async {
    calls.add('${card.id}@$storeDomain');
    return Right(
      Product(
        id: card.id,
        name: card.name,
        images: card.images,
        description: 'Fast charging cable',
      ),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

/// Promo content of a branch, without requests.
class _PromoOf extends PromoCubit {
  _PromoOf(String storeDomain) {
    // ignore: invalid_use_of_visible_for_testing_member
    emit(
      PromoState(
        status: Status.success,
        params: PromoParams(storeDomain: storeDomain, isLoggedIn: true),
      ),
    );
  }
}

/// `GET /promotion/loyalty-points/list` as staging answers it (2026-11-12).
const _staging = {
  'data': [
    {
      'id': 39839,
      'product_id': 106802919,
      'name': 'Ugreen USB-C Cable 1m',
      'photo': 'https://dryik5kfo7do1.cloudfront.net/p/md_6af18e1f4b396.png',
      'redeemed_points': 100,
    },
    {
      'id': 39846,
      'product_id': 106802918,
      'name': 'Ugreen Nexode 65W',
      'photo': 'https://dryik5kfo7do1.cloudfront.net/p/md_6af18e1c7a869.png',
      'redeemed_points': 150,
    },
  ],
  'meta': {'total': 2, 'page': 1, 'per_page': 15, 'total_page': 1},
  'status': 200,
  'error': 0,
};

void main() {
  late _Products products;

  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
  });

  setUp(() {
    products = _Products();
    getIt.registerLazySingleton(() => GetProductDetailUc(products));
    getIt.registerLazySingleton(() => GeneralHelper());
  });
  tearDown(() => getIt.reset());

  test('staging payload: product_id reaches the reward', () {
    final rewards = [
      for (final p in PromoPointsModel.fromJson(_staging).data) p.toReward(),
    ];

    expect(rewards.first.productId, '106802919');
    expect(rewards.first.hasDetail, isTrue);
    expect(rewards.first.points, 100);
    expect(rewards.last.name, 'Ugreen Nexode 65W');

    // Older payloads without product_id: no details.
    final old = PromoPoint.fromJson(const {'id': 1, 'name': 'X'}).toReward();
    expect(old.productId, isEmpty);
    expect(old.hasDetail, isFalse);
  });

  Future<void> pump(WidgetTester tester, RewardPreview reward) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

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
            home: BlocProvider<PromoCubit>(
              create: (_) => _PromoOf('myboss-semarang'),
              child: Scaffold(
                body: Center(
                  child: SizedBox(
                    width: 180,
                    height: 172,
                    child: RewardCard(reward: reward),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('tapping a reward opens its product, on the Promo branch', (
    tester,
  ) async {
    await pump(
      tester,
      const RewardPreview(
        name: 'Ugreen USB-C Cable 1m',
        points: 100,
        image: '',
        productId: '106802919',
      ),
    );

    await tester.tap(find.byType(RewardCard));
    await tester.pumpAndSettle();

    expect(products.calls, ['106802919@myboss-semarang']);
    expect(find.text('Fast charging cable'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('a reward without product does nothing', (tester) async {
    await pump(
      tester,
      const RewardPreview(name: 'PowerBox 10000', points: 50, image: ''),
    );

    await tester.tap(find.byType(RewardCard));
    await tester.pumpAndSettle();

    expect(products.calls, isEmpty);
    expect(tester.takeException(), isNull);
  });

  testWidgets('Home popular product opens its details on its branch', (
    tester,
  ) async {
    tester.view.physicalSize = const Size(400, 900);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);

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
            home: const Scaffold(
              body: SingleChildScrollView(
                child: GuestCatalog(
                  storeDomain: 'myboss-jogja',
                  total: 1,
                  items: [
                    CatalogPreview(
                      name: 'oraimo FreePods 4',
                      category: 'Audio',
                      image: '',
                      productId: '106802911',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();

    await tester.tap(find.byKey(const ValueKey('home_product_0')));
    await tester.pumpAndSettle();

    expect(products.calls, ['106802911@myboss-jogja']);
    expect(find.text('Fast charging cable'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
