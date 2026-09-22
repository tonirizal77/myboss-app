import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottom_nav_state.dart';

/// Cubit to manage the state of the bottom navigation bar.
class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(const BottomNavState());

  /// Updates the active tab index.
  void changeTab(int index) {
    emit(state.copyWith(currentIndex: index));
  }
}
