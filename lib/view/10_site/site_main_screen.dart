import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_site/site_tab_screens/01_pemanent_sites_tab.dart';
import 'package:enviro_mobile_application/view/10_site/site_tab_screens/02_temporary_sites_tab.dart';
import 'package:enviro_mobile_application/view/10_site/site_tab_screens/03_deleted_sites_tab.dart';
import 'package:enviro_mobile_application/view/10_site/utils/site_utils.dart';
import 'package:enviro_mobile_application/view/10_site/widgets/site_widgets.dart';
import 'package:enviro_mobile_application/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../widgets/cmappbar.dart';

import '../../widgets/cmn_leading_icon.dart';
import '../../widgets/cmn_title_textwidget.dart';
import '../../view_model/10_site/site_view_model.dart';

@RoutePage()
class SiteMainScreen extends StatelessWidget {
  const SiteMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
        ),
        body: Padding(
          padding: screenWidth,
          child: Column(
            children: [
              WWcommonTabBar(
                value1: 'Permanent',
                value2: 'Temporary',
                value3: 'Deleted',
                onTap: (i) => vmSite.selectedTab = i,
              ),
              gapFieldSite,
              WWSearchField(
                controller: vmSite.searchCtr,
                hintText: "Search Site by Name",
                onChanged: onChanged,
                searchTap: () {},
              ),
              const Expanded(
                child: TabBarView(
                  children: [
                    PermanentSitesTab(),
                    TemporarySitesTab(),
                    DeletedSiteTab(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
