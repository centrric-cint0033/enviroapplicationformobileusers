import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
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

//      _      ____    ___      ____      _      _       _       ____
//     / \    |  _ \  |_ _|    / ___|    / \    | |     | |     / ___|
//    / _ \   | |_) |  | |    | |       / _ \   | |     | |     \___ \
//   / ___ \  |  __/   | |    | |___   / ___ \  | |___  | |___   ___) |
//  /_/   \_\ |_|     |___|    \____| /_/   \_\ |_____| |_____| |____/

  @observable
  ApiResponse<List<OhsRespModel>> newspageResponse =
      ApiResponse<List<OhsRespModel>>();
  @observable
  ApiResponse<OhsRespModel> addNotificationResponse =
      ApiResponse<OhsRespModel>();
  @observable
  String? selectedFileNameNotification;
  @action
  Future<void> ohsNewsApi() async {
    newspageResponse = newspageResponse.copyWith(errors: null, loading: true);

    final result = await ohsService.ohsNewsServiceApi();
    return result.fold(
      (l) {
        newspageResponse = newspageResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        newspageResponse =
            newspageResponse.copyWith(data: r, errors: null, loading: false);
      },
    );
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  ApiResponse<String> FoldercreationResponse = ApiResponse<String>();

  @action
  Future<void> ohsfoldercreationviewmodelfunction(
      String folderName, int id) async {
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
  ApiResponse<FolderListModel> newspagefolderinsideResponse =
      ApiResponse<FolderListModel>();

  @action
  Future<void> newspagefolderinsidefunction(
    int id,
  ) async {
    newspagefolderinsideResponse =
        newspagefolderinsideResponse.copyWith(error: null, loading: true);

    final result = await ohsService.ohsnewsfolderservicefunction(
      id,
    );
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
  ApiResponse<FolderListModel> newspagefolderResponse =
      ApiResponse<FolderListModel>();

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
  Future<void> ohsNotificationApi() async {
    notificationpageResponse =
        notificationpageResponse.copyWith(errors: null, loading: true);
    final result = await ohsService.ohsNotificationServiceApi();
    return result.fold(
      (l) {
        notificationpageResponse =
            notificationpageResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        notificationpageResponse = notificationpageResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @observable
  ApiResponse<String> renameResponse = ApiResponse<String>();

  @action
  Future<void> ohsFolerRenameApi(
      BuildContext context, String folderName, int id) async {
    renameResponse = renameResponse.copyWith(errors: null, loading: true);

    print(id);
    print(
      folderName,
    );
    final result = await ohsService.ohsFolderRenameServiceApi(folderName, id);
    return result.fold(
      (l) {
        popupErrorData(context, mainFailure: l);
        renameResponse = renameResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        renameResponse =
            renameResponse.copyWith(data: r, errors: null, loading: false);
        vmOhs.ohsnewsfolderviewmodelfunction(1);
      },
    );
  }

  @observable
  ApiResponse<String> deleteResponse = ApiResponse<String>();

  @action
  Future<void> folderdeleteviewmodelfunction(
      String folders, int id, int parentId) async {
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
        deleteResponse = deleteResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );

        if (parentId == 1) {
          ohsnewsfolderviewmodelfunction(parentId);
        } else {
          newspagefolderinsidefunction(parentId);
        }
      },
    );
  }

  @action
  Future<void> ohsAddNotificationApi(
      {required BuildContext context, required OhsRespModel data}) async {
    addNotificationResponse =
        addNotificationResponse.copyWith(errors: null, loading: true);

    final result = await ohsService.ohsAddNotificationServiceApi(data: data);
    return result.fold(
      (l) {
        addNotificationResponse =
            addNotificationResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        ohsNotificationApi();
        addNotificationResponse = addNotificationResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }
}
