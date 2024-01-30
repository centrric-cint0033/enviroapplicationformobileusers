import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/auth/loginreqmodel.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/loginpage/service/i_authservice.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'login_page_viewmodel.g.dart';

final vmLogin = getIt<LoginViewModel>();

@injectable
@lazySingleton
class LoginViewModel extends LoginViewModelBase with _$LoginViewModel {
  LoginViewModel(super.loginService);
}

abstract class LoginViewModelBase with Store {
  final IAuthService loginService;

  LoginViewModelBase(this.loginService);

  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @observable
  ApiResponse loginResponse = ApiResponse<String>();

  @action
  Future<int?> login(
      {required String username, required String password}) async {
    loginResponse = loginResponse.copyWith(error: null, loading: true);

    final res = await loginService.login(
      data: LoginReqModel(username: username, password: password),
    );
    return res.fold(
      (l) {
        loginResponse = loginResponse.copyWith(
          error: l,
          loading: false,
        );
        return null;
      },
      (r) {
        loginResponse = loginResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        return 200;
      },
    );
  }
}
