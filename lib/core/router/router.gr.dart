// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:innovatrix_assesment/features/counter/view/counter_page.dart'
    deferred as _i1;
import 'package:innovatrix_assesment/features/homepage/view/home_page.dart'
    as _i2;
import 'package:innovatrix_assesment/features/login/view/login_base_page.dart'
    deferred as _i3;
import 'package:innovatrix_assesment/features/login/view/login_page.dart'
    deferred as _i4;
import 'package:innovatrix_assesment/features/signup/view/signup_page.dart'
    as _i5;

abstract class $AppRouter extends _i6.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    CounterRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i1.loadLibrary,
          () => _i1.CounterPage(),
        ),
      );
    },
    HomeRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePage(),
      );
    },
    LoginBaseRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i3.loadLibrary,
          () => _i3.LoginBasePage(),
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.DeferredWidget(
          _i4.loadLibrary,
          () => _i4.LoginPage(),
        ),
      );
    },
    SignupRoute.name: (routeData) {
      return _i6.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.SignupPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.CounterPage]
class CounterRoute extends _i6.PageRouteInfo<void> {
  const CounterRoute({List<_i6.PageRouteInfo>? children})
      : super(
          CounterRoute.name,
          initialChildren: children,
        );

  static const String name = 'CounterRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginBasePage]
class LoginBaseRoute extends _i6.PageRouteInfo<void> {
  const LoginBaseRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginBaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginBaseRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LoginPage]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute({List<_i6.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}

/// generated route for
/// [_i5.SignupPage]
class SignupRoute extends _i6.PageRouteInfo<void> {
  const SignupRoute({List<_i6.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i6.PageInfo<void> page = _i6.PageInfo<void>(name);
}
