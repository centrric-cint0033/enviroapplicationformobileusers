import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/02_sales/job_list_page.dart';

import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/common_tababr.dart';

import 'package:enviro_mobile_application/widgets/cmappbar.dart';

import 'package:enviro_mobile_application/view/02_sales/quote_register.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_list_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SalesPage extends StatelessWidget {
  const SalesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: CustomAppBar(
            leading: const cmn_leading_icon(),
            title: cmnTitleWidget('Sales'),
            actions: cmn_action_icon,
          ),
          body: Column(
            children: [
              CommonTabbar(),
              const Expanded(
                child: TabBarView(
                  children: <Widget>[
                    JobListPage(),
                    QuoteRegisterpage(),
                    SalesListPage()
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
