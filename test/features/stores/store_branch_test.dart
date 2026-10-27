import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:myboss_app/core_feat/theme/mybos_theme.dart';
import 'package:myboss_app/features/stores/domain/domains.dart';
import 'package:myboss_app/features/stores/presenter/viewmodels/store_branch_cubit/store_branch_cubit.dart';
import 'package:myboss_app/features/stores/presenter/widgets/widgets.dart';

Position _pos(double lat, double lon) => Position(
  latitude: lat,
  longitude: lon,
  timestamp: DateTime(2026),
  accuracy: 1,
  altitude: 0,
  altitudeAccuracy: 1,
  heading: 0,
  headingAccuracy: 1,
  speed: 0,
  speedAccuracy: 1,
);

StoreBranch _branch(
  int id,
  String name, {
  bool open = false,
  String? lat,
  String? lon,
  double? distance,
}) => StoreBranch(
  id: id,
  name: name,
  cityName: 'Semarang',
  address: 'Jl. Boulevard Bintaro Jaya',
  isOpen: open,
  locationLat: lat,
  locationLon: lon,
  distance: distance,
);

/// Shape of `GET /store/branches` (synthetic values).
const _response = {
  'data': [
    {
      'id': 1,
      'url_id': 'myboss-magelang',
      'address': 'Jl. Pemuda No. 1',
      'logo': 'https://example.com/img/no_photo/logo.png',
      'name': 'Oraimo Magelang',
      'is_store_parent': 0,
      'app_status': {
        'store_status': 'A',
        'android_app_status': 'A',
        'ios_app_status': 'A',
      },
      'location_lat': '-7.4705',
      'location_lon': '110.2178',
      'city_name': 'Magelang',
      'distance': 7542.1,
      'is_open': false,
      'today_hours': '-',
    },
    {
      'id': 2,
      'name': 'Oraimo Semarang',
      'logo': 'https://example.com/logo-semarang.png',
      'distance': 12,
      'is_open': true,
      'today_hours': '09:00 - 21:00',
    },
  ],
  'meta': {
    'total': 2,
    'page': 1,
    'offset': 0,
    'per_page': 15,
    'total_page': 1,
  },
  'status': 200,
  'error': 0,
};

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        Directory.systemTemp.createTempSync('store_branch_test').path,
      ),
    );
  });

  setUp(() async => HydratedBloc.storage.clear());

  group('StoreBranchesModel', () {
    test('parses the /store/branches response', () {
      final model = StoreBranchesModel.fromJson(_response);

      expect(model.data, hasLength(2));
      expect(model.meta.perPage, 15);
      expect(model.meta.totalPage, 1);

      final first = model.data.first;
      expect(first.urlId, 'myboss-magelang');
      expect(first.cityName, 'Magelang');
      expect(first.distance, 7542.1);
      expect(first.isOpen, isFalse);
      expect(first.todayHours, '-');
      expect(first.appStatus?.storeStatus, 'A');

      // Integer distance and missing fields are fine too.
      expect(model.data.last.distance, 12.0);
      expect(model.data.last.isOpen, isTrue);
    });

    test('survives JSON round trip', () {
      final model = StoreBranchesModel.fromJson(_response);
      expect(StoreBranchesModel.fromJson(model.toJson()), model);
    });
  });

  group('StoreBranchX', () {
    test('distanceKm prefers the device position, else the API distance', () {
      final b = _branch(1, 'a', lat: '-6.9932', lon: '110.4203');
      expect(b.distanceKm(null), isNull);
      expect(_branch(1, 'a').distanceKm(_pos(0, 0)), isNull);

      final km = b.distanceKm(_pos(-6.9932, 110.4303));
      expect(km, closeTo(1.1, 0.1));

      final fromApi = _branch(1, 'a', distance: 3.4);
      expect(fromApi.distanceKm(null), 3.4);
    });

    test('logoUrl hides the backend no-photo placeholder', () {
      final model = StoreBranchesModel.fromJson(_response);
      expect(model.data.first.logoUrl, isNull);
      expect(
        model.data.last.logoUrl,
        'https://example.com/logo-semarang.png',
      );
    });

    test('mapsUrl uses the coordinates', () {
      expect(_branch(1, 'a').mapsUrl, isNull);
      expect(
        _branch(1, 'a', lat: '-7.4705', lon: '110.2178').mapsUrl,
        'https://www.google.com/maps/search/?api=1&query=-7.4705,110.2178',
      );
    });

    test('branchSubtitle formats city and distance', () {
      final b = _branch(1, 'a', lat: '-6.9932', lon: '110.4203');
      expect(branchSubtitle(b, null), 'Semarang');
      expect(branchSubtitle(b, _pos(-6.9932, 110.4303)), 'Semarang · 1.1 km');
      expect(formatDistanceKm(150.4), '150 km');
    });
  });

  group('StoreBranchCubit', () {
    test('picks the nearest branch when nothing is selected', () {
      final cubit = StoreBranchCubit();
      addTearDown(cubit.close);
      cubit.emit(StoreBranchState(position: _pos(-6.9932, 110.4203)));

      cubit.ensureSelection([
        _branch(1, 'Far', lat: '-7.80', lon: '110.36'),
        _branch(2, 'Near', lat: '-6.99', lon: '110.42'),
      ]);

      expect(cubit.state.selected?.name, 'Near');
    });

    test('falls back to the first branch without position', () {
      final cubit = StoreBranchCubit();
      addTearDown(cubit.close);

      cubit.ensureSelection([_branch(1, 'First'), _branch(2, 'Second')]);

      expect(cubit.state.selected?.name, 'First');
    });

    test('keeps selection but refreshes its data', () {
      final cubit = StoreBranchCubit();
      addTearDown(cubit.close);
      cubit.select(_branch(2, 'Second', open: false));

      cubit.ensureSelection([
        _branch(1, 'First'),
        _branch(2, 'Second', open: true),
      ]);

      expect(cubit.state.selected?.id, 2);
      expect(cubit.state.selected?.isOpen, isTrue);
    });

    test('survives JSON round trip', () {
      final cubit = StoreBranchCubit();
      addTearDown(cubit.close);
      final state = StoreBranchState(selected: _branch(3, 'Third', open: true));

      final restored = cubit.fromJson(cubit.toJson(state)!);

      expect(restored?.selected, state.selected);
    });
  });

  group('BranchCard', () {
    Widget host(Widget child) => MaterialApp(
      theme: MyBossTheme.dark,
      home: Scaffold(body: SingleChildScrollView(child: child)),
    );

    testWidgets('selected shows check, unselected shows Select', (
      tester,
    ) async {
      var taps = 0;

      await tester.pumpWidget(
        host(
          Column(
            children: [
              BranchCard(
                data: _branch(1, 'Oraimo Semarang', open: true),
                selected: true,
              ),
              BranchCard(
                data: _branch(2, 'Oraimo Magelang', open: false),
                selected: false,
                onSelect: () => taps++,
              ),
            ],
          ),
        ),
      );

      expect(find.text('Oraimo Semarang'), findsOneWidget);
      expect(find.byIcon(Icons.check), findsOneWidget);

      await tester.tap(find.text('Oraimo Magelang'));
      expect(taps, 1);
    });
  });
}
