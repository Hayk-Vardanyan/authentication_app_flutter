import 'package:auto_route/auto_route.dart';

import 'router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class Router extends $Router {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(
      page: SplashScreenRoute.page,
      initial: true,
    ),
    AdaptiveRoute(page: AuthenticationRoute.page),
    AdaptiveRoute(page: HomeRoute.page),
  ];
}
