import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/site_tile_widget.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/view_model/11_previous_sale/previous_sale_view_model.dart';
import 'package:enviro_mobile_application/widgets/empty_data_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
        return RefreshIndicator(
          onRefresh: () async {
            return vmSite.getPermanentSites();
          },
          child: vmSite.permanentSiteResponse.loading
              ? const Center(child: CupertinoActivityIndicator())
              : sites.isEmpty
                  ? const EmptyDataWidget()
                  : PermanentSitesLIstWidget(sites: sites),
        );
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

void navigateToSiteDetailScreen({
  int? siteId,
  required int index,
  SiteType? siteType,
  required BuildContext context,
}) {
  if (siteId != null) {
    vmSite
      ..getDetails(
        id: siteId,
        context: context,
        type: SiteType.permananet,
      )
      ..selectedWasteTypeModel = null
      ..getWasteTypesInSite(id: siteId)
      ..getSiteFolders(id: siteId);
    vmPreviousSale.getPreviousSales(
      siteId: siteId,
    );
    context.router.push(
      SiteDetailRoute(
        index: index,
        type: siteType ?? SiteType.permananet,
      ),
    );
  }
}
