import 'package:dartz/dartz.dart';

import 'package:enviro_mobile_application/model/auth/loginreqmodel.dart';

import '../../../utilis/main_failure.dart';

abstract class IAuthService {
  Future<Either<MainFailure, String>> login({required LoginReqModel data});
}
