import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/home_page.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Routepage/approutes.gr.dart';

Drawer cmnDrawer(BuildContext context) {
  return Drawer(
    width: 210.w,
    child: ListView(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      children: <Widget>[
        const SizedBox(
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: Column(
            children: [
              Row(
                children: [
                  Observer(builder: (_) {
                    return SizedBox(
                      width: 45.w,
                      height: 65.w,
                      child: vmProfile.profilepageResponse.data?.dp != null
                          ? Image.network(
                              vmProfile.profilepageResponse.data!.dp!,
                              fit: BoxFit.cover,
                            )
                          : Container(),
                    );
                  }),
                  Observer(builder: (_) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 23.0),
                      child: Text(
                        vmProfile.profilepageResponse.data?.username ?? '',
                        style: const TextStyle(overflow: TextOverflow.clip),
                      ),
                    );
                  }),
                ],
              ),
              SizedBox(
                height: 8.w,
              ),
              SizedBox(
                height: 33.w,
                child: ElevatedButton(
                    onPressed: () {
                      profileeditfunction(context);
                    },
                    style: ButtonStyle(
                      side: MaterialStateProperty.all(
                          const BorderSide(color: Colors.blue)),
                    ),
                    child: Observer(builder: (_) {
                      return Text(
                        vmProfile.profilepageResponse.data?.permissionType ??
                            '',
                        style: const TextStyle(color: Colors.black),
                      );
                    })),
              ),
              SizedBox(
                height: 35.w,
              ),
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: const Text('Home'),
                onTap: () {
                  context.router.pushNamed(RouteNames.rHomePage);
                  Navigator.pop(context);
                },
              ),
              sized0hx05,
              ListTile(
                leading: const Icon(
                  Icons.monetization_on,
                  color: Colors.blue,
                ),
                title: const Text('Sales'),
                onTap: () {
                  onsalesfunction(context);
                  Navigator.pop(context);
                },
              ),
              sized0hx05,
              ListTile(
                leading: const Icon(
                  Icons.directions_car,
                  color: Colors.blue,
                ),
                title: const Text('Vehicle'),
                onTap: () {
                  vehiclefunction(context);
                  Navigator.pop(context);
                },
              ),
              sized0hx05,
              ListTile(
                leading: const Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                title: const Text('Site'),
                onTap: () {
                  navigateToSitesPage(context: context);
                  Navigator.pop(context);
                },
              ),
              sized0hx05,
              ListTile(
                leading: const Icon(
                  Icons.local_hospital,
                  color: Colors.blue,
                ),
                title: const Text('OH&S'),
                onTap: () {
                  ohsfunction(context);
                  Navigator.pop(context);
                },
              ),
              sized0hx05,
              ListTile(
                leading: const Icon(
                  Icons.schedule,
                  color: Colors.blue, // Set icon color to blue
                ),
                title: const Text('Scheduling'),
                onTap: () {
                  shedulepagefunction(context);
                  Navigator.pop(context);
                },
              ),
              sized0hx05,
              ListTile(
                leading: const Icon(
                  Icons.business,
                  color: Colors.blue, // Set icon color to blue
                ),
                title: const Text('Intranet'),
                onTap: () {
                  intranetfuntion(context);
                  Navigator.pop(context);
                },
              ),
              sized0hx05,
              ListTile(
                leading: const Icon(
                  Icons.people,
                  color: Colors.blue, // Set icon color to blue
                ),
                title: const Text('Team'),
                onTap: () {
                  teamfuntion(context);
                  // Add your functionality here
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        ListTile(
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.logout,
              color: Colors.blue,
            ),
          ),
          onTap: () async {
            context.router.replaceAll([LoginRoute()]);
            await SecureStorage().clearData();
          },
          title: const Text('Logout Account'),
        ),
      ],
    ),
  );
}

void profileeditfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.rprofilepage);
}
