import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import '../../widgets/cmappbar.dart';
import 'widgets/del_site_list_widget.dart';
import '../../widgets/cmn_action_icon.dart';
import 'widgets/temp_site_list_widget.dart';
import '../../widgets/cmn_leading_icon.dart';
import 'widgets/permanent_site_list_widget.dart';
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
        body: const Column(
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
                PermanentSitesListWidget(),
                TempSiteListWidget(),
                DelSiteListWidget(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
