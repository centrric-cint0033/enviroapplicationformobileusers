import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/06_profile/profile_model/profile_res_model.dart';
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart';
import 'package:enviro_mobile_application/service/07_job_card/job_card_service.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'job_card_viewmodel.g.dart';

final vmJobcard = getIt< JobCardViewModel>();

@injectable
@lazySingleton
class JobCardViewModel extends JobCardViewModelBase with _$JobCardViewModel {
   JobCardViewModel(super.jobcardService);
}

abstract class  JobCardViewModelBase with Store {
  final IJobCardService  jobcardService;

  JobCardViewModel(this.jobcardService);

  @observable
  ApiResponse<ProfileRespModel>   jobcardResponse=
      ApiResponse<ProfileRespModel>();

  @action
  Future<void> jobcardviewmodelfunction() async {
    print('aaaaa$jobcardResponse');
    print('aaaaa$jobcardResponse');

  jobcardResponse =
      jobcardResponse.copyWith(error: null, loading: true);

    final result = await jobcardService.jobcarservicefunction();
    return result.fold(
      (l) {
       jobcardResponse =   jobcardResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
         jobcardResponse =   jobcardResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}