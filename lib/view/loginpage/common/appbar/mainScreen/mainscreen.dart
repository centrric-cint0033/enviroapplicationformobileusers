import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/loginpage/calenderpage/calender_page.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/bottombar.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/homepage.dart';
import 'package:enviro_mobile_application/view/loginpage/home_page/home_page.dart';
import 'package:enviro_mobile_application/view/loginpage/intranet_page/intranet_page.dart';
import 'package:enviro_mobile_application/view/loginpage/oh&s_page/oh&s_page.dart';
import 'package:enviro_mobile_application/view/loginpage/vehiclepage/vehicle-page.dart';
import 'package:enviro_mobile_application/view/loginpage/week_page/week_page.dart';
import 'package:enviro_mobile_application/viewmodel/home_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

@RoutePage()
class MainScreen extends StatelessWidget {
  const MainScreen({Key? key});
  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      const Homepage1(),
      const OhsPage(),
      const IntranetPage(),
      const VehiclePage()
    ];

    return Scaffold(
      body: Center(
        child: Observer(
          builder: (context) {
            return widgetOptions.elementAt(vmselection.currentIndex);
          },
        ),
      ),
      bottomNavigationBar: const CommonBottombar(),
    );
  }
}
