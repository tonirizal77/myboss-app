import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

/// Records whether the request reached the "network".
class _FakeAdapter implements HttpClientAdapter {
  int calls = 0;

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<List<int>>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    calls++;
    return ResponseBody.fromString(
      jsonEncode({'source': 'server'}),
      200,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  void close({bool force = false}) {}
}

void main() {
  group('ServerAccess', () {
    test('DATA_SOURCE value picks the mode, api by default', () {
      expect(
        ServerAccess.resolveMode(requested: 'mock', locked: false),
        DataSourceMode.mock,
      );
      expect(
        ServerAccess.resolveMode(requested: ' MOCK ', locked: false),
        DataSourceMode.mock,
      );
      expect(
        ServerAccess.resolveMode(requested: 'api', locked: false),
        DataSourceMode.api,
      );
      expect(
        ServerAccess.resolveMode(requested: 'typo', locked: false),
        DataSourceMode.api,
      );
    });

    test('live / release lock always wins', () {
      expect(
        ServerAccess.resolveMode(requested: 'mock', locked: true),
        DataSourceMode.api,
      );
      expect(
        ServerAccess.shouldMock(
          Endpoints.storeBranches,
          mode: DataSourceMode.mock,
          locked: true,
          overrides: {Endpoints.storeBranches},
        ),
        isFalse,
      );
    });

    test('mock mode mocks everything, api mode only the overrides', () {
      expect(
        ServerAccess.shouldMock(
          Endpoints.profileInfo,
          mode: DataSourceMode.mock,
          locked: false,
        ),
        isTrue,
      );
      expect(
        ServerAccess.shouldMock(
          Endpoints.profileInfo,
          mode: DataSourceMode.api,
          locked: false,
          overrides: {Endpoints.storeBranches},
        ),
        isFalse,
      );
      expect(
        ServerAccess.shouldMock(
          '/store/branches?lat=1&lon=2',
          mode: DataSourceMode.api,
          locked: false,
          overrides: {Endpoints.storeBranches},
        ),
        isTrue,
      );
      expect(
        ServerAccess.shouldMock(
          '/catalog/show/12',
          mode: DataSourceMode.api,
          locked: false,
          overrides: {Endpoints.catalogShow},
        ),
        isTrue,
      );
    });

    test('normalizePath drops query and maps parameters to _id', () {
      expect(
        ServerAccess.normalizePath('/store/branches?lat=1'),
        '/store/branches',
      );
      expect(
        ServerAccess.normalizePath('/catalog/show/{id}'),
        '/catalog/show/_id',
      );
      expect(
        ServerAccess.normalizePath('/catalog/show/12'),
        '/catalog/show/_id',
      );
      expect(ServerAccess.normalizePath('store/data'), '/store/data');
    });

    test('defaults to api in tests (no --dart-define)', () {
      expect(ServerAccess.mode, DataSourceMode.api);
      expect(ServerAccess.pick(mock: () => 'mock', api: () => 'api'), 'api');
    });
  });

  group('MockServerInterceptor', () {
    late _FakeAdapter adapter;
    final loaded = <String>[];

    Dio dio({required bool mock, Map<String, String> assets = const {}}) {
      adapter = _FakeAdapter();
      return Dio(BaseOptions(baseUrl: 'https://api.example.com/id/myboss'))
        ..httpClientAdapter = adapter
        ..interceptors.add(
          MockServerInterceptor(
            delay: Duration.zero,
            useMock: (_) => mock,
            loadAsset: (key) async {
              loaded.add(key);
              final raw = assets[key];
              if (raw == null) throw Exception('missing $key');
              return raw;
            },
          ),
        );
    }

    setUp(loaded.clear);

    test('assetKey: one folder per method, path / -> .', () {
      expect(
        MockServerInterceptor.assetKey('GET', '/store/branches?lat=1'),
        'assets/mock/get/store.branches.json',
      );
      expect(
        MockServerInterceptor.assetKey('post', '/account/otp/sign-in/send'),
        'assets/mock/post/account.otp.sign-in.send.json',
      );
      expect(
        MockServerInterceptor.assetKey('GET', '/catalog/show/7'),
        'assets/mock/get/catalog.show._id.json',
      );
    });

    test('endpointPath strips the base URL from full URLs', () {
      final options = RequestOptions(
        baseUrl: 'https://api.example.com/id/myboss',
        path: 'https://api.example.com/id/myboss/store/data?x=1',
      );
      expect(MockServerInterceptor.endpointPath(options), '/store/data');
      expect(
        MockServerInterceptor.endpointPath(RequestOptions(path: '/store/data')),
        '/store/data',
      );
    });

    test('endpointPath: full URL on a branch domain (url_id)', () {
      const base = 'https://api.example.com/id/myboss';
      String path(String url) => MockServerInterceptor.endpointPath(
        RequestOptions(baseUrl: base, path: url),
      );

      expect(
        path('https://api.example.com/id/myboss-semarang/catalog/lists?page=1'),
        '/catalog/lists',
      );
      expect(
        path('https://api.example.com/id/other/catalog/show/12'),
        '/catalog/show/12',
      );
      // Same domain still strips cleanly, other paths are left alone.
      expect(
        path('https://api.example.com/id/myboss/store/data'),
        '/store/data',
      );
      expect(path('https://cdn.example.com/x/y.png'), '/x/y.png');
    });

    test(
      'product page requests on a branch domain, real mock assets',
      () async {
        final client =
            Dio(BaseOptions(baseUrl: 'https://api.example.com/en/myboss'))
              ..interceptors.add(
                MockServerInterceptor(
                  delay: Duration.zero,
                  useMock: (_) => true,
                  loadAsset: (key) => File(key).readAsString(),
                ),
              );
        const branch = 'https://api.example.com/en/myboss-magelang';

        for (final endpoint in [
          Endpoints.catalogGroupList,
          Endpoints.catalogBrandList,
          Endpoints.catalogGroupProd,
          Endpoints.catalogList,
          Endpoints.promoPointList,
          Endpoints.promoVoucherList,
        ]) {
          final res = await client.get(
            '$branch$endpoint',
            queryParameters: {'per_page': 100},
          );
          expect(res.headers.value('x-mock-file'), isNotNull, reason: endpoint);
          expect(res.data['data'], isNotEmpty, reason: endpoint);
          // Simulated responses must stay `Map<String, dynamic>` all the way
          // down, or the json_serializable models reject them.
          expect(
            res.data['meta'],
            isA<Map<String, dynamic>>(),
            reason: endpoint,
          );
        }
        final detail = await client.get('$branch/catalog/show/106802904');
        expect(detail.data['data'], isA<Map<String, dynamic>>());
        expect(detail.data['data']['name'], 'oraimo Watch Pro 2');
      },
    );

    group('server simulation', () {
      const lists = 'assets/mock/get/catalog.lists.json';
      const branch = 'https://api.example.com/id/myboss-magelang';
      final catalog = jsonEncode({
        'data': [
          for (var i = 1; i <= 5; i++)
            {
              'id': i,
              'name': i.isOdd ? 'Watch $i' : 'Buds $i',
              'product_group_id': i <= 3 ? 10 : 20,
              'brand_id': 7,
            },
        ],
        'meta': {'total': 5, 'page': 1, 'per_page': 15, 'total_page': 1},
      });
      Map<String, Object> search(String column, Object text, String cond) => {
        'search[0][search_column]': column,
        'search[0][search_text]': text,
        'search[0][search_condition]': cond,
      };

      test('branch file first, default file otherwise', () async {
        final client = dio(
          mock: true,
          assets: {
            'assets/mock/get/store.data.json': '{"data": "default"}',
            'assets/mock/get/store.data@myboss-magelang.json':
                '{"data": "magelang"}',
          },
        );

        expect(
          (await client.get('$branch/store/data')).data['data'],
          'magelang',
        );
        final other = await client.get(
          'https://api.example.com/id/myboss-jogja/store/data',
        );
        expect(other.data['data'], 'default');
      });

      test('search filters (= and like) and paging with meta', () async {
        final client = dio(mock: true, assets: {lists: catalog});

        final byGroup = await client.get(
          '$branch/catalog/lists',
          queryParameters: {
            ...search('product_group_id', 10, '='),
            'page': 2,
            'per_page': 2,
          },
        );
        expect([for (final e in byGroup.data['data']) e['id']], [3]);
        expect(byGroup.data['meta'], containsPair('total', 3));
        expect(byGroup.data['meta'], containsPair('total_page', 2));

        final byName = await client.get(
          Endpoints.catalogList,
          queryParameters: search('name', 'wATCH', 'like'),
        );
        expect([for (final e in byName.data['data']) e['id']], [1, 3, 5]);
      });

      test('lists/group filters products and drops empty groups', () async {
        final client = dio(
          mock: true,
          assets: {
            'assets/mock/get/catalog.lists.group.json': jsonEncode({
              'data': [
                {
                  'id': 10,
                  'total_product': 2,
                  'products': [
                    {'id': 1, 'name': 'Watch 1'},
                    {'id': 2, 'name': 'Buds 2'},
                  ],
                },
                {
                  'id': 20,
                  'total_product': 1,
                  'products': [
                    {'id': 4, 'name': 'Buds 4'},
                  ],
                },
              ],
              'meta': {'total': 2, 'page': 1, 'per_page': 15},
            }),
          },
        );

        final res = await client.get(
          Endpoints.catalogGroupProd,
          queryParameters: search('name', 'watch', 'like'),
        );
        expect(res.data['data'], [
          {
            'id': 10,
            'total_product': 1,
            'products': [
              {'id': 1, 'name': 'Watch 1'},
            ],
          },
        ]);
      });

      test('detail answers for the requested id, unknown id is 404', () async {
        final client = dio(
          mock: true,
          assets: {
            lists: catalog,
            'assets/mock/get/catalog.show._id.json':
                '{"data": {"id": 99, "name": "Template", "label_tag": "Sale"}}',
          },
        );

        final res = await client.get('$branch/catalog/show/4');
        expect(res.data['data'], {
          'id': 4,
          'name': 'Buds 4',
          'label_tag': 'Sale',
        });

        await expectLater(
          client.get('$branch/catalog/show/404'),
          throwsA(
            isA<DioException>().having(
              (e) => e.response?.statusCode,
              'status',
              404,
            ),
          ),
        );
      });
    });

    test('mock found: answered from the asset, network untouched', () async {
      final client = dio(
        mock: true,
        assets: {
          'assets/mock/get/store.branches.json': '{"data": [{"id": 1}]}',
        },
      );

      final res = await client.get(
        Endpoints.storeBranches,
        queryParameters: {'lat': 1, 'lon': 2},
      );

      expect(res.statusCode, 200);
      expect(res.data, {
        'data': [
          {'id': 1},
        ],
      });
      expect(
        res.headers.value('x-mock-file'),
        'assets/mock/get/store.branches.json',
      );
      expect(adapter.calls, 0);
    });

    test('mock missing: clear 404 error, never falls back', () async {
      final client = dio(mock: true);

      await expectLater(
        client.post(Endpoints.clientAuth),
        throwsA(
          isA<DioException>()
              .having((e) => e.response?.statusCode, 'status', 404)
              .having((e) => e.message, 'message', contains('Mock not found')),
        ),
      );
      expect(loaded, ['assets/mock/post/client.login.json']);
      expect(adapter.calls, 0);
    });

    test('invalid JSON is reported, not passed on', () async {
      final client = dio(
        mock: true,
        assets: {'assets/mock/get/faq.json': '{oops'},
      );

      await expectLater(
        client.get(Endpoints.faq),
        throwsA(
          isA<DioException>().having(
            (e) => e.message,
            'message',
            contains('Invalid mock JSON'),
          ),
        ),
      );
    });

    test('api mode: request goes to the network untouched', () async {
      final client = dio(mock: false);

      final res = await client.get(Endpoints.storeData);

      expect(res.data, {'source': 'server'});
      expect(adapter.calls, 1);
      expect(loaded, isEmpty);
    });
  });
}
