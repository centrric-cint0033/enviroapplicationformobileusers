import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/auth/loginreqmodel.dart';
import 'package:enviro_mobile_application/service/auth/authservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'auth_view_model.g.dart';

final vmAuth = getIt<AuthViewModel>();

@injectable
@lazySingleton
class AuthViewModel extends AuthViewModelBase with _$AuthViewModel {
  AuthViewModel(super.loginService);
}

abstract class AuthViewModelBase with Store {
  final IAuthService loginService;

  AuthViewModelBase(this.loginService);

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void clearController() {
    userNameController.clear();
    passwordController.clear();
  }

//      _      ____    ___      ____      _      _       _       ____
//     / \    |  _ \  |_ _|    / ___|    / \    | |     | |     / ___|
//    / _ \   | |_) |  | |    | |       / _ \   | |     | |     \___ \
//   / ___ \  |  __/   | |    | |___   / ___ \  | |___  | |___   ___) |
//  /_/   \_\ |_|     |___|    \____| /_/   \_\ |_____| |_____| |____/

  @observable
  ApiResponse loginResponse = ApiResponse<String>();

  @action
  Future<int?> login(
      {required BuildContext context,
      required String username,
      required String password}) async {
    try {
      loginResponse = loginResponse.copyWith(error: null, loading: true);
      final res = await loginService.login(
        data: LoginReqModel(username: username, password: password),
      );
      return res.fold(
        (l) {
          loginResponse = loginResponse.copyWith(errors: l, loading: false);
          popupErrorData(context, mainFailure: l);
          return null;
        },
        (r) {
          clearController();
          loginResponse =
              loginResponse.copyWith(data: r, error: null, loading: false);
          return 200;
        },
      );
    } catch (e) {
      return null;
    } finally {
      loginResponse = loginResponse.copyWith(loading: false);
    }
  }
}
