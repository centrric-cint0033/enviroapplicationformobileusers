import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_tab_screens/job_list_tab.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_tab_screens/quote_register_tab.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_tab_screens/sales_list_tab.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: CmnDrawer(context),
          appBar: AppBar(
            // leading: const cmn_leading_icon(),
            title: cmnTitleWidget('Sales'),
            actions: const [NotificationButton()],
          ),
          body: Column(
            children: [
              CommonTabbar(),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    JobListTab(),
                    QuoteRegisterTab(),
                    SalesListTab()
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
