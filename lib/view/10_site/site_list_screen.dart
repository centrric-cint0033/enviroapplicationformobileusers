import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../widgets/cmappbar.dart';
import 'widgets/del_site_list_widget.dart';
import '../../widgets/cmn_action_icon.dart';
import 'widgets/temp_site_list_widget.dart';
import '../../widgets/cmn_leading_icon.dart';
import 'widgets/site_list_search_widget.dart';
import 'widgets/permanent_site_list_widget.dart';
import '../../widgets/cmn_title_textwidget.dart';
import '../../view_model/10_site/site_view_model.dart';

@RoutePage()
class SiteListScreen extends StatelessWidget {
  const SiteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedTab = 0;
    WidgetsBinding.instance.addPostFrameCallback(
      (timeStamp) {
        vmSite
          ..permanentSitesPagination()
          ..tempSitesPagination()
          ..delSitesPagination();
      },
    );
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
            Container(
              width: MediaQuery.sizeOf(context).width - 30.w,
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.blue),
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(2.0),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                physics: const AlwaysScrollableScrollPhysics(),
                indicator: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                labelColor: Colors.black,
                unselectedLabelColor: Colors.white,
                indicatorColor: Colors.black,
                onTap: (value) => selectedTab = value,
                tabs: const [
                  Tab(text: "Permanent"),
                  Tab(text: "Temporary"),
                  Tab(text: "Deleted"),
                ],
              ),
            ),
            SiteListSearchWidget(selectedTab: selectedTab),
            const Expanded(
              child: TabBarView(
                children: [
                  PermanentSitesListWidget(),
                  TempSiteListWidget(),
                  DelSiteListWidget(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
