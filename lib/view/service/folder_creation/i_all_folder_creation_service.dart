import 'package:dartz/dartz.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllFolderCreationService {
  Future<Either<MainFailure, String>> ohsnewsfoldercreationfunction(
      folderName, id);
}
