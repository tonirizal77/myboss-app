/// !for file: menu_state.dart file
part of 'menu_bloc.dart';

@freezed
abstract class MenuState with _$MenuState {
  const factory MenuState({
    Type? event,
    @Default(Respons.initial) Respons respon,
    @Default('') String errorMessage,

    /// Data Models
    @Default(MenuYogurtModel()) MenuYogurtModel menuYogurt,
    @Default(MenuTopingModel()) MenuTopingModel menuToping,
  }) = _MenuState;
}
