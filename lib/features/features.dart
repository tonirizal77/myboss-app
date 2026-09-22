import 'auth/auth_ft.dart';
import 'global/global_ft.dart';
import 'home/home_ft.dart';
import 'stores/stores_ft.dart';
import 'menu/menu_ft.dart';
import 'account/account_ft.dart';
import 'verifications/verifications_ft.dart';

/// For Out or External Others
export 'auth/auth_ft.dart';
export 'global/global_ft.dart';
export 'home/home_ft.dart';
export 'menu/menu_ft.dart';
export 'stores/stores_ft.dart';
export 'account/account_ft.dart';
export 'verifications/verifications_ft.dart';

/// Setup Injection For all Features
/// --------------------------------
abstract class InjectionFeatures {
  static Future<void> setupAll() async {
    /// 0. global
    await GlobalFt.injectors();

    /// 1. Authenticate
    await AuthFt.injectors();

    /// 2. Home
    await HomeFt.injectors();

    /// 3. Stores
    await StoresFt.injectors();

    /// 4. Menu
    await MenuFt.injectors();

    /// 5. Account
    await AccountFt.injectors();

    /// 6. Verify
    await VerificationsFt.injectors();
  }
}
