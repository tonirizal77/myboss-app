part of 'bottom_nav_cubit.dart';

/// States for the [BottomNavCubit].
class BottomNavState extends Equatable {
  /// The currently active tab index.
  final int currentIndex;

  const BottomNavState({this.currentIndex = 0});

  @override
  List<Object?> get props => [currentIndex];

  /// Copies the state with new values.
  BottomNavState copyWith({int? currentIndex}) {
    return BottomNavState(currentIndex: currentIndex ?? this.currentIndex);
  }
}
