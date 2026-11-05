import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:go_router/go_router.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
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

/// Brand id the fake answers with an empty catalog (empty state).
const _emptyBrand = '2197334';

/// Mock file of `GET [endpoint]`, as MockServerInterceptor serves it.
DataMap _mock(String endpoint) =>
    jsonDecode(
          File(
            MockServerInterceptor.assetKey('GET', endpoint),
          ).readAsStringSync(),
        )
        as DataMap;

/// Answers from the mock JSON files and records every request.
class _FakeRemote implements ProductRemote {
  final queries = <(String, CatalogQuery)>[];
  final details = <(String, String)>[];

  bool fail = false;

  /// `/catalog/lists` reports this many pages.
  int totalPage = 1;

  /// Holds the next `/catalog/lists/group` answer until completed.
  Completer<void>? holdGroups;

  ResultFuture<T> _answer<T>(T Function() data) async =>
      fail ? Left(Failures(error: Error(message: 'offline'))) : Right(data());

  @override
  ResultFuture<CatalogGroupsModel> getGroups(CatalogQuery query) {
    queries.add(('groups', query));
    return _answer(
      () => CatalogGroupsModel.fromJson(_mock(Endpoints.catalogGroupList)),
    );
  }

  @override
  ResultFuture<CatalogBrandsModel> getBrands(CatalogQuery query) {
    queries.add(('brands', query));
    return _answer(
      () => CatalogBrandsModel.fromJson(_mock(Endpoints.catalogBrandList)),
    );
  }

  @override
  ResultFuture<CatalogGroupsModel> getGroupProducts(CatalogQuery query) async {
    queries.add(('group_products', query));
    final hold = holdGroups;
    holdGroups = null;
    if (hold != null) await hold.future;

    return _answer(
      () => query.brandId == _emptyBrand
          ? const CatalogGroupsModel()
          : CatalogGroupsModel.fromJson(_mock(Endpoints.catalogGroupProd)),
    );
  }

  @override
  ResultFuture<CatalogListModel> getProducts(CatalogQuery query) {
    queries.add(('products', query));
    return _answer(() {
      if (query.brandId == _emptyBrand) return const CatalogListModel();

      final all = CatalogListModel.fromJson(_mock(Endpoints.catalogList));
      return all.copyWith(
        data: [
          for (final p in all.data)
            if ('${p.productGroupId}' == query.categoryId)
              p.copyWith(id: p.id + query.page * 1000),
        ],
        meta: all.meta.copyWith(page: query.page, totalPage: totalPage),
      );
    });
  }

  @override
  ResultFuture<CatalogDetail> getDetail(String id, String storeDomain) {
    details.add((id, storeDomain));
    return _answer(
      () => CatalogDetail.fromJson(_mock(Endpoints.catalogShow)['data']),
    );
  }

  List<CatalogQuery> of(String kind) => [
    for (final (k, q) in queries)
      if (k == kind) q,
  ];
}

late _FakeRemote _remote;

/// [HydratedBloc.storage] for [StoreBranchCubit], without file IO.
class _MemoryStorage implements Storage {
  final _data = <String, dynamic>{};

  @override
  dynamic read(String key) => _data[key];

  @override
  Future<void> write(String key, dynamic value) async => _data[key] = value;

  @override
  Future<void> delete(String key) async => _data.remove(key);

  @override
  Future<void> clear() async => _data.clear();

  @override
  Future<void> close() async {}
}

void _register() {
  _remote = _FakeRemote();
  getIt.registerSingleton<ProductRemote>(_remote);
  getIt.registerLazySingleton<ProductRepo>(
    () => ProductRepoImpl(remoteData: getIt()),
  );
  getIt.registerLazySingleton(() => GetProductCategoriesUc(getIt()));
  getIt.registerLazySingleton(() => GetProductBrandsUc(getIt()));
  getIt.registerLazySingleton(() => GetProductGroupsUc(getIt()));
  getIt.registerLazySingleton(() => GetProductsUc(getIt()));
  getIt.registerLazySingleton(() => GetProductDetailUc(getIt()));
}

const _wearable = '4364830';
const _audio = '4364831';
const _oraimo = '2197333';

