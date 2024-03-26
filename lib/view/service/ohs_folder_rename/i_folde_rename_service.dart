import 'package:dartz/dartz.dart';

import '../../../utilis/main_failure.dart';

abstract class Ifolderrename {
  Future<Either<MainFailure, String>> ohsnewsfolderrenamefunction(
      folderName, id);
}
