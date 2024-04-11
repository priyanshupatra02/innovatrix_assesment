import 'package:auto_route/auto_route.dart';
import 'package:innovatrix_assesment/core/router/router.gr.dart';
import 'package:innovatrix_assesment/data/entities/local_user_entity/local_user.dart';
import 'package:isar/isar.dart';

class SplashGuard extends AutoRouteGuard {
  final Isar isar;

  SplashGuard({required this.isar});

  @override

  /// A class that provides database services for token management.
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final id = isar.localUsers.where().findFirstSync()?.id;
    final isLoggedIn = isar.localUsers.where().findFirstSync()?.isLoggedIn;

    if (id != null && isLoggedIn == true) {
      router.replaceAll([const HomeRoute()]);
      resolver.next(false);
    } else {
      resolver.next(true);
    }
  }
}
