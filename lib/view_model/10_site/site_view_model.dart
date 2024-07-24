import 'dart:async';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/widgets/ww_popup_error.dart';
import 'package:intl/intl.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import '../../utilis/injection.dart';
import '../../api_response/api_response.dart';
import '../../service/10_site/i_site_service.dart';
import '../../model/10_site/site_res_model/site_res_model.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import '../../model/02_sales/waste_type_model/waste_type_model.dart';

part 'site_view_model.g.dart';

final vmSite = getIt<SiteViewModel>();

enum SiteType { permananet, temporary, deleted }

@injectable
class SiteViewModel extends SiteViewModelBase with _$SiteViewModel {
  SiteViewModel(super.siteService);
}

abstract class SiteViewModelBase with Store {
  final ISiteService siteService;
  SiteViewModelBase(this.siteService);

  @observable
  ApiResponse<List<SiteResModel>> permanentSiteResponse =
      ApiResponse<List<SiteResModel>>();

  @observable
  ApiResponse<List<SiteResModel>> tempSiteResponse =
      ApiResponse<List<SiteResModel>>();

  @observable
  ApiResponse<List<SiteResModel>> delSiteResponse =
      ApiResponse<List<SiteResModel>>();

  @observable
  ApiResponse<List<WasteTypeModel>> wasteTypesInSite =
      ApiResponse<List<WasteTypeModel>>();

  @observable
  ApiResponse<FolderListModel> siteFoldersResponse =
      ApiResponse<FolderListModel>();

  @observable
  ApiResponse<FolderListModel> siteFoldersResponse2 =
      ApiResponse<FolderListModel>();

  @observable
  ApiResponse addSiteFolderResponse = ApiResponse();

  @observable
  ApiResponse<String> editSiteFolderResponse = ApiResponse<String>();

  @observable
  ApiResponse<String> deleteSiteFolderResponse = ApiResponse<String>();

  @observable
  ApiResponse addSiteFileResponse = ApiResponse();

  @observable
  ApiResponse<String> editSiteFileResponse = ApiResponse<String>();

  @observable
  ApiResponse<FolderListModel> expiryFileResponse =
      ApiResponse<FolderListModel>();

  Timer? debouce;

  void onTextChanged(Function() function) {
    if (debouce?.isActive ?? false) debouce?.cancel();
    debouce = Timer(const Duration(milliseconds: 500), () => function());
  }

  int selectedTab = 0;

  @observable
  bool detailLoading = false;

  @observable
  WasteTypeModel? selectedWasteTypeModel;

  @observable
  String? searchType;

  ScrollController delSitesController = ScrollController();
  ScrollController tempSitesController = ScrollController();
  ScrollController permanentSitesController = ScrollController();

  TextEditingController siteFolderCtr = TextEditingController();
  TextEditingController searchCtr = TextEditingController();
  TextEditingController textFolderAddController = TextEditingController();
  TextEditingController textFolderEditController = TextEditingController();
  TextEditingController fileFolderSearchCntrlr = TextEditingController();

  @observable
  List<String> folderNames = [];

  @observable
  String? selectedFileName;

  @observable
  String? selectedFilePath;

  @observable
  int? loadinIndexFolder;

  @observable
  int? loadinIndexFile;

  @observable
  int? parentFolderId;

  @observable
  DateTime? selectedExpiryDate;

  @action
  Future<void> getPermanentSites({int? page}) async {
    permanentSiteResponse = permanentSiteResponse.copyWith(
      error: null,
      paginationLoading: page != null,
      loading: permanentSiteResponse.data == null,
    );

    final response = await siteService.getPermanantSites(page: page);

    response.fold(
      (l) {
        permanentSiteResponse = permanentSiteResponse.copyWith(
            errors: l, loading: false, paginationLoading: false);
      },
      (res) {
        List<SiteResModel> sites = permanentSiteResponse.data?.toList() ?? [];
        if (page == null) {
          sites = res;
        } else {
          sites.addAll(res);
        }

        permanentSiteResponse = permanentSiteResponse.copyWith(
          data: sites,
          error: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: res.length == 10,
        );
      },
    );
  }

