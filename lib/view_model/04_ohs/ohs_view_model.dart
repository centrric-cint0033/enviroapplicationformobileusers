import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&snews_fldr_model.dart';
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'ohs_view_model.g.dart';

final vmOhs = getIt<OHSViewModel>();

@injectable
@lazySingleton
class OHSViewModel extends OHSViewModelBase with _$OHSViewModel {
  OHSViewModel(super.ohsService);
}

abstract class OHSViewModelBase with Store {
  final IohsService ohsService;

  OHSViewModelBase(this.ohsService);

  @observable
  ApiResponse<List<OhsRespModel>> newspageResponse =
      ApiResponse<List<OhsRespModel>>();

  @action
  Future<void> ohsnewsviewmodelfunction() async {
    print('aaaaa$newspageResponse');
    newspageResponse = newspageResponse.copyWith(error: null, loading: true);

    final result = await ohsService.ohsnewsfunction();
    return result.fold(
      (l) {
        newspageResponse = newspageResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        newspageResponse = newspageResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<String> FoldercreationResponse = ApiResponse<String>();

  @action
  Future<void> ohsfoldercreationviewmodelfunction(
      String folderName, int id) async {
    print('aaaaa$FoldercreationResponse');
    FoldercreationResponse =
        FoldercreationResponse.copyWith(error: null, loading: true);

    final result =
        await ohsService.ohsnewsfoldercreationfunction(folderName, id);
    return result.fold(
      (l) {
        FoldercreationResponse = FoldercreationResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        FoldercreationResponse = FoldercreationResponse.copyWith(
          error: null,
          loading: false,
        );
        // ohsService.ohsnewsfolderservicefunction(id);
        vmOhs.ohsnewsfolderviewmodelfunction(1);
      },
    );
  }

  @observable
  ApiResponse<OhsNewsfldrRespModel> newspagefolderinsideResponse =
      ApiResponse<OhsNewsfldrRespModel>();

  @action
  Future<void> newspagefolderinsidefunction(int id) async {
    newspagefolderinsideResponse =
        newspagefolderinsideResponse.copyWith(error: null, loading: true);

    final result = await ohsService.ohsnewsfolderservicefunction(id);
    return result.fold(
      (l) {
        newspagefolderinsideResponse = newspagefolderinsideResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        newspagefolderinsideResponse = newspagefolderinsideResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<OhsNewsfldrRespModel> newspagefolderResponse =
      ApiResponse<OhsNewsfldrRespModel>();

  @action
  Future<void> ohsnewsfolderviewmodelfunction(int id) async {
    newspagefolderResponse =
        newspagefolderResponse.copyWith(error: null, loading: true);

    final result = await ohsService.ohsnewsfolderservicefunction(id);
    return result.fold(
      (l) {
        newspagefolderResponse = newspagefolderResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        newspagefolderResponse = newspagefolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<List<OhsRespModel>> notificationpageResponse =
      ApiResponse<List<OhsRespModel>>();

  @action
  Future<void> ohsnotificationviewmodelfunction() async {
    print('aaaaa$notificationpageResponse');
    notificationpageResponse =
        notificationpageResponse.copyWith(error: null, loading: true);

    final result = await ohsService.ohsnotificationfunction();
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

  @observable
  ApiResponse<String> renameResponse = ApiResponse<String>();

  @action
  Future<void> folderrenameviewmodelfunction(String folderName, int id) async {
    renameResponse = renameResponse.copyWith(error: null, loading: true);

    print(id);
    print(
      folderName,
    );
    final result =
        await ohsService.ohsnewsfldrenameservicefunction(folderName, id);
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
        vmOhs.ohsnewsfolderviewmodelfunction(1);
      },
    );
  }

  @observable
  ApiResponse<String> deleteResponse = ApiResponse<String>();

  @action
  Future<void> folderdeleteviewmodelfunction(String folders, int id) async {
    deleteResponse = deleteResponse.copyWith(error: null, loading: true);

    print(id);

    final result = await ohsService.ohsnewsfolderdeletefunction(folders, id);
    return result.fold(
      (l) {
        deleteResponse = deleteResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        print('Folder rename successful!');
        deleteResponse = deleteResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
        vmOhs.ohsnewsfolderviewmodelfunction(1);
      },
    );
  }

  @observable
  ApiResponse<String> deleteinsideResponse = ApiResponse<String>();

  @action
  Future<void> folderinsidedltefunction(String folders, int id) async {
    deleteinsideResponse =
        deleteinsideResponse.copyWith(error: null, loading: true);

    print(id);

    final result = await ohsService.ohsnewsfolderdeletefunction(folders, id);
    return result.fold(
      (l) {
        print('Error occurred during folder rename: $l');
        deleteinsideResponse = deleteinsideResponse.copyWith(
          error: l,
          loading: false,
        );
      },
      (r) {
        print('Folder rename successful!');
        deleteinsideResponse = deleteinsideResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }
}
