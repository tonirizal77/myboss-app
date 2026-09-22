part of 'flows.dart';

class MenuFlows {
  MenuFlows._();

  static MenuYogurtModel get menuYogurt => getIt<MenuBloc>().state.menuYogurt;
  static MenuTopingModel get menuToping => getIt<MenuBloc>().state.menuToping;

  /// 1. Get List Menu Yogurt
  static FutureOr<void> getListYogurt(
    BuildContext context, {
    DataMap? param,
  }) async {
    DataMap _yogurt = {};

    _yogurt['search'] = [
      {
        'search_column': 'product_group',
        'search_condition': 'like',
        'search_text': 'YOGHURT',
      },
    ];

    context.read<MenuBloc>().add(MenuEvent.menuYogurt(param: _yogurt));
  }

  /// 2. Get List Menu Toping
  static FutureOr<void> getListToping(
    BuildContext context, {
    DataMap? param,
  }) async {
    context.read<MenuBloc>().add(MenuEvent.menuToping(param: param ?? {}));
  }
}
