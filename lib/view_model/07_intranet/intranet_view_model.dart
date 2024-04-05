import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/model/05_intranet/intranet_res_model.dart';
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
  ApiResponse<intranetfldrRespModel> intranetpageResponse =
      ApiResponse<intranetfldrRespModel>();

  @action
  Future<void> intranetviewmodelfunction(int id) async {
    print('aaaaa$intranetpageResponse');
    intranetpageResponse =
        intranetpageResponse.copyWith(error: null, loading: true);

    final result = await intranetService.intranetfolderservicefunction(id);
    return result.fold(
      (l) {
        intranetpageResponse = intranetpageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        intranetpageResponse = intranetpageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<intranetfldrRespModel> intranetfolderinsideResponse =
      ApiResponse<intranetfldrRespModel>();
  @action
  Future<void> intranetfolderinsidefunction(
    int id,
  ) async {
    intranetfolderinsideResponse =
        intranetfolderinsideResponse.copyWith(error: null, loading: true);

    final result = await intranetService.intranetfolderservicefunction(
      id,
    );
    return result.fold(
      (l) {
        intranetfolderinsideResponse = intranetfolderinsideResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        intranetfolderinsideResponse = intranetfolderinsideResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
