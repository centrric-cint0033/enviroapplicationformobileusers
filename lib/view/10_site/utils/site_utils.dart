import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/view_model/10_site/site_view_model.dart';
import 'package:enviro_mobile_application/view_model/11_previous_sale/previous_sale_view_model.dart';
import 'package:flutter/cupertino.dart';

SiteType getSiteType(int tab) {
  customPrint(content: tab);

  switch (tab) {
    case 0:
      return SiteType.permananet;
    case 1:
      return SiteType.temporary;
    case 2:
      return SiteType.deleted;
    default:
      return SiteType.permananet;
  }
}

dynamic onChanged(String v) {
  vmSite.onTextChanged(() => (v.isEmpty)
      ? (vmSite.selectedTab == 0
          ? vmSite.getPermanentSites()
          : vmSite.selectedTab == 1
              ? vmSite.getTemporarySites()
              : vmSite.getDeletedSites())
      : vmSite.searchSites(key: v, type: getSiteType(vmSite.selectedTab)));
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
      ..getSiteFolderss(id: siteId, parentFolderId: 1);
    vmPreviousSale.getPreviousSales(siteId: siteId);
    context.router.push(
      SiteDetailRoute(index: index, type: siteType ?? SiteType.permananet),
    );
  }
}
