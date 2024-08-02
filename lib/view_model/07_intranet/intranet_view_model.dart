import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/service/05_intranet/intranet_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';
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
  String? searchType;

  @observable
  List<String> folderNames = [];

  @observable
  int? parentFolderId;

  @observable
  String? selectedFileName;

  @observable
  String? selectedFilePath;

  @observable
  int? loadinIndexFile;

  @observable
  int? loadinIndexFolder;

  @observable
  DateTime? selectedExpiryDate;

  @observable
  ApiResponse<FolderListModel> intranetpageResponse =
      ApiResponse<FolderListModel>();
  TextEditingController fileFolderSearchCntrlr = TextEditingController();
  TextEditingController folderSearchCntrlr = TextEditingController();
  // @action
  // Future<void> intranetviewmodelfunction(int id) async {
  //   intranetpageResponse =
  //       intranetpageResponse.copyWith(errors: null, loading: true);

  //   final result = await intranetService.intranetFolderServiceApi(id);
  //   return result.fold(
  //     (l) {
  //       intranetpageResponse =
  //           intranetpageResponse.copyWith(errors: l, loading: false);
  //     },
  //     (r) {
  //       intranetpageResponse = intranetpageResponse.copyWith(
  //           data: r, errors: null, loading: false);
  //     },
  //   );
  // }

  // @observable
  // ApiResponse<FolderListModel> intranetfolderinsideResponse =
  //     ApiResponse<FolderListModel>();
  // @action
  // Future<void> intranetfolderinsidefunction(int id) async {
  //   intranetfolderinsideResponse =
  //       intranetfolderinsideResponse.copyWith(errors: null, loading: true);

  //   final result = await intranetService.intranetFolderServiceApi(id);
  //   return result.fold(
  //     (l) {
  //       intranetfolderinsideResponse =
  //           intranetfolderinsideResponse.copyWith(errors: l, loading: false);
  //     },
  //     (r) {
  //       intranetfolderinsideResponse = intranetfolderinsideResponse.copyWith(
  //           data: r, errors: null, loading: false);
  //     },
  //   );
  // }

  @observable
  ApiResponse<FolderListModel> intranetFoldersResponse =
      ApiResponse<FolderListModel>();
  @observable
  ApiResponse<FolderListModel> intranetFoldersResponse2 =
      ApiResponse<FolderListModel>();
  @action
  Future<void> getIntranetFoldersApi({required num parentFolderId}) async {
    if (parentFolderId == 1) {
      intranetFoldersResponse =
          intranetFoldersResponse.copyWith(error: null, loading: true);

      final result = await intranetService.getIntranetFolders(
        parentFolderId: parentFolderId,
      );
      return result.fold(
        (l) {
          intranetFoldersResponse = intranetFoldersResponse.copyWith(
            errors: l,
            loading: false,
          );
        },
        (r) {
          intranetFoldersResponse = intranetFoldersResponse.copyWith(
            data: r,
            error: null,
            loading: false,
          );
          searchType = intranetFoldersResponse.data?.folders?[0].type;
        },
      );
    } else {
      intranetFoldersResponse2 = intranetFoldersResponse2.copyWith(
          error: null,
          // loading: fromTeamProfileScreen == true
          //     ? true
          //     : teamFoldersResponse2.data == null,
          loading: true);
      final result = await intranetService.getIntranetFolders(
        parentFolderId: parentFolderId,
      );
      return result.fold(
        (l) {
          intranetFoldersResponse2 = intranetFoldersResponse2.copyWith(
            errors: l,
            loading: false,
          );
        },
        (r) {
          intranetFoldersResponse2 = intranetFoldersResponse2.copyWith(
            data: r,
            error: null,
            loading: false,
          );
        },
      );
    }
  }

  @observable
  ApiResponse<String> addFolderResponse = ApiResponse<String>();
  @action
  Future<void> addIntranetFolder({
    required BuildContext context,
    required String name,
    required num parentfolder,
  }) async {
    addFolderResponse = addFolderResponse.copyWith(error: null, loading: true);

    final result = await intranetService.addIntranetFolders(data: {
      "name": name,
      "parent_folder": parentfolder.toString(),
    });

    return result.fold(
      (l) {
        addFolderResponse =
            addFolderResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getIntranetFoldersApi(parentFolderId: parentfolder);
        addFolderResponse =
            addFolderResponse.copyWith(error: null, loading: false);
        // vmTeam.textFolderAddController.clear();
      },
    );
  }

  @observable
  ApiResponse<String> editIntranetFolderResponse = ApiResponse<String>();
  @action
  Future<void> editIntranetFolderApi({
    required BuildContext context,
    required int folderId,
    required int parentFolderId,
    required String name,
  }) async {
    editIntranetFolderResponse =
        editIntranetFolderResponse.copyWith(error: null, loading: true);

    final result = await intranetService
        .editIntranetFolders(data: {"name": name}, folderId: folderId);
    return result.fold(
      (l) {
        editIntranetFolderResponse = editIntranetFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getIntranetFoldersApi(parentFolderId: parentFolderId);
        editIntranetFolderResponse = editIntranetFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<String> addIntranetFileResponse = ApiResponse<String>();
  @action
  Future<void> addIntranetFileApi({
    required BuildContext context,
    required num parentfolder,
    String? files,
  }) async {
    addIntranetFileResponse =
        addIntranetFileResponse.copyWith(error: null, loading: true);

    final result = await intranetService.addIntranetFiles(
        data: {"folder": parentfolder.toString(), "file": files ?? ""});
    return result.fold(
      (l) {
        addIntranetFileResponse =
            addIntranetFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getIntranetFoldersApi(parentFolderId: parentfolder);
        addIntranetFileResponse = addIntranetFileResponse.copyWith(
            data: r, error: null, loading: false);
        // vmTeam.textFolderAddController.clear();
        // context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> editIntranetFileResponse = ApiResponse<String>();
  @action
  Future<void> editIntranetFilesApi({
    required BuildContext context,
    required int filesId,
    required int parentFolderId,
    required String name,
  }) async {
    editIntranetFileResponse =
        editIntranetFileResponse.copyWith(error: null, loading: true);

    final result = await intranetService
        .editIntranetFiles(data: {"name": name}, fileId: filesId);
    return result.fold(
      (l) {
        editIntranetFileResponse = editIntranetFileResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getIntranetFoldersApi(parentFolderId: parentFolderId);
        editIntranetFileResponse = editIntranetFileResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> deleteIntranetFilesApi(
      {required BuildContext context,
      required int fileId,
      required num parentFolderId}) async {
    addIntranetFileResponse =
        addIntranetFileResponse.copyWith(error: null, loading: true);

    final result = await intranetService.deleteIntranetFiles(
        fileId: fileId, folderId: parentFolderId);
    return result.fold(
      (l) {
        addIntranetFileResponse = addIntranetFileResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) async {
        await getIntranetFoldersApi(parentFolderId: parentFolderId);
        addIntranetFileResponse = addIntranetFileResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @observable
  ApiResponse<FolderListModel> expiryFileResponse =
      ApiResponse<FolderListModel>();
  @action
  Future<void> exipryDateFileApi(
      {required BuildContext context,
      required int fileId,
      required String expiry,
      required num parentFolderId}) async {
    expiryFileResponse = expiryFileResponse.copyWith(
        error: null, loading: expiryFileResponse.data == null);
    final result =
        await intranetService.expiryDateFiles(fileId: fileId, expiry: expiry);

    return result.fold(
      (l) {
        expiryFileResponse =
            expiryFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getIntranetFoldersApi(parentFolderId: parentFolderId);
        expiryFileResponse =
            expiryFileResponse.copyWith(error: null, loading: false);
      },
    );
  }

  @action
  Future<void> deleteIntranetFolderApi(
      {required BuildContext context,
      required int folderId,
      required num parentFolderId}) async {
    addFolderResponse = addFolderResponse.copyWith(error: null, loading: true);

    final result =
        await intranetService.deleteIntranetFolders(folderId: folderId);
    return result.fold(
      (l) {
        addFolderResponse = addFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getIntranetFoldersApi(parentFolderId: parentFolderId);
        addFolderResponse = addFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> folderSearchIntranetApi(
      String searchData, int folderId, String searchType) async {
    intranetFoldersResponse =
        intranetFoldersResponse.copyWith(errors: null, loading: true);

    final result = await intranetService.folderSearchIntranet(data: {
      "key": searchData,
      "folder_id": "$folderId",
      "search_type": searchType,
    });
    return result.fold(
      (l) {
        intranetFoldersResponse =
            intranetFoldersResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        intranetFoldersResponse = intranetFoldersResponse.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @action
  Future<void> fileFolderSearchApi(
      String searchData, int folderId, String searchType) async {
    intranetFoldersResponse2 =
        intranetFoldersResponse2.copyWith(errors: null, loading: true);

    final result = await intranetService.fileFolderSearchIntranet(data: {
      "key": searchData,
      "folder_id": "$folderId",
      "search_type": searchType,
    });
    return result.fold(
      (l) {
        intranetFoldersResponse2 =
            intranetFoldersResponse2.copyWith(errors: l, loading: false);
      },
      (r) {
        intranetFoldersResponse2 = intranetFoldersResponse2.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @action
  expiryDatePickerFn(
      BuildContext context, date, int fileId, num parentFolderId) {
    selectedExpiryDate = date;
    String dateString = DateFormat('yyyy-MM-dd').format(selectedExpiryDate!);
    exipryDateFileApi(
        fileId: fileId,
        expiry: dateString,
        context: context,
        parentFolderId: parentFolderId);
  }
}
