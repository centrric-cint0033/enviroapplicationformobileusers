import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'site_tile_widget.dart';
import '../../../utilis/constant.dart';
import '../../../Routepage/approutes.gr.dart';
import '../../../view_model/10_site/site_view_model.dart';
import '../../../model/10_site/site_res_model/site_res_model.dart';

class DelSiteListWidget extends StatelessWidget {
  const DelSiteListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (context) {
        List<SiteResModel> sites = vmSite.delSiteResponse.data?.toList() ?? [];
        return RefreshIndicator(
          onRefresh: () async {
            return vmSite.getTemporarySites();
          },
          child: vmSite.delSiteResponse.loading
              ? const Center(child: CupertinoActivityIndicator())
              : ListView.separated(
                  itemCount: sites.length + 1,
                  controller: vmSite.delSitesController,
                  physics: const AlwaysScrollableScrollPhysics(),
                  separatorBuilder: (context, index) => sized0hx05,
                  padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                  itemBuilder: (context, index) {
                    return index == sites.length
                        ? vmSite.delSiteResponse.paginationLoading
                            ? const CupertinoActivityIndicator()
                            : const SizedBox.shrink()
                        : SiteTileWidget(
                            onTap: () {
                              if (sites[index].id != null) {
                                vmSite.getDetails(
                                  id: sites[index].id!,
                                  context: context,
                                  type: SiteType.deleted,
                                );
                                context.router.push(
                                  SiteDetailRoute(
                                    index: index,
                                    type: SiteType.deleted,
                                  ),
                                );
                              }
                            },
                            name: sites[index].clientName ?? "",
                            address: sites[index].siteAddress ?? "",
                          );
                  },
                ),
        );
      },
    );
  }
}
