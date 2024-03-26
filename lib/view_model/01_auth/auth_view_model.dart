import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/auth/loginreqmodel.dart';
import 'package:enviro_mobile_application/service/01_auth/i_authservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
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
