import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/sales_page/sales_main_page.dart';
import 'package:enviro_mobile_application/viewmodel/car_page/car_page_viewmodel.dart';
import 'package:enviro_mobile_application/viewmodel/home_page/home_page_viewmodel.dart';
import 'package:enviro_mobile_application/viewmodel/semi_trailor_page/semi_trailor_page_viewmodel.dart';
import 'package:enviro_mobile_application/viewmodel/truck_page/truck_page_viewmodel.dart';

import 'package:enviro_mobile_application/viewmodel/vehiclepage/vehicle_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_leading_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';

class Homepage1 extends StatelessWidget {
  const Homepage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leading: const cmn_leading_icon(),
        title: cmnTitleWidget('HOME'),
        actions: cmn_action_icon,
      ),
      body: Padding(
        padding: const EdgeInsets.all(36.0),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: [
            Observer(builder: (_) {
              return GestureDetector(
                onTap: () => onsalesfunction(context),
                child: _buildBox(
                  'assets/images/star.svg',
                  'Sales',
                  Colors.blue,
                  width: 30.0,
                  height: 30.0,
                ),
              );
            }),
            GestureDetector(
              onTap: () => vehiclefunction(context),
              child: _buildBox(
                'assets/images/truck.svg',
                'Vehicle',
                Colors.blue,
                width: 30.0,
                height: 30.0,
              ),
            ),
            GestureDetector(
              onTap: () => ohsfunction(context),
              child: _buildBox(
                'assets/images/move(1).svg',
                'OH&S',
                Colors.blue,
                width: 30.0,
                height: 30.0,
              ),
            ),
            _buildBox(
              'assets/images/user.svg',
              'Site',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
            GestureDetector(
              onTap: () => calenderfunction(context),
              child: _buildBox(
                'assets/images/calendar.svg',
                'Scheduling',
                Colors.blue,
                width: 30.0,
                height: 30.0,
              ),
            ),
            GestureDetector(
              onTap: () => intranetfuntion(context),
              child: _buildBox(
                'assets/images/globe.svg',
                'Intranet',
                Colors.blue,
                width: 30.0,
                height: 30.0,
              ),
            ),
            _buildBox(
              'assets/images/users.svg',
              'Team',
              Colors.blue,
              width: 30.0,
              height: 30.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBox(String svgPath, String text, Color iconColor,
      {double width = 15.0, double height = 15.0}) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            svgPath,
            width: width,
            height: height,
            color: iconColor,
          ),
          const SizedBox(height: 8.0),
          Text(text),
        ],
      ),
    );
  }
}

void onsalesfunction(BuildContext context) async {
  final router = context.router;
  await vmselection.permissions();

  final permissionsResponse = vmselection.permissionsResponse;

  if (permissionsResponse.error != null) {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        backgroundColor: Color(0XFF061933),
        content: Text(
          'You have no permission for entering this.',
        ),
        duration: Duration(seconds: 3),
      ),
    );
  } else {
    router.pushNamed(RouteNames.salesmainpage);
  }
}

void ohsfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.ohsPage);
}

void intranetfuntion(BuildContext context) {
  context.router.pushNamed(RouteNames.intranetpage);
  print('Notification button tapped!');
}

void calenderfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.calenderpage);
  print('Notification button tapped!');
}

void vehiclefunction(BuildContext context) async {
  context.router.pushNamed(RouteNames.vehiclemainpage);
  await vmtruck.truckPageFunction();
  await vmcar.mastercarfunction();
  vmtrailor.trailorfunction();
}
