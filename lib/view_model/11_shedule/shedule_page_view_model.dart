import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/model/12_shedulecard/shedule_card_resp_model.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'shedule_page_view_model.g.dart';

final vmJobcard = getIt<JobCardViewModel>();

@injectable
@lazySingleton
class JobCardViewModel extends JobCardViewModelBase with _$JobCardViewModel {
  JobCardViewModel(super.jobcardService);
}

abstract class JobCardViewModelBase with Store {
  final IJobCardService jobcardService;

  JobCardViewModelBase(this.jobcardService);

  @observable
  ApiResponse<JobCardRespModel> jobcardResponse =
      ApiResponse<JobCardRespModel>();

  @action
  Future<void> jobcardviewmodelfunction() async {
    print('aaaaa$jobcardResponse');
    print('aaaaa$jobcardResponse');

    jobcardResponse = jobcardResponse.copyWith(error: null, loading: true);

    final result = await jobcardService.jobcardservicefunction();
    return result.fold(
      (l) {
        jobcardResponse = jobcardResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        jobcardResponse = jobcardResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<SheduleCardRespModel>> shedulecardResponse =
      ApiResponse<List<SheduleCardRespModel>>();

  @action
  Future<void> shedulecardviewmodelfunction() async {
    print('aaaaa$jobcardResponse');
    print('aaaaa$jobcardResponse');

    shedulecardResponse =
        shedulecardResponse.copyWith(error: null, loading: true);

    final result = await jobcardService.shedulecardservicefunction();
    return result.fold(
      (l) {
        shedulecardResponse = shedulecardResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        shedulecardResponse = shedulecardResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<SheduleCardRespModel>> sheduleweekResponse =
      ApiResponse<List<SheduleCardRespModel>>();

  @action
  Future<void> shedulecardviewmodelweekfunction() async {
    print('aaaaa$jobcardResponse');
    print('aaaaa$jobcardResponse');

    sheduleweekResponse =
        sheduleweekResponse.copyWith(error: null, loading: true);

    final result = await jobcardService.shedulecardserviceweekfunction();
    return result.fold(
      (l) {
        sheduleweekResponse = sheduleweekResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        sheduleweekResponse = sheduleweekResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
