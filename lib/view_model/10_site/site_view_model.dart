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
  ApiResponse<List<SiteResModel>> siteResponse =
      ApiResponse<List<SiteResModel>>();

  @action
  Future<void> getSite({int? page}) async {
    siteResponse = siteResponse.copyWith(
      error: null,
      paginationLoading: page != null,
      loading: siteResponse.data != null,
    );

    final response = await siteService.getSites(page: page);

    response.fold(
      (l) {
        siteResponse = siteResponse.copyWith(
          error: l,
          loading: false,
          paginationLoading: false,
        );
      },
      (res) {
        List<SiteResModel> sites = siteResponse.data?.toList() ?? [];
        if (page == null) {
          sites = res;
        } else {
          sites.addAll(res);
        }

        siteResponse = siteResponse.copyWith(
          data: res,
          error: null,
          loading: false,
          paginationLoading: false,
        );
      },
    );
  }
}
