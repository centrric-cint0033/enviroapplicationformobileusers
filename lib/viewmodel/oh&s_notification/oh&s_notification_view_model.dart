import 'package:enviro_mobile_application/model/oh&s/resp/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view/service/notification_page_service/i_all_notfcn_page_service.dart';

import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

import '../../api_response/api_response.dart';

part 'oh&s_notification_view_model.g.dart';

final vmohsnotification = getIt<OhsNotificationViewModel>();

@injectable
class OhsNotificationViewModel extends OhsNotificationViewModelBase
    with _$OhsNotificationViewModel {
  OhsNotificationViewModel(IAllNotificationService notificationService)
      : super(notificationService);
}

abstract class OhsNotificationViewModelBase with Store {
  final IAllNotificationService notificationService;

  OhsNotificationViewModelBase(this.notificationService);

  @observable
  ApiResponse<List<OhsRespModel>> notificationpageResponse =
      ApiResponse<List<OhsRespModel>>();

  @action
  Future<void> ohsnotificationviewmodelfunction() async {
    print('aaaaa$notificationpageResponse');
    notificationpageResponse =
        notificationpageResponse.copyWith(error: null, loading: true);

    final result = await notificationService.ohsnotificationfunction();
    return result.fold(
      (l) {
        notificationpageResponse = notificationpageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        notificationpageResponse = notificationpageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
