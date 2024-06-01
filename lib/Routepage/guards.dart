import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';

import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/Routepage/token_expire.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/view_model/home_page/home_page_viewmodel.dart';
import 'package:jwt_decode/jwt_decode.dart';

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    String? token = await SecureStorage().readData(key: "refresh");
    String? accessToken = await SecureStorage().readData(key: "token");
    // for checking access token expire time only
    if (accessToken != null) {
      customPrint(content: 'Access Token');
      jwtTokenChecker(Jwt.parseJwt(accessToken));
    }

    customPrint(content: 'Refresh Token');
    final isAuthenticated = (token != null && token.isNotEmpty)
        ? jwtTokenChecker(Jwt.parseJwt(token))
        : false;
    if (isAuthenticated) {
      vmselection.permissionsApi();
      vmProfile.profileviewmodelfunction();
      resolver.next(true);
    } else {
      resolver.redirect(LoginRoute());
    }
  }
}
