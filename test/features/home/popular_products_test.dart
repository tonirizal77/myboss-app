import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

/// Answers per branch; a branch listed in [hold] waits until completed.
class _FakeRemote implements ProductRemote {
  final queries = <CatalogQuery>[];
  final hold = <String, Completer<void>>{};
  bool fail = false;

  /// `/catalog/group/lists` fails (the product total still answers).
  bool failGroups = false;

  @override
  ResultFuture<CatalogListModel> getProducts(CatalogQuery query) async {
    queries.add(query);
    await hold[query.storeDomain]?.future;
    if (fail) return Left(Failures(error: Error(message: 'offline')));

    return Right(
      CatalogListModel(
        // Catalog total of the branch, e.g. 42 rows over every page.
        meta: CatalogMeta(total: query.storeDomain == 'jogja' ? 42 : 7),
        data: [
          CatalogItem(
            id: 1,
            name: 'Popular ${query.storeDomain}',
            photoMd: 'https://example.test/p.png',
            productGroupName: 'Audio',
          ),
        ],
      ),
    );
  }

  @override
  ResultFuture<CatalogGroupsModel> getGroups(CatalogQuery query) async {
    await hold[query.storeDomain]?.future;
    if (fail || failGroups) {
      return Left(Failures(error: Error(message: 'offline')));
    }
    return Right(
      CatalogGroupsModel(
        meta: CatalogMeta(total: query.storeDomain == 'jogja' ? 9 : 3),
      ),
    );
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

void main() {
  late _FakeRemote remote;

  setUp(() {
    remote = _FakeRemote();
    getIt.registerSingleton<ProductRemote>(remote);
    getIt.registerLazySingleton<PopularProductsRepo>(
      () => PopularProductsRepoImpl(remote: getIt()),
    );
    getIt.registerLazySingleton(() => GetPopularProductsUc(getIt()));
    getIt.registerLazySingleton(() => GetCatalogStatsUc(getIt()));
  });
  tearDown(() => getIt.reset());

  test('CatalogQuery.popular sends is_popular = 1 after the other filters', () {
    const query = CatalogQuery(brandId: '7', popular: true);

    expect(query.filters, {
      'search[0][search_column]': 'brand_id',
      'search[0][search_text]': '7',
      'search[0][search_condition]': '=',
      'search[1][search_column]': 'is_popular',
      'search[1][search_text]': '1',
      'search[1][search_condition]': '=',
    });
    expect(const CatalogQuery().filters, isEmpty);
  });

  test(
    'repo asks the branch for popular products and maps the cards',
    () async {
      final result = await getIt<PopularProductsRepo>().getPopular('jogja');

      expect(remote.queries.single.storeDomain, 'jogja');
      expect(remote.queries.single.popular, isTrue);
      expect(remote.queries.single.perPage, PopularProductsRepoImpl.limit);
      expect(result.getOrElse(() => const []), const [
        CatalogPreview(
          name: 'Popular jogja',
          category: 'Audio',
          image: 'https://example.test/p.png',
          // Opens /catalog/show/1 when tapped.
          productId: '1',
        ),
      ]);
    },
  );

  test(
    'cubit drops the answer of a branch that is no longer selected',
    () async {
      final cubit = PopularProductsCubit();
      addTearDown(cubit.close);
      remote.hold['old'] = Completer();

      final slow = cubit.load('old');
      await cubit.load('new');
      remote.hold['old']!.complete();
      await slow;

      expect(cubit.state.storeDomain, 'new');
      expect(cubit.state.items.single.name, 'Popular new');
    },
  );

  test('cubit clears the previous branch and keeps items on failure', () async {
    final cubit = PopularProductsCubit();
    addTearDown(cubit.close);

    await cubit.load('a');
    remote.fail = true;
    await cubit.load('a');
    expect(cubit.state.status, Status.failed);
    expect(cubit.state.items, isNotEmpty);

    remote.hold['b'] = Completer();
    final next = cubit.load('b');
    expect(cubit.state.items, isEmpty);
    remote.hold['b']!.complete();
    await next;
  });

  group('catalog totals (Home copy)', () {
    test(
      'products = meta.total of /catalog/lists, categories = groups',
      () async {
        final stats = (await getIt<PopularProductsRepo>().getStats(
          'jogja',
        )).getOrElse(() => throw StateError('failed'));

        expect(stats, const CatalogStats(products: 42, categories: 9));
        // One row is enough for meta.total.
        expect(remote.queries.single.perPage, 1);
        expect(remote.queries.single.popular, isFalse);
        expect(remote.queries.single.storeDomain, 'jogja');
      },
    );

    test('one request failing keeps the other total', () async {
      remote.failGroups = true;
      final stats = (await getIt<PopularProductsRepo>().getStats(
        'jogja',
      )).getOrElse(() => throw StateError('failed'));

      expect(stats, const CatalogStats(products: 42));
    });

    test('cubit loads them per branch, never mixing branches', () async {
      final cubit = PopularProductsCubit();
      addTearDown(cubit.close);

      await cubit.load('jogja');
      expect(
        cubit.state.stats,
        const CatalogStats(products: 42, categories: 9),
      );

      remote.hold['solo'] = Completer();
      final next = cubit.load('solo');
      // Another branch: the previous totals are gone at once.
      expect(cubit.state.stats, const CatalogStats());
      remote.hold['solo']!.complete();
      await next;
      expect(cubit.state.stats, const CatalogStats(products: 7, categories: 3));
    });
  });
}