void main() {
  setUp(_register);
  tearDown(() => getIt.reset());

  group('CatalogQuery', () {
    test('filters use search[n] in order: category, brand, name like', () {
      const query = CatalogQuery(
        categoryId: _wearable,
        brandId: _oraimo,
        search: 'watch',
        page: 2,
      );

      expect(query.params, {
        'search[0][search_column]': 'brand_id',
        'search[0][search_text]': _oraimo,
        'search[0][search_condition]': '=',
        'search[1][search_column]': 'product_group_id',
        'search[1][search_text]': _wearable,
        'search[1][search_condition]': '=',
        'search[2][search_column]': 'name',
        'search[2][search_text]': 'watch',
        'search[2][search_condition]': 'like',
        'page': 2,
        'per_page': 15,
      });
    });

    test('indexes stay contiguous when a filter is empty', () {
      const query = CatalogQuery(search: 'pods');

      expect(query.filters, {
        'search[0][search_column]': 'name',
        'search[0][search_text]': 'pods',
        'search[0][search_condition]': 'like',
      });
      expect(const CatalogQuery().filters, isEmpty);
    });
  });

  group('mapping', () {
    test('category: name per language, placeholder icon is dropped', () {
      final category = const CatalogGroup(
        id: 7,
        nameEn: 'Power',
        nameId: 'Daya',
        photoMd: 'https://example.com/img/no_photo/product.png',
      ).toCategory();

      expect(category.id, '7');
      expect(category.name('en'), 'Power');
      expect(category.name('id'), 'Daya');
      expect(category.iconUrl, isEmpty);
      expect(
        const CatalogGroup(
          photoMd: 'https://cdn.example.com/p/md_1.png',
        ).toCategory().iconUrl,
        'https://cdn.example.com/p/md_1.png',
      );
    });

    test('details keep the card cover when there is no photo', () {
      const card = Product(
        id: '1',
        name: 'Card',
        images: ['cover.png'],
        categoryId: _audio,
      );
      final detail = CatalogDetail.fromJson(
        _mock(Endpoints.catalogShow)['data'],
      ).toProduct(card);

      expect(detail.images, ['cover.png']);
      expect(detail.label, 'Sale');
      expect(detail.specs.first.label, 'Model');
      expect(detail.related, isNotEmpty);
      expect(detail.related.every((p) => p.categoryId == _audio), isTrue);
    });

    test('product_photos: URL strings or objects with a photo key', () {
      const detail = CatalogDetail(
        productPhotos: [
          'https://example.com/1.png',
          {'photo_md': 'https://example.com/2.png'},
          {'url': ''},
          42,
        ],
      );

      expect(detail.photos, [
        'https://example.com/1.png',
        'https://example.com/2.png',
      ]);
    });
  });

  group('ProductCubit', () {
    late ProductCubit cubit;

    setUp(() async {
      cubit = ProductCubit(searchDelay: Duration.zero);
      await cubit.load(storeDomain: 'myboss-semarang');
    });
    tearDown(() => cubit.close());

    test('load: tabs, chips and "All" for the branch domain', () {
      expect(cubit.state.status, Status.success);
      expect(cubit.state.categories, hasLength(6));
      expect(cubit.state.brands, hasLength(5));
      expect(cubit.state.groups.map((g) => g.category.nameEn), [
        'Wearable',
        'Audio',
        'Power',
        'Personal Care',
      ]);
      expect(
        _remote.queries.every((q) => q.$2.storeDomain == 'myboss-semarang'),
        isTrue,
      );
    });

    test('category opens the grid of /catalog/lists', () async {
      await cubit.selectCategory(_audio);

      expect(cubit.state.isAll, isFalse);
      expect(cubit.state.products, isNotEmpty);
      expect(cubit.state.products.every((p) => p.categoryId == _audio), isTrue);
      expect(_remote.of('products').last.categoryId, _audio);
    });

    test('brand on "All" filters /catalog/lists/group, no category', () async {
      await cubit.selectBrand(_oraimo);

      final query = _remote.of('group_products').last;
      expect(query.brandId, _oraimo);
      expect(query.filters.keys, isNot(contains('page')));
      expect(query.filters['search[0][search_column]'], 'brand_id');
    });

    test('nothing matches -> empty state', () async {
      await cubit.selectBrand(_emptyBrand);
      expect(cubit.state.isEmpty, isTrue);
    });

    test('search: debounced, from 2 characters', () async {
      final before = _remote.of('group_products').length;

      cubit.search('f');
      await Future<void>.delayed(Duration.zero);
      expect(_remote.of('group_products'), hasLength(before));

      cubit.search('free ');
      await pumpEventQueue();
      expect(_remote.of('group_products'), hasLength(before + 1));
      expect(_remote.of('group_products').last.search, 'free');
    });

    test('an older response is dropped when filters changed', () async {
      final hold = _remote.holdGroups = Completer<void>();
      final slow = cubit.selectBrand(_emptyBrand);
      await cubit.selectBrand(_oraimo);
      hold.complete();
      await slow;

      expect(cubit.state.brandId, _oraimo);
      expect(cubit.state.groups, isNotEmpty);
    });

    test('load more appends the next page', () async {
      _remote.totalPage = 2;
      await cubit.selectCategory(_wearable);
      final first = cubit.state.products.length;
      expect(cubit.state.hasMore, isTrue);

      await cubit.loadMore();
      expect(cubit.state.products, hasLength(first * 2));
      expect(cubit.state.page, 2);
      expect(cubit.state.hasMore, isFalse);
    });

    test('another branch reloads and resets category / brand', () async {
      await cubit.selectCategory(_audio);
      await cubit.selectBrand(_oraimo);

      await cubit.changeBranch('myboss-magelang');
      expect(cubit.state.storeDomain, 'myboss-magelang');
      expect(cubit.state.isAll, isTrue);
      expect(cubit.state.brandId, isEmpty);
      expect(_remote.queries.last.$2.storeDomain, 'myboss-magelang');
    });

    test('failure -> failed, retry recovers', () async {
      _remote.fail = true;
      await cubit.load();
      expect(cubit.state.status, Status.failed);

      _remote.fail = false;
      await cubit.load();
      expect(cubit.state.status, Status.success);
    });
  });

  test('ProductDetailCubit loads details, related open in place', () async {
    const card = Product(id: '106802911', name: 'oraimo FreePods 4');
    final cubit = ProductDetailCubit(product: card, storeDomain: 'semarang');
    addTearDown(cubit.close);

    await cubit.open();
    expect(cubit.state.status, Status.success);
    expect(cubit.state.product.specs, isNotEmpty);
    expect(_remote.details.single, ('106802911', 'semarang'));

    await cubit.open(cubit.state.product.related.first);
    expect(_remote.details.last.$1, '106802913');
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

    // In memory: Hive IO started inside testWidgets (fake async) never
    // completes and blocks the next test.
    setUp(() => HydratedBloc.storage = _MemoryStorage());

    Future<(ProductCubit, StoreBranchCubit)> pump(
      WidgetTester tester,
      Size size,
    ) async {
      tester.view.physicalSize = size;
      tester.view.devicePixelRatio = 1;
      addTearDown(tester.view.reset);

      final cubit = ProductCubit(searchDelay: Duration.zero);
      final branches = StoreBranchCubit();
      addTearDown(cubit.close);
      addTearDown(branches.close);

      // ResponsivePage reads GoRouterState (back-to-top button).
      final router = GoRouter(
        routes: [GoRoute(path: '/', builder: (_, _) => const ProductPage())],
      );
      addTearDown(router.dispose);

      await tester.pumpWidget(
        EasyLocalization(
          supportedLocales: const [Locale('en')],
          path: 'unused',
          assetLoader: const _FileAssets(),
          child: Builder(
            builder: (context) => MultiBlocProvider(
              providers: [
                BlocProvider.value(value: cubit),
                BlocProvider.value(value: branches),
              ],
              child: MaterialApp.router(
                locale: context.locale,
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                theme: MyBossTheme.dark,
                routerConfig: router,
              ),
            ),
          ),
        ),
      );
      await tester.pumpAndSettle();
      return (cubit, branches);
    }

    for (final e in _screens.entries) {
      testWidgets('catalog, filter and empty state on ${e.key}', (
        tester,
      ) async {
        final (cubit, _) = await pump(tester, e.value);

        // All: category sections. Wearable has 10 products: "See more"
        // only on phones (preview 9; 10 on tablet, 12 on desktop).
        expect(find.text('Personal Care'), findsWidgets);
        expect(
          find.text('See more'),
          e.key == 'phone' ? findsOneWidget : findsNothing,
        );
        expect(tester.takeException(), isNull);

        // Category tab (the "Audio" section title is further down).
        await tester.tap(
          find.descendant(
            of: find.byType(MyBossIconTabBar),
            matching: find.text('Audio'),
          ),
        );
        await tester.pumpAndSettle();
        expect(cubit.state.categoryId, _audio);
        expect(find.text('oraimo FreePods 4'), findsOneWidget);
        expect(find.text('Xiaomi Band 9'), findsNothing);

        // Brand chip with no products.
        await tester.tap(find.text('Anker'));
        await tester.pumpAndSettle();
        expect(find.text('Product not found'), findsOneWidget);
        expect(tester.takeException(), isNull);
      });
    }

    testWidgets('product details open from the grid', (tester) async {
      final (cubit, _) = await pump(tester, _screens['phone']!);
      await cubit.selectCategory(_audio);
      await tester.pumpAndSettle();

      await tester.tap(find.text('oraimo FreePods 4'));
      await tester.pumpAndSettle();

      expect(find.text('Specifications'), findsOneWidget);
      expect(find.text('OTW-330'), findsOneWidget);
      expect(find.text('Sale'), findsOneWidget);
      expect(find.text('Related products'), findsOneWidget);
      expect(tester.takeException(), isNull);
    });

    testWidgets('load failure shows retry', (tester) async {
      _remote.fail = true;
      await pump(tester, _screens['phone']!);
      expect(find.text('Could not load products'), findsOneWidget);

      _remote.fail = false;
      await tester.tap(find.byKey(const ValueKey('product_retry')));
      await tester.pumpAndSettle();
      expect(find.text('Personal Care'), findsWidgets);
    });

    testWidgets('a short first page on desktop loads the next one', (
      tester,
    ) async {
      _remote.totalPage = 2;
      final (cubit, _) = await pump(tester, _screens['desktop']!);

      await cubit.selectCategory(_audio);
      await tester.pumpAndSettle();

      expect(_remote.of('products').map((q) => q.page), [1, 2]);
      expect(cubit.state.hasMore, isFalse);
    });

    testWidgets('changing the branch reloads with its url_id', (tester) async {
      final (_, branches) = await pump(tester, _screens['phone']!);

      branches.select(
        const StoreBranch(id: 9, urlId: 'myboss-magelang', name: 'Magelang'),
      );
      await tester.pumpAndSettle();

      expect(_remote.queries.last.$2.storeDomain, 'myboss-magelang');
    });
  });
}
