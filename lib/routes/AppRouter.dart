import 'package:auto_route/auto_route.dart';
import 'package:flutter_demo/screen/main/MainScreen.dart';

import 'AppRouter.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {


  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page,initial: true),

    AutoRoute(
      page: MainRoute.page,
      children: [
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: SearchRoute.page),
        AutoRoute(page: NotificationRoute.page),

      ],
    ),
    AutoRoute(page: NewsListRoute.page),
    AutoRoute(page: ProductListRoute.page),
    AutoRoute(page: ProductDetailsRoute.page),

  ];
}
