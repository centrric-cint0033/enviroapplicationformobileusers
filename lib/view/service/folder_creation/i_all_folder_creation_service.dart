import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/model/oh&snews_folder/oh&snews_fldr_model.dart';
import 'package:enviro_mobile_application/model/truck_page/res_model/truckpage_model.dart';

import '../../../utilis/main_failure.dart';

abstract class IAllFolderCreationService {
  Future<Either<MainFailure, String>> ohsnewsfoldercreationfunction(
      String folderName, int id);
}
