import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/06_profile/profile_model/profile_res_model.dart';
import 'package:enviro_mobile_application/model/persmission_status_res_model/persmission_status_res_model.dart';
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'profile_view_model.g.dart';

final vmProfile = getIt<ProfileViewModel>();

@injectable
@lazySingleton
class ProfileViewModel extends ProfileViewModelBase with _$ProfileViewModel {
  ProfileViewModel(super.profileService);
}

abstract class ProfileViewModelBase with Store {
  final IprofileService profileService;

  ProfileViewModelBase(this.profileService);

  @observable
  ApiResponse<ProfileRespModel> profilepageResponse =
      ApiResponse<ProfileRespModel>();

  @observable
  bool passObscure = false;

  @action
  Future<void> profileviewmodelfunction() async {
    profilepageResponse =
        profilepageResponse.copyWith(error: null, loading: true);

    final result = await profileService.profileservicefunction();
    return result.fold(
      (l) {
        profilepageResponse = profilepageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        profilepageResponse = profilepageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<ProfileRespModel> profileeditResponse =
      ApiResponse<ProfileRespModel>();

  @action
  Future<void> profileeditviewmodel(String username, String password) async {
    try {
      profileeditResponse =
          profileeditResponse.copyWith(errors: null, loading: true);

      final result = await profileService
          .profileEditApi(data: {"username": username, "password": password});
      return result.fold(
        (l) {
          profileeditResponse =
              profileeditResponse.copyWith(errors: l, loading: false);
        },
        (r) {
          profileeditResponse = profileeditResponse.copyWith(
              data: r, errors: null, loading: false);
        },
      );
    } catch (e) {
      customPrint(content: e, name: 'Error salesJobListSearchApi');
    } finally {
      profileeditResponse = profileeditResponse.copyWith(loading: false);
    }
  }

  @observable
  ApiResponse<PersmissionStatusResModel> permissionStatusResponse =
      ApiResponse<PersmissionStatusResModel>();

  @action
  Future<void> getPermissionStatus() async {
    permissionStatusResponse =
        permissionStatusResponse.copyWith(error: null, loading: true);

    final result = await profileService.getPermissionStatus();
    return result.fold(
      (l) {
        permissionStatusResponse = permissionStatusResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        permissionStatusResponse = permissionStatusResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
