import 'package:equatable/equatable.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:myboss_app/features/stores/domain/domains.dart';

part 'store_branch_state.dart';

/// Currently selected branch (persisted) and the device position used to show
/// the distance to each branch.
class StoreBranchCubit extends HydratedCubit<StoreBranchState> {
  StoreBranchCubit() : super(const StoreBranchState());

  /// Select [branch] as the active branch.
  void select(StoreBranch branch) => emit(state.copyWith(selected: branch));

  /// Keep the selection in sync with [branches] (fresh open/closed status).
  /// With no selection yet, pick the nearest branch, else the first one.
  void ensureSelection(List<StoreBranch> branches) {
    if (branches.isEmpty) return;

    final current = state.selected;
    if (current != null) {
      final fresh = branches.where((b) => b.id == current.id).firstOrNull;
      if (fresh != null && fresh != current) select(fresh);
      if (fresh != null) return;
    }

    // Nearest branch; ties (and unknown distances) keep the original order.
    var best = branches.first;
    var bestDistance = best.distanceKm(state.position) ?? double.infinity;
    for (final branch in branches.skip(1)) {
      final distance = branch.distanceKm(state.position) ?? double.infinity;
      if (distance < bestDistance) {
        best = branch;
        bestDistance = distance;
      }
    }

    select(best);
  }

  /// Read the device position for distance labels.
  ///
  /// Never throws: without permission / service the distance is just hidden.
  Future<void> loadPosition() async {
    try {
      if (!await Geolocator.isLocationServiceEnabled()) return;

      var permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
      }
      if (permission == LocationPermission.denied ||
          permission == LocationPermission.deniedForever) {
        return;
      }

      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.low,
          timeLimit: Duration(seconds: 10),
        ),
      );
      emit(state.copyWith(position: position));
    } catch (_) {
      // Location is optional - ignore.
    }
  }

  @override
  StoreBranchState? fromJson(Map<String, dynamic> json) {
    final raw = json['selected'];
    if (raw is! Map) return const StoreBranchState();

    return StoreBranchState(
      selected: StoreBranch.fromJson(Map<String, Object?>.from(raw)),
    );
  }

  @override
  Map<String, dynamic>? toJson(StoreBranchState state) => {
    'selected': state.selected?.toJson(),
  };
}
