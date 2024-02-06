import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/home/res_model/homerespmodel.dart';

import '../../../utilis/main_failure.dart';

abstract class IHomeService {
  Future<Either<MainFailure, HomeRespModel>> permissions();
}
