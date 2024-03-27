import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/securestorage.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    String? token = await SecureStorage().readData(key: "token");
    final isAuthenticated = token != null;
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      resolver.redirect(const HomeRoute());
    }
  }
}
