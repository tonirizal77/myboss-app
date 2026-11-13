import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
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

/// `GET /terms-and-policy` in the shape the server answers.
Map<String, dynamic> _doc(
  int id,
  String type,
  String title,
  String html, {
  bool published = true,
  String status = 'A',
}) => {
  'created_time': '2026-11-12T04:52:43Z',
  'description': html,
  'id': id,
  'meta_description': null,
  'modified_by': null,
  'photo_id': null,
  'published': published,
  'sitenav_link_type_id': type,
  'status': status,
  'store_id': 1,
  'title': title,
};

final _response = {
  'data': [
    _doc(1, 'TOU', 'Terms of use', '<ul><li>Valid account data.</li></ul>'),
    _doc(2, 'PPO', 'Privacy Policy', '<ul><li>Data is encrypted.</li></ul>'),
    _doc(3, 'RFP', 'Refund Policy', '<ul><li>Refund point 1</li></ul>'),
    _doc(4, 'X', 'Draft', '<p>Hidden draft</p>', published: false),
    _doc(5, 'Y', 'Inactive', '<p>Hidden inactive</p>', status: 'D'),
  ],
  'status': 200,
  'error': 0,
};

class _Repo implements AccountRepo {
  int calls = 0;
  bool fail = false;

  @override
  ResultFuture<TncModel> getTnc() async {
    calls++;
    return fail
        ? Left(Failures(error: Error(message: 'offline')))
        : Right(TncModel.fromJson(_response));
  }

  @override
  dynamic noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

Future<AccountBloc> _pump(WidgetTester tester, _Repo repo) async {
  getIt.registerLazySingleton(() => GetTncUc(repo));
  addTearDown(getIt.reset);

  final bloc = AccountBloc();
  addTearDown(bloc.close);

  await tester.pumpWidget(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'unused',
      assetLoader: const _FileAssets(),
      child: Builder(
        builder: (context) => BlocProvider.value(
          value: bloc,
          // ResponsivePage reads GoRouterState (back-to-top button).
          child: MaterialApp.router(
            locale: context.locale,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            theme: MyBossTheme.dark,
            routerConfig: GoRouter(
              routes: [GoRoute(path: '/', builder: (_, _) => const TncPage())],
            ),
          ),
        ),
      ),
    ),
  );
  await tester.pumpAndSettle();
  return bloc;
}

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();
  });

  // In memory: file IO started inside testWidgets (fake async) never ends.
  setUp(() => HydratedBloc.storage = _MemoryStorage());

  test('the model keeps published, active documents only', () {
    final model = TncModel.fromJson(_response);

    expect(model.data, hasLength(5));
    expect(model.visible.map((d) => d.sitenavLinkTypeId), [
      'TOU',
      'PPO',
      'RFP',
    ]);
    // Survives the hydrated round trip, and the old single-document cache.
    expect(
      TncModel.fromJson(
        jsonDecode(jsonEncode(model.toJson())) as Map<String, dynamic>,
      ),
      model,
    );
    expect(TncModel.fromJson({'id': 1, 'title': 'old'}).visible, isEmpty);
  });

  test('terms are asked on the selected branch first, then the main store', () {
    // No branch selected: `ConfigServer.branchUrl` leaves the endpoint as is.
    expect(AccountRemoteImpl.tncUrls(Endpoints.termsAndPolicy), [
      '/terms-and-policy',
    ]);

    const branch = 'https://api.test/id/myboss-magelang/terms-and-policy';
    expect(AccountRemoteImpl.tncUrls(branch), [branch, '/terms-and-policy']);
  });

  testWidgets('shows every published document with its HTML text', (
    tester,
  ) async {
    final repo = _Repo();
    await _pump(tester, repo);

    expect(repo.calls, 1);
    expect(find.text('Terms & Policy'), findsOneWidget);
    for (final title in ['Terms of use', 'Privacy Policy', 'Refund Policy']) {
      expect(find.text(title), findsOneWidget);
    }
    expect(find.textContaining('Valid account data.'), findsOneWidget);
    expect(find.textContaining('Refund point 1'), findsOneWidget);
    expect(find.text('Draft'), findsNothing);
    expect(find.text('Inactive'), findsNothing);
    expect(find.byKey(const ValueKey('tnc_retry')), findsNothing);
  });

  testWidgets('a failed load offers a retry that loads the documents', (
    tester,
  ) async {
    final repo = _Repo()..fail = true;
    await _pump(tester, repo);

    expect(find.text('Failed to load terms and policy.'), findsOneWidget);
    expect(find.byKey(const ValueKey('tnc_list')), findsNothing);

    repo.fail = false;
    await tester.tap(find.byKey(const ValueKey('tnc_retry')));
    await tester.pumpAndSettle();

    expect(repo.calls, 2);
    expect(find.text('Privacy Policy'), findsOneWidget);
  });
}
