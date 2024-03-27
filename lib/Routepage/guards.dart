import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/Routepage/token_expire.dart';
import 'package:jwt_decode/jwt_decode.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    String? token = await SecureStorage().readData(key: "token");

    final isAuthenticated = (token != null && token.isNotEmpty)
        ? jwtTokenChecker(Jwt.parseJwt(token))
        : false;
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      resolver.redirect(LoginRoute());
    }
  }
}
