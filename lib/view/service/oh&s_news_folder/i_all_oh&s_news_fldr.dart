import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/oh&snews_folder/oh&snews_fldr_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllOhsNewsFolderService {
  Future<Either<MainFailure, List<OhsNewsfldrRespModel>>>
      ohsnewsfolderservicefunction();
}
