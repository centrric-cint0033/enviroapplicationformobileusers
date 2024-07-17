import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/api_response/api_response.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/service/04_ohs/ohs_service.dart';
import 'package:enviro_mobile_application/utilis/injection.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
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

  @observable
  TextEditingController addCommentController = TextEditingController();

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
  Future<void> ohsNotificationApi({int? page}) async {
    if (page == null) notificationPagination();
    notificationpageResponse = notificationpageResponse.copyWith(
        errors: null, loading: page == null, paginationLoading: page != null);
    final result = await ohsService.ohsNotificationServiceApi(page: page);
    return result.fold(
      (l) {
        notificationpageResponse = notificationpageResponse.copyWith(
            errors: l, loading: false, paginationLoading: false);
      },
      (r) {
        List<OhsRespModel> notification =
            notificationpageResponse.data?.toList() ?? [];
        if (page != null) {
          notification.addAll(r);
        } else {
          notification = r;
        }

        notificationpageResponse = notificationpageResponse.copyWith(
          data: notification,
          errors: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: r.length == 8,
        );
      },
    );
  }

  ScrollController notificationController = ScrollController();

  void notificationPagination() {
    notificationController.addListener(() {
      if (notificationController.position.pixels ==
              notificationController.position.maxScrollExtent &&
          !notificationController.position.outOfRange &&
          notificationpageResponse.pagination &&
          !notificationpageResponse.paginationLoading) {
        int pageNo = notificationpageResponse.pageNo + 1;
        ohsNotificationApi(page: pageNo);
      }
    });
  }

  @observable
  ApiResponse<String> renameResponse = ApiResponse<String>();

  @action
  Future<void> ohsFolerRenameApi(
      BuildContext context, String folderName, int id) async {
    renameResponse = renameResponse.copyWith(errors: null, loading: true);
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

    final result = await ohsService.ohsAddNotificationServiceApi(data: {
      "title": data.title ?? "",
      "description": data.description ?? "",
      "members": "${data.members}",
      "file_attachment": data.file_attachment ?? ""
    });
    return result.fold(
      (l) {
        addNotificationResponse =
            addNotificationResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        addNotificationResponse = addNotificationResponse.copyWith(
            data: r, errors: null, loading: false);
        ohsNotificationApi();
        vmTeam.selectedFilePath = "";
        selectedFileNameNotification = null;
        vmTeam.selectedMember = null;
        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<OhsRespModel> addNewsResponse = ApiResponse<OhsRespModel>();
  @action
  Future<void> ohsAddNewsApi(
      {required BuildContext context, required OhsRespModel data}) async {
    addNewsResponse = addNewsResponse.copyWith(errors: null, loading: true);

    final result = await ohsService.ohsAddNewsServiceApi(data: {
      "title": data.title ?? "",
      "description": data.description ?? "",
      "members": "${data.members}",
      "file_attachment": data.file_attachment ?? ""
    });
    return result.fold(
      (l) {
        addNewsResponse = addNewsResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        addNewsResponse =
            addNewsResponse.copyWith(data: r, errors: null, loading: false);
        ohsNewsApi();
        vmTeam.selectedFilePath = "";
        selectedFileNameNotification = null;
        vmTeam.selectedMember = null;
        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> addCommentNotifyResponse = ApiResponse<String>();
  @action
  Future<void> ohsAddCommentNotificationApi({
    required BuildContext context,
    required int notificationId,
    required String comment,
  }) async {
    addCommentNotifyResponse =
        addCommentNotifyResponse.copyWith(errors: null, loading: true);

    final result = await ohsService.ohsAddCommentNotificationApi(
        notificationId: notificationId, comment: comment);
    return result.fold(
      (l) {
        addCommentNotifyResponse =
            addCommentNotifyResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        addCommentNotifyResponse = addCommentNotifyResponse.copyWith(
            data: r, errors: null, loading: false);
        addCommentController.clear();
        ohsNotificationApi();
      },
    );
  }

  @observable
  ApiResponse<String> deleteNotificationResponse = ApiResponse<String>();
  @action
  Future<void> ohsDeleteNotificationApi({
    required BuildContext context,
    required int notificationId,
  }) async {
    deleteNotificationResponse =
        deleteNotificationResponse.copyWith(errors: null, loading: true);

    final result = await ohsService.ohsDeleteNotificationApi(
        notificationId: notificationId);
    return result.fold(
      (l) {
        deleteNotificationResponse =
            deleteNotificationResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        deleteNotificationResponse = deleteNotificationResponse.copyWith(
            data: r, errors: null, loading: false);
        ohsNotificationApi();
        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> statusNotificationResponse = ApiResponse<String>();
  @action
  Future<void> ohsStatusNotificationApi({
    required BuildContext context,
    required int notificationId,
  }) async {
    statusNotificationResponse =
        statusNotificationResponse.copyWith(errors: null, loading: true);

    final result = await ohsService.ohsStatusNotificationApi(
        notificationId: notificationId);
    return result.fold(
      (l) {
        statusNotificationResponse =
            statusNotificationResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        statusNotificationResponse = statusNotificationResponse.copyWith(
            data: r, errors: null, loading: false);
        ohsNotificationApi();
        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> deleteNewsResponse = ApiResponse<String>();
  @action
  Future<void> ohsDeleteNewsApi({
    required BuildContext context,
    required int newsId,
  }) async {
    deleteNewsResponse =
        deleteNewsResponse.copyWith(errors: null, loading: true);

    final result = await ohsService.ohsDeleteNewsApi(newsId: newsId);
    return result.fold(
      (l) {
        deleteNewsResponse =
            deleteNewsResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        deleteNewsResponse =
            deleteNewsResponse.copyWith(data: r, errors: null, loading: false);
        ohsNewsApi();
        context.router.pop();
      },
    );
  }

  @observable
  ApiResponse<String> statusNewsResponse = ApiResponse<String>();
  @action
  Future<void> ohsStatusNewsApi({
    required BuildContext context,
    required int newsId,
  }) async {
    statusNewsResponse =
        statusNewsResponse.copyWith(errors: null, loading: true);

    final result = await ohsService.ohsStatusNewsApi(newsId: newsId);
    return result.fold(
      (l) {
        statusNewsResponse =
            statusNewsResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) {
        statusNewsResponse =
            statusNewsResponse.copyWith(data: r, errors: null, loading: false);
        ohsNewsApi();
        // context.router.pop();
      },
    );
  }
}
