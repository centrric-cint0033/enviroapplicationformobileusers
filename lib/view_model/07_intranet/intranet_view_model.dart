import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'intranet_view_model.g.dart';

final vmIntranet = getIt<IntranetViewModel>();

@injectable
@lazySingleton
class IntranetViewModel extends IntranetViewModelBase with _$IntranetViewModel {
  IntranetViewModel(super.intranetService);
}

abstract class IntranetViewModelBase with Store {
  final IintranetService intranetService;

  IntranetViewModelBase(this.intranetService);

  @observable
  ApiResponse<FolderListModel> intranetpageResponse =
      ApiResponse<FolderListModel>();

  @action
  Future<void> intranetviewmodelfunction(int id) async {
    intranetpageResponse =
        intranetpageResponse.copyWith(errors: null, loading: true);

    final result = await intranetService.intranetFolderServiceApi(id);
    return result.fold(
      (l) {
        intranetpageResponse =
            intranetpageResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        intranetpageResponse = intranetpageResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @observable
  ApiResponse<FolderListModel> intranetfolderinsideResponse =
      ApiResponse<FolderListModel>();
  @action
  Future<void> intranetfolderinsidefunction(int id) async {
    intranetfolderinsideResponse =
        intranetfolderinsideResponse.copyWith(errors: null, loading: true);

    final result = await intranetService.intranetFolderServiceApi(id);
    return result.fold(
      (l) {
        intranetfolderinsideResponse =
            intranetfolderinsideResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        intranetfolderinsideResponse = intranetfolderinsideResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }
}
