import 'package:dartz/dartz.dart';

import '../../../utilis/main_failure.dart';

abstract class ICalenderService {
  Future<Either<MainFailure, String>> shedule();
}
