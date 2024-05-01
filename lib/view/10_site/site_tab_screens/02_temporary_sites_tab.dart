import 'package:enviro_mobile_application/view/10_site/site_tab_screens/01_pemanent_sites_tab.dart';
import 'package:enviro_mobile_application/view/10_site/utils/site_utils.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/site_tile_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_response_handler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../utilis/constant.dart';
import '../../../view_model/10_site/site_view_model.dart';
import '../../../model/10_site/site_res_model/site_res_model.dart';

class TemporarySitesTab extends StatelessWidget {
  const TemporarySitesTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        List<SiteResModel> sites = vmSite.tempSiteResponse.data?.toList() ?? [];
        return WWResponseHandler(
            data: vmSite.tempSiteResponse,
            onRefresh: () async => vmSite.getTemporarySites(),
            isEmpty: vmSite.tempSiteResponse.data?.isEmpty ?? true,
            onTap: () => vmSite.searchCtr.text.isNotEmpty
                ? onChanged(vmSite.searchCtr.text)
                : vmSite.getTemporarySites(),
            child: PermanentSitesLIstWidget(sites: sites));
      },
    );
  }
}

class TemporarySitesList extends StatelessWidget {
  const TemporarySitesList({
    super.key,
    required this.sites,
  });

  final List<SiteResModel> sites;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: sites.length + 1,
      controller: vmSite.tempSitesController,
      physics: const AlwaysScrollableScrollPhysics(),
      separatorBuilder: (context, index) => sized0hx05,
      padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
      itemBuilder: (context, index) {
        return index == sites.length
            ? vmSite.tempSiteResponse.paginationLoading
                ? const CupertinoActivityIndicator()
                : const SizedBox.shrink()
            : SiteTileWidget(
                onTap: () {
                  navigateToSiteDetailScreen(
                    index: index,
                    context: context,
                    siteId: sites[index].id,
                    siteType: SiteType.temporary,
                  );
                },
                name: sites[index].clientName ?? "",
                address: sites[index].siteAddress ?? "",
              );
      },
    );
  }
}
