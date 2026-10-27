part of 'store_branch_cubit.dart';

class StoreBranchState extends Equatable {
  const StoreBranchState({this.selected, this.position});

  final StoreBranch? selected;

  /// Not persisted - re-read on every app start.
  final Position? position;

  StoreBranchState copyWith({StoreBranch? selected, Position? position}) =>
      StoreBranchState(
        selected: selected ?? this.selected,
        position: position ?? this.position,
      );

  @override
  List<Object?> get props => [selected, position];
}
