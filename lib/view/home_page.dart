import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/api_endpoints/customprint.dart';
import 'package:enviro_mobile_application/view_model/02_sales/sales_view_model.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/07_intranet/intranet_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/view_model/home_page/home_page_viewmodel.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';

import '../view_model/10_site/site_view_model.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
          // leading: const cmn_leading_icon(),
          title: cmnTitleWidget('Home'),
          actions: [notificationButton(context)]),
      body: Observer(builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(36.0),
          child: vmselection.permissionsResponse.loading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : GridView.count(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  children: [
                    Observer(builder: (_) {
                      return GestureDetector(
                        onTap: () => onsalesfunction(context),
                        child: _buildBox('assets/images/star.svg', 'Sales'),
                      );
                    }),
                    GestureDetector(
                      onTap: () => vehiclefunction(context),
                      child: _buildBox('assets/images/truck.svg', 'Vehicle'),
                    ),
                    GestureDetector(
                      onTap: () => ohsfunction(context),
                      child: _buildBox('assets/images/move(1).svg', 'OH&S'),
                    ),
                    GestureDetector(
                      onTap: () => navigateToSitesPage(context: context),
                      child: _buildBox('assets/images/user.svg', 'Site'),
                    ),
                    GestureDetector(
                      onTap: () => calenderfunction(context),
                      child:
                          _buildBox('assets/images/calendar.svg', 'Scheduling'),
                    ),
                    GestureDetector(
                      onTap: () => intranetfuntion(context),
                      child: _buildBox('assets/images/globe.svg', 'Intranet'),
                    ),
                    GestureDetector(
                      onTap: () => teamfuntion(context),
                      child: _buildBox('assets/images/users.svg', 'Team'),
                    )
                  ],
                ),
        );
      }),
    );
  }

  Widget _buildBox(String svgPath, String text,
      {Color iconColor = Appthemes.cPrimary,
      double width = 30.0,
      double height = 30.0}) {
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
    router.pushNamed(RouteNames.rSalesPpage);
    vmSales.saleJobListApi();
    vmSales.saleslistApi();
    vmSales.quoteRegisterApi();
  }
}

void ohsfunction(BuildContext context) {
  vmProfile.profileviewmodelfunction();
  context.router.pushNamed(RouteNames.ohsPage);
  customPrint(content: 'ohs');
  vmOhs.ohsnotificationviewmodelfunction();
  vmOhs.ohsnewsviewmodelfunction();
  vmOhs.ohsnewsfolderviewmodelfunction(1);
}

void intranetfuntion(BuildContext context) {
  vmIntranet.intranetviewmodelfunction(1);
  context.router.pushNamed(RouteNames.intranetpage);
}

void calenderfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.rSchedulingPage);
}

void vehiclefunction(BuildContext context) async {
  context.router.pushNamed(RouteNames.vehiclemainpage);
  vmVehicle.masterTruckApi();
  vmVehicle.mastercarfunction();
  vmVehicle.trailorfunction();
}

void teamfuntion(BuildContext context) {
  vmTeam.getCurrentEmployee();
  vmTeam.getTerminatedEmployee();
  context.router.pushNamed(RouteNames.teamPage);
}

void navigateToSitesPage({required BuildContext context}) {
  vmSite
    ..getPermanentSites()
    ..getTemporarySites()
    ..getDeletedSites();
  context.router.pushNamed(RouteNames.siteListPage);
}