  @action
  Future<void> getTemporarySites({int? page}) async {
    tempSiteResponse = tempSiteResponse.copyWith(
      error: null,
      paginationLoading: page != null,
      loading: tempSiteResponse.data == null,
    );

    final response = await siteService.getTemporarySites(page: page);

    response.fold(
      (l) {
        tempSiteResponse = tempSiteResponse.copyWith(
            errors: l, loading: false, paginationLoading: false);
      },
      (res) {
        List<SiteResModel> sites = tempSiteResponse.data?.toList() ?? [];
        if (page == null) {
          sites = res;
        } else {
          sites.addAll(res);
        }

        tempSiteResponse = tempSiteResponse.copyWith(
          data: sites,
          error: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: res.length == 10,
        );
      },
    );
  }

  @action
  Future<void> getDeletedSites({int? page}) async {
    delSiteResponse = delSiteResponse.copyWith(
      error: null,
      paginationLoading: page != null,
      loading: delSiteResponse.data == null,
    );

    final response = await siteService.getDeletedSites(page: page);

    response.fold(
      (l) {
        delSiteResponse = delSiteResponse.copyWith(
            errors: l, loading: false, paginationLoading: false);
      },
      (res) {
        List<SiteResModel> sites = delSiteResponse.data?.toList() ?? [];
        if (page == null) {
          sites = res;
        } else {
          sites.addAll(res);
        }

        delSiteResponse = delSiteResponse.copyWith(
          data: sites,
          error: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
          pagination: res.length == 10,
        );
      },
    );
  }

  /// Permanent sites pagination
  void permanentSitesPagination() {
    permanentSitesController.addListener(() {
      if (permanentSitesController.position.pixels ==
              permanentSitesController.position.maxScrollExtent &&
          !permanentSitesController.position.outOfRange &&
          permanentSiteResponse.pagination &&
          !permanentSiteResponse.paginationLoading) {
        int pageNo = permanentSiteResponse.pageNo + 1;
        getPermanentSites(page: pageNo);
      }
    });
  }

  /// Temporary sites pagination
  void tempSitesPagination() {
    tempSitesController.addListener(() {
      if (tempSitesController.position.pixels ==
              tempSitesController.position.maxScrollExtent &&
          !tempSitesController.position.outOfRange &&
          tempSiteResponse.pagination &&
          !tempSiteResponse.paginationLoading) {
        int pageNo = tempSiteResponse.pageNo + 1;
        getTemporarySites(page: pageNo);
      }
    });
  }

  /// Deleted sites pagination
  void delSitesPagination() {
    delSitesController.addListener(() {
      if (delSitesController.position.pixels ==
              delSitesController.position.maxScrollExtent &&
          !delSitesController.position.outOfRange &&
          delSiteResponse.pagination &&
          !delSiteResponse.paginationLoading) {
        int pageNo = delSiteResponse.pageNo + 1;
        getDeletedSites(page: pageNo);
      }
    });
  }

