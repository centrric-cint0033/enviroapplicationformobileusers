import 'package:enviro_mobile_application/model/10_site/site_res_model/site_res_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';

import '../../view_model/10_site/site_view_model.dart';
import '../../widgets/cmappbar.dart';
import 'widgets/site_tile_widget.dart';
import '../../widgets/cmn_action_icon.dart';
import '../../widgets/cmn_leading_icon.dart';
import '../../widgets/cmn_title_textwidget.dart';

@RoutePage()
class SiteListScreen extends StatelessWidget {
  const SiteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          leading: const cmn_leading_icon(),
          title: cmnTitleWidget('Site'),
          actions: cmn_action_icon,
        ),
        body: Column(
          children: [
            TabBar(
              tabs: [
                Tab(text: "Permanent"),
                Tab(text: "Temporary"),
                Tab(text: "Deleted"),
              ],
            ),
            Expanded(
                child: TabBarView(
              children: [
                Observer(
                  builder: (context) {
                    List<SiteResModel> sites =
                        vmSite.siteResponse.data?.toList() ?? [];
                    return vmSite.siteResponse.loading
                        ? const Center(child: CupertinoActivityIndicator())
                        : ListView.separated(
                            itemCount: sites.length,
                            separatorBuilder: (context, index) => sized0hx05,
                            padding: EdgeInsets.symmetric(vertical: 10.h),
                            itemBuilder: (context, index) {
                              return SiteTileWidget(
                                name: sites[index].clientName ?? "",
                                address: sites[index].siteAddress ?? "",
                              );
                            },
                          );
                  },
                ),
                SizedBox(),
                SizedBox(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
