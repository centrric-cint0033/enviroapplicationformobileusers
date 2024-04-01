import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/model/auth/loginreqmodel.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/utilis/httpservice.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/utilis/main_failure.dart';
import 'package:http/http.dart';

import 'package:injectable/injectable.dart';

abstract class IAuthService {
  Future<Either<Map<MainFailure, dynamic>, String>> login(
      {required LoginReqModel data});
}

@LazySingleton(as: IAuthService)
class AuthRepository implements IAuthService {
  @override
  Future<Either<Map<MainFailure, dynamic>, String>> login(
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
        return Left(l);
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
