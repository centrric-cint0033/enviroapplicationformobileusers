import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:injectable/injectable.dart';

import '../../utilis/injection.dart';
import '../../api_response/api_response.dart';
import '../../service/10_site/i_site_service.dart';
import '../../model/10_site/site_res_model/site_res_model.dart';

part 'site_view_model.g.dart';

final vmSite = getIt<SiteViewModel>();

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

  ScrollController delSitesController = ScrollController();
  ScrollController tempSitesController = ScrollController();
  ScrollController permanentSitesController = ScrollController();

  @action
  Future<void> getPermanentSites({int? page}) async {
    customPrint(content: page, name: "Page is ::");
    permanentSiteResponse = permanentSiteResponse.copyWith(
      error: null,
      paginationLoading: page != null,
      loading: permanentSiteResponse.data == null,
    );

    final response = await siteService.getPermanantSites(page: page);

    response.fold(
      (l) {
        permanentSiteResponse = permanentSiteResponse.copyWith(
          error: l,
          loading: false,
          paginationLoading: false,
        );
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

    final response = await siteService.getPermanantSites(page: page);

    response.fold(
      (l) {
        tempSiteResponse = tempSiteResponse.copyWith(
          error: l,
          loading: false,
          paginationLoading: false,
        );
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
          error: l,
          loading: false,
          paginationLoading: false,
        );
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
          permanentSiteResponse.pagination) {
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
          tempSiteResponse.pagination) {
        int pageNo = tempSiteResponse.pageNo + 1;
        customPrint(content: pageNo, name: "pageNo");
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
          delSiteResponse.pagination) {
        int pageNo = delSiteResponse.pageNo + 1;
        getDeletedSites(page: pageNo);
      }
    });
  }
}
