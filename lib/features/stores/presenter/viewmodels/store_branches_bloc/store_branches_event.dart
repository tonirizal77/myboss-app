part of 'store_branches_bloc.dart';

@freezed
abstract class StoreBranchesEvent with _$StoreBranchesEvent {
  /// [location]: `{'lat': .., 'lon': ..}` or empty when the position is unknown.
  const factory StoreBranchesEvent.fetchBranches(DataMap location) =
      _FetchBranches;
}
