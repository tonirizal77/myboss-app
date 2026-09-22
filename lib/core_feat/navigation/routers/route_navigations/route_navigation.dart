import 'package:go_router/go_router.dart';
import 'package:myboss_app/core_feat/core_feat.dart';

import 'package:myboss_app/features/features.dart';

part 'route_global.dart';
part 'route_account.dart';

abstract class ListRouteNavigation {
  static List<RouteBase> get listRoutes => [
    /// Route Global
    ...RouteGlobal.routes,

    ...RouteAccount.routes,
  ];
}
