import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:myboss_app/core_feat/theme/mybos_theme.dart';
import 'package:myboss_app/features/stores/domain/domains.dart';
import 'package:myboss_app/features/stores/presenter/viewmodels/branch_cubit/branch_cubit.dart';
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

StoreList _branch(
  int id,
  String name, {
  String? status,
  String? lat,
  String? lon,
}) => StoreList(
  id: id,
  name: name,
  city: 'Semarang',
  address: 'Jl. Boulevard Bintaro Jaya',
  status: status,
  locationLat: lat,
  locationLon: lon,
);

void main() {
  setUpAll(() async {
    TestWidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: HydratedStorageDirectory(
        Directory.systemTemp.createTempSync('branch_test').path,
      ),
    );
  });

  setUp(() async => HydratedBloc.storage.clear());

  group('BranchX', () {
    test('isOpen recognises open values only', () {
      expect(_branch(1, 'a', status: 'open').isOpen, isTrue);
      expect(_branch(1, 'a', status: '1').isOpen, isTrue);
      expect(_branch(1, 'a', status: 'Closed').isOpen, isFalse);
      expect(_branch(1, 'a').isOpen, isFalse);
    });

    test('distanceKm needs both position and coordinates', () {
      final b = _branch(1, 'a', lat: '-6.9932', lon: '110.4203');
      expect(b.distanceKm(null), isNull);
      expect(_branch(1, 'a').distanceKm(_pos(0, 0)), isNull);

      final km = b.distanceKm(_pos(-6.9932, 110.4303));
      expect(km, closeTo(1.1, 0.1));
    });

    test('branchSubtitle formats city and distance', () {
      final b = _branch(1, 'a', lat: '-6.9932', lon: '110.4203');
      expect(branchSubtitle(b, null), 'Semarang');
      expect(branchSubtitle(b, _pos(-6.9932, 110.4303)), 'Semarang · 1.1 km');
      expect(formatDistanceKm(150.4), '150 km');
    });
  });

  group('BranchCubit', () {
    test('picks the nearest branch when nothing is selected', () {
      final cubit = BranchCubit();
      addTearDown(cubit.close);
      cubit.emit(BranchState(position: _pos(-6.9932, 110.4203)));

      cubit.ensureSelection([
        _branch(1, 'Far', lat: '-7.80', lon: '110.36'),
        _branch(2, 'Near', lat: '-6.99', lon: '110.42'),
      ]);

      expect(cubit.state.selected?.name, 'Near');
    });

    test('falls back to the first branch without position', () {
      final cubit = BranchCubit();
      addTearDown(cubit.close);

      cubit.ensureSelection([_branch(1, 'First'), _branch(2, 'Second')]);

      expect(cubit.state.selected?.name, 'First');
    });

    test('keeps selection but refreshes its data', () {
      final cubit = BranchCubit();
      addTearDown(cubit.close);
      cubit.select(_branch(2, 'Second', status: 'closed'));

      cubit.ensureSelection([
        _branch(1, 'First'),
        _branch(2, 'Second', status: 'open'),
      ]);

      expect(cubit.state.selected?.id, 2);
      expect(cubit.state.selected?.isOpen, isTrue);
    });

    test('survives JSON round trip', () {
      final cubit = BranchCubit();
      addTearDown(cubit.close);
      final state = BranchState(selected: _branch(3, 'Third', status: 'open'));

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
                data: _branch(1, 'Oraimo Semarang', status: 'open'),
                selected: true,
              ),
              BranchCard(
                data: _branch(2, 'Oraimo Magelang', status: 'closed'),
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
