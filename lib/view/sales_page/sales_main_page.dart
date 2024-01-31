import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/job_list/job_list_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/calender_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cm_home_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/week_page.dart';

import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/quote_register/quote_register.dart';
import 'package:enviro_mobile_application/view/sales_list/sales_list_page.dart';
import 'package:flutter/material.dart';

@RoutePage()
class SalesMainPage extends StatelessWidget {
  const SalesMainPage({super.key});

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
              Expanded(
                child: const TabBarView(
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
