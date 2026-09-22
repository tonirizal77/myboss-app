/// Hayo-specific core - everything tied to this app's own business domain
/// (API endpoints, concrete routes, brand assets, app-menu/settings
/// controllers, the desktop/tablet page shell). Re-exports mobile_app_core so a
/// single import gives access to both, matching how the old lib/core
/// barrel worked.
export 'package:mobile_app_core/mobile_app_core.dart';

export 'network/configs.dart';
export 'translations/translations.dart';
export 'navigation/navigations.dart';
export 'controller/controllers.dart';
export 'shared/app_shareds.dart';
export 'support/supports.dart';
export 'template/responsive_widget/responsive_widget_feat.dart';
export 'template/responsive_style/responsive_style_feat.dart';
