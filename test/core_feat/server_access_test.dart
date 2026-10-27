import 'dart:convert';

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
