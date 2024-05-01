import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_site/utils/site_utils.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/site_tile_widget.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PermanentSitesTab extends StatelessWidget {
  const PermanentSitesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        List<SiteResModel> sites =
            vmSite.permanentSiteResponse.data?.toList() ?? [];
        return WWResponseHandler(
            data: vmSite.permanentSiteResponse,
            onRefresh: () async => vmSite.getPermanentSites(),
            isEmpty: vmSite.permanentSiteResponse.data?.isEmpty ?? true,
            onTap: () => vmSite.searchCtr.text.isNotEmpty
                ? onChanged(vmSite.searchCtr.text)
                : vmSite.getPermanentSites(),
            child: PermanentSitesLIstWidget(sites: sites));
      },
    );
  }
}

class PermanentSitesLIstWidget extends StatelessWidget {
  const PermanentSitesLIstWidget({
    super.key,
    required this.sites,
  });

  final List<SiteResModel> sites;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: sites.length + 1,
      controller: vmSite.permanentSitesController,
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (context, index) => sized0hx05,
      padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
      itemBuilder: (context, index) {
        return index == sites.length
            ? vmSite.permanentSiteResponse.paginationLoading
                ? const CupertinoActivityIndicator()
                : const SizedBox.shrink()
            : SiteTileWidget(
                onTap: () {
                  navigateToSiteDetailScreen(
                    index: index,
                    context: context,
                    siteId: sites[index].id,
                    siteType: SiteType.permananet,
                  );
                },
                name: sites[index].clientName ?? "",
                address: sites[index].siteAddress ?? "",
              );
      },
    );
  }
}
