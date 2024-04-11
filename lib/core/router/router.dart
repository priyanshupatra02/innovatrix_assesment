import 'package:auto_route/auto_route.dart';
import 'package:innovatrix_assesment/core/router/router.gr.dart';

/// This class used for defined routes and paths na dother properties
@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  late final List<AutoRoute> routes = [
    AdaptiveRoute(
      page: LoginBaseRoute.page,
      initial: true,
      path: '/',
      guards: const [
        // SplashGuard(loginDbService: loginDbService),
      ],
      children: [
        RedirectRoute(
          path: '',
          redirectTo: 'login',
        ),
        AdaptiveRoute(
          page: LoginRoute.page,
          path: 'login',
        ),
        AdaptiveRoute(
          page: SignupRoute.page,
          path: 'signup',
        ),
      ],
    ),
    AdaptiveRoute(
      page: HomeRoute.page,
      path: '/home-route',
    ),
  ];
}
