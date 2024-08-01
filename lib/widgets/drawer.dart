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
      padding: EdgeInsets.zero,
      children: <Widget>[
        SizedBox(
          height: 40.w,
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.w),
          child: Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Observer(builder: (_) {
                    return Container(
                      width: 45.w,
                      height: 65.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: NetworkImage(
                            vmProfile.profilepageResponse.data!.dp!,
                          ))),
                      // child: vmProfile.profilepageResponse.data?.dp != null
                      //     ? Image.network(
                      //         vmProfile.profilepageResponse.data!.dp!,
                      //         fit: BoxFit.cover,
                      //       )
                      //     : Container(),
                    );
                  }),
                  sized0wx15,
                  Expanded(
                    child: Observer(builder: (_) {
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            vmProfile.profilepageResponse.data?.username ?? '',
                            style: TextStyle(
                                fontSize: 12.sp,
                                overflow: TextOverflow.ellipsis),
                          ),
                          sized0hx03,
                          SizedBox(
                            height: 26.w,
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
                                    vmProfile.profilepageResponse.data
                                            ?.permissionType ??
                                        '',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w500),
                                  );
                                })),
                          ),
                        ],
                      );
                    }),
                  ),
                ],
              ),
              sized0hx30,
              ListTile(
                leading: const Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
                title: Text(
                  'Home',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  context.router.pushNamed(RouteNames.rHomePage);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.monetization_on,
                  color: Colors.blue,
                ),
                title: Text(
                  'Sales',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  onsalesfunction(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.directions_car,
                  color: Colors.blue,
                ),
                title: Text(
                  'Vehicle',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  vehiclefunction(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.location_on,
                  color: Colors.blue,
                ),
                title: Text(
                  'Site',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  navigateToSitesPage(context: context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.local_hospital,
                  color: Colors.blue,
                ),
                title: Text(
                  'OH&S',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  ohsfunction(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.schedule,
                  color: Colors.blue, // Set icon color to blue
                ),
                title: Text(
                  'Scheduling',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  shedulepagefunction(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.business,
                  color: Colors.blue, // Set icon color to blue
                ),
                title: Text(
                  'Intranet',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  intranetfuntion(context);
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: const Icon(
                  Icons.people,
                  color: Colors.blue, // Set icon color to blue
                ),
                title: Text(
                  'Team',
                  style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.w700,
                      color: Colors.grey.shade700),
                ),
                onTap: () {
                  teamfuntion(context);
                  // Add your functionality here
                  Navigator.pop(context);
                },
              ),
            ],
          ),
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
          title: Text(
            'Logout Account',
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade700),
          ),
        ),
      ],
    ),
  );
}

void profileeditfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.rprofilepage);
}
