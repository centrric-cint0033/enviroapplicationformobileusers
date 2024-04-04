import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/06_profile/profile_model/profile_res_model.dart';
import 'package:enviro_mobile_application/service/06_profile/profile_service.dart';
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

  @action
  Future<void> profileviewmodelfunction() async {
    print('aaaaa$profilepageResponse');
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
  ApiResponse<String> renameResponse = ApiResponse<String>();

  @action
  Future<void> profileeditviewmodelfunction(
      String Username, String Password) async {
    renameResponse = renameResponse.copyWith(error: null, loading: true);

    print(Password);
    print(
      Username,
    );
    final result = await profileService.profileeditfunction(Username, Password);
    return result.fold(
      (l) {
        print('Error occurred during folder rename: $l');
        renameResponse = renameResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        print('Folder rename successful!');
        renameResponse = renameResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        // vmOhs.ohsnewsfolderviewmodelfunction(1);
      },
    );
  }
}
