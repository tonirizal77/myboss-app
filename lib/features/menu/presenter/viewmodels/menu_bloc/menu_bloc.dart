import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

import 'package:myboss_app/core_feat/core_feat.dart';
import 'package:myboss_app/features/features.dart';

part 'menu_event.dart';
part 'menu_state.dart';
part 'menu_bloc.freezed.dart';

/// Handlers Event
part 'events/event_list_menu_yogurt.dart';
part 'events/event_list_menu_toping.dart';

class MenuBloc extends Bloc<MenuEvent, MenuState> {
  MenuBloc() : super(const MenuState()) {
    on<_EventListMenuYogurt>(_onEventListMenuYogurt);
    on<_EventListMenuToping>(_onEventListMenuToping);
  }

  // @override
  // MenuState? fromJson(Map<String, dynamic> json) {
  //   return state.copyWith(
  //     menuYogurt: MenuYogurtModel.fromJson(json['menu_yogurt']),
  //     menuToping: MenuTopingModel.fromJson(json['menu_toping']),
  //   );
  // }

  // @override
  // Map<String, dynamic>? toJson(MenuState state) {
  //   return {
  //     'menu_yogurt': state.menuYogurt.toJson(),
  //     'menu_toping': state.menuToping.toJson(),
  //   };
  // }
}
