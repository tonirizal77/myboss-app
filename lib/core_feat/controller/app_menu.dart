part of 'controllers.dart';

abstract class AppMenu {
  /// for [USER]
  static final List<ItemNavBar> menuApp = [
    /// Home
    ItemNavBar(
      item: Tuple4(
        LocaleKeys.bottom_nav_nav1,
        Icons.house_outlined,
        Icons.home_filled,
        const HomePage(),
      ),
    ),

    /// Order
    ItemNavBar(
      item: Tuple4(
        LocaleKeys.bottom_nav_nav2,
        Icons.assignment_outlined,
        Icons.assignment,
        const MenuPage(),
      ),
    ),

    /// Outlet
    ItemNavBar(
      item: Tuple4(
        LocaleKeys.bottom_nav_nav3,
        Icons.storefront,
        Icons.storefront_rounded,
        const StoresPage(),
      ),
    ),

    /// Account
    ItemNavBar(
      item: Tuple4(
        LocaleKeys.bottom_nav_nav4,
        ImageAssets(height: 24, width: 24, image: Assets.icMaskot1),
        ImageAssets(height: 24, width: 24, image: Assets.icMaskot1),
        const AccountPage(),
      ),
    ),
  ];

  /// For Menu Drawer before Login
  static final List<DataMap> menuDrawerLogin = [
    {'icon': Assets.svgHome, 'label': LocaleKeys.bottom_nav_nav1},
    {'icon': Assets.svgMenu, 'label': LocaleKeys.bottom_nav_nav2},
    {'icon': Assets.svgStores, 'label': LocaleKeys.bottom_nav_nav3},
    {'icon': Assets.icMaskot1, 'label': LocaleKeys.bottom_nav_nav4},
  ];

  static final List<DataMap> menuDrawerNotLogin = [
    {'icon': Assets.svgHome, 'label': "Masuk"},
    {'icon': Assets.svgMenu, 'label': "Daftar"},
  ];

  /// For Menu Drawer after Login
}