  @action
  Future<void> getDetails({
    required int id,
    required BuildContext context,
    SiteType type = SiteType.permananet,
  }) async {
    detailLoading = true;
    final response = await siteService.getSiteDetails(id: id);

    response.fold(
      (l) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Color(0XFF061933),
            content: Text(
              'Something went wrong',
            ),
            duration: Duration(seconds: 3),
          ),
        );
      },
      (res) {
        int index;
        switch (type) {
          case SiteType.permananet:
            List<SiteResModel> pSites =
                permanentSiteResponse.data?.toList() ?? [];
            index = pSites.indexWhere(
              (element) => element.id == id,
            );
            if (index != -1) {
              pSites[index] = res;
              permanentSiteResponse =
                  permanentSiteResponse.copyWith(data: pSites);
            }
            break;

          case SiteType.temporary:
            List<SiteResModel> tSites = tempSiteResponse.data?.toList() ?? [];
            index = tSites.indexWhere(
              (element) => element.id == id,
            );
            if (index != -1) {
              tSites[index] = res;
              tempSiteResponse = tempSiteResponse.copyWith(data: tSites);
            }
            break;

          case SiteType.deleted:
            List<SiteResModel> dSites = delSiteResponse.data?.toList() ?? [];
            index = dSites.indexWhere(
              (element) => element.id == id,
            );
            if (index != -1) {
              dSites[index] = res;
              delSiteResponse = delSiteResponse.copyWith(data: dSites);
            }
            break;

          default:
            break;
        }
      },
    );
    detailLoading = false;
  }

  @action
  Future<void> searchSites({
    required String key,
    SiteType type = SiteType.permananet,
  }) async {
    customPrint(content: key);
    customPrint(content: type);
    final response = await siteService.searchSitesServiceApi(key: key);
    response.fold(
      (l) {},
      (res) {
        switch (type) {
          case SiteType.permananet:
            permanentSiteResponse = permanentSiteResponse.copyWith(data: res);
            break;

          case SiteType.temporary:
            tempSiteResponse = tempSiteResponse.copyWith(data: res);
            break;

          case SiteType.deleted:
            delSiteResponse = delSiteResponse.copyWith(data: res);
            break;

          default:
            break;
        }
      },
    );
  }

  @action
  Future<void> getWasteTypesInSite({required int id}) async {
    wasteTypesInSite = wasteTypesInSite.copyWith(
      error: null,
      loading: true,
    );
    final response = await siteService.getWasteTypeInSites(id: id);
    response.fold(
      (l) {
        wasteTypesInSite = wasteTypesInSite.copyWith(errors: l, loading: false);
      },
      (res) {
        wasteTypesInSite = wasteTypesInSite.copyWith(
          data: res,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> getSiteFolderss(
      {required num id, required num parentFolderId}) async {
    if (parentFolderId == 1) {
      siteFoldersResponse =
          siteFoldersResponse.copyWith(error: null, loading: true);

      final result = await siteService.getSiteFolderss(
          id: id, parentFolderId: parentFolderId);
      return result.fold(
        (l) {
          siteFoldersResponse = siteFoldersResponse.copyWith(
            errors: l,
            loading: false,
          );
        },
        (r) {
          siteFoldersResponse = siteFoldersResponse.copyWith(
            data: r,
            error: null,
            loading: false,
          );
          searchType = siteFoldersResponse.data?.folders?[0].type;
        },
      );
    } else {
      siteFoldersResponse2 = siteFoldersResponse2.copyWith(
          error: null,
          // loading: fromTeamProfileScreen == true
          //     ? true
          //     : teamFoldersResponse2.data == null,
          loading: true);

      final result = await siteService.getSiteFolderss(
          id: id, parentFolderId: parentFolderId);
      return result.fold(
        (l) {
          siteFoldersResponse2 = siteFoldersResponse2.copyWith(
            errors: l,
            loading: false,
          );
        },
        (r) {
          siteFoldersResponse2 = siteFoldersResponse2.copyWith(
            data: r,
            error: null,
            loading: false,
          );
        },
      );
    }
  }

  @action
  Future<void> addSiteFolderApi(
      {required String name,
      required int siteId,
      required int parentfolder,
      required BuildContext context}) async {
    addSiteFolderResponse =
        addSiteFolderResponse.copyWith(error: null, loading: true);

    final result = await siteService.addSiteFolders(data: {
      "name": name,
      "site": siteId.toString(),
      "parent_folder": parentfolder.toString(),
    });

    return result.fold(
      (l) {
        addSiteFolderResponse =
            addSiteFolderResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getSiteFolderss(id: siteId, parentFolderId: parentfolder);
        addSiteFolderResponse =
            addSiteFolderResponse.copyWith(error: null, loading: false);
        textFolderAddController.clear();
      },
    );
  }

  @action
  Future<void> editSiteFolderApi({
    required int folderId,
    required int parentFolderId,
    required String name,
    required BuildContext context,
    required int siteId,
  }) async {
    editSiteFolderResponse =
        editSiteFolderResponse.copyWith(error: null, loading: true);

    final result = await siteService
        .editSiteFolders(data: {"name": name}, folderId: folderId);
    return result.fold(
      (l) {
        editSiteFolderResponse = editSiteFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getSiteFolderss(id: siteId, parentFolderId: parentFolderId);
        editSiteFolderResponse = editSiteFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> deleteSiteFolderApi(
      {required int folderId,
      required BuildContext context,
      required int siteId,
      required int parentFolderId}) async {
    addSiteFolderResponse =
        addSiteFolderResponse.copyWith(error: null, loading: true);

    final result = await siteService.deleteSiteFolders(folderId: folderId);
    return result.fold(
      (l) {
        addSiteFolderResponse = addSiteFolderResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getSiteFolderss(id: siteId, parentFolderId: parentFolderId);
        addSiteFolderResponse = addSiteFolderResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> siteFolderSearchApi(
      String searchData, int folderId, String searchType, int siteId) async {
    siteFoldersResponse =
        siteFoldersResponse.copyWith(errors: null, loading: true);

    final result = await siteService.siteFolderSearchApi(data: {
      "key": searchData,
      "folder_id": "$folderId",
      "search_type": searchType,
      "site": "$siteId"
    });
    return result.fold(
      (l) {
        siteFoldersResponse =
            siteFoldersResponse.copyWith(errors: l, loading: false);
      },
      (r) {
        siteFoldersResponse =
            siteFoldersResponse.copyWith(data: r, errors: null, loading: false);
      },
    );
  }

  @action
  Future<void> addSiteFileApi({
    required BuildContext context,
    required int siteId,
    required int parentfolder,
    String? files,
  }) async {
    addSiteFileResponse =
        addSiteFileResponse.copyWith(error: null, loading: true);

    final result = await siteService.addSiteFiles(data: {
      "site": siteId.toString(),
      "folder": parentfolder.toString(),
      "file": files ?? ""
    });
    return result.fold(
      (l) {
        addSiteFileResponse =
            addSiteFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getSiteFolderss(id: siteId, parentFolderId: parentfolder);
        addSiteFileResponse =
            addSiteFileResponse.copyWith(data: r, error: null, loading: false);
        // context.router.pop();
      },
    );
  }

  @action
  Future<void> editSiteFilesApi({
    required BuildContext context,
    required int filesId,
    required int parentFolderId,
    required String name,
    required int siteId,
  }) async {
    editSiteFileResponse =
        editSiteFileResponse.copyWith(error: null, loading: true);

    final result =
        await siteService.editSiteFiles(data: {"name": name}, fileId: filesId);
    return result.fold(
      (l) {
        editSiteFileResponse = editSiteFileResponse.copyWith(
          errors: l,
          loading: false,
        );
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getSiteFolderss(id: siteId, parentFolderId: parentFolderId);
        editSiteFileResponse = editSiteFileResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> deleteSiteFilesApi(
      {required BuildContext context,
      required int fileId,
      required int siteId,
      required int parentFolderId}) async {
    addSiteFileResponse =
        addSiteFileResponse.copyWith(error: null, loading: true);

    final result = await siteService.deleteSiteFiles(
        fileId: fileId, folderId: parentFolderId);
    return result.fold(
      (l) {
        addSiteFileResponse = addSiteFileResponse.copyWith(
          errors: l,
          loading: false,
        );
      },
      (r) async {
        await getSiteFolderss(id: siteId, parentFolderId: parentFolderId);
        addSiteFileResponse = addSiteFileResponse.copyWith(
          data: r,
          error: null,
          loading: false,
        );
      },
    );
  }

  @action
  Future<void> exipryDateFileApi(
      {required int fileId,
      required String expiry,
      required BuildContext context,
      required int siteId,
      required int parentFolderId}) async {
    expiryFileResponse = expiryFileResponse.copyWith(
        error: null, loading: expiryFileResponse.data == null);
    final result =
        await siteService.expiryDateFiles(fileId: fileId, expiry: expiry);

    return result.fold(
      (l) {
        expiryFileResponse =
            expiryFileResponse.copyWith(errors: l, loading: false);
        popupErrorData(context, mainFailure: l);
      },
      (r) async {
        await getSiteFolderss(id: siteId, parentFolderId: parentFolderId);
        expiryFileResponse =
            expiryFileResponse.copyWith(error: null, loading: false);
      },
    );
  }

  @action
  Future<void> fileFolderSearchApi(
      String searchData, num folderId, String searchType, int siteId) async {
    siteFoldersResponse2 =
        siteFoldersResponse2.copyWith(errors: null, loading: true);

    final result = await siteService.fileFolderSearchApi(data: {
      "key": searchData,
      "folder_id": "$folderId",
      "search_type": searchType,
      "site": "$siteId"
    });
    return result.fold(
      (l) {
        siteFoldersResponse2 =
            siteFoldersResponse2.copyWith(errors: l, loading: false);
      },
      (r) {
        siteFoldersResponse2 = siteFoldersResponse2.copyWith(
            data: r, errors: null, loading: false);
      },
    );
  }

  @action
  expiryDatePickerFn(
      BuildContext context, date, int fileId, num parentFolderId, int siteId) {
    selectedExpiryDate = date;
    String dateString = DateFormat('yyyy-MM-dd').format(selectedExpiryDate!);
    exipryDateFileApi(
        fileId: fileId,
        siteId: siteId,
        expiry: dateString,
        context: context,
        parentFolderId: int.parse("$parentFolderId"));
  }
}
