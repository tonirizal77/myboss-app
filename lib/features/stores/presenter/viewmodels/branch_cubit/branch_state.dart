part of 'branch_cubit.dart';

class BranchState extends Equatable {
  const BranchState({this.selected, this.position});

  final StoreList? selected;

  /// Not persisted - re-read on every app start.
  final Position? position;

  BranchState copyWith({StoreList? selected, Position? position}) =>
      BranchState(
        selected: selected ?? this.selected,
        position: position ?? this.position,
      );

  @override
  List<Object?> get props => [selected, position];
}
