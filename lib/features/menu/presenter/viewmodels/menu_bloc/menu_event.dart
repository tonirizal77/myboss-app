/// !for file: menu_event.dart file
part of 'menu_bloc.dart';

@freezed
abstract class MenuEvent with _$MenuEvent {
  const factory MenuEvent.initial() = _Initial;
  factory MenuEvent.menuYogurt({@Default({}) DataMap param}) =
      _EventListMenuYogurt;
  const factory MenuEvent.menuToping({@Default({}) DataMap param}) =
      _EventListMenuToping;
}
