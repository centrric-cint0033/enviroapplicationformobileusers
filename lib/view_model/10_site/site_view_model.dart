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
          data: res,
          error: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
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
          data: res,
          error: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
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
          data: res,
          error: null,
          loading: false,
          pageNo: page ?? 1,
          paginationLoading: false,
        );
      },
    );
  }
}
