import 'package:dartz/dartz.dart';

import '../../../utilis/main_failure.dart';

abstract class IHomeService {
  Future<Either<MainFailure, String>> permissions({required data});
}
