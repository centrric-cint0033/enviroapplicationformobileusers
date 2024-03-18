import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/model/auth/loginreqmodel.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';

import 'package:enviro_mobile_application/view/service/auth/i_authservice.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAuthService)
class AuthRepository implements IAuthService {
  @override
  Future<Either<MainFailure, String>> login(
      {required LoginReqModel data}) async {
    var response = await getIt<HttpService>().request(
      authenticated: false,
      method: HttpMethod.post,
      apiUrl: ApiEndPoints.endPointLogin,
      data: jsonEncode(data.toJson()),
    );
    return response.fold(
      (l) {
        // Show Error
        (l.values.first);
        return Left(l.keys.first);
      },
      (res) async {
        var data = jsonDecode(res.body);
        await getIt<SecureStorage>()
            .writeData(key: 'token', value: data["access"]);

        return const Right("Success");
      },
    );
  }
}
