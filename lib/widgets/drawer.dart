import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/Routepage/securestorage.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart';
import 'package:enviro_mobile_application/view/09_prfle_creation_page/prfle_crtion.dart';
import 'package:enviro_mobile_application/view/home_page.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Routepage/approutes.gr.dart';

Drawer CmnDrawer(BuildContext context) {
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
          child: Container(
            child: Column(
              children: [
                Row(
                  children: [
                    Observer(builder: (_) {
                      return SizedBox(
                        width: 50,
                        height: 70,
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
                const SizedBox(
                  height: 8,
                ),
                Container(
                  height: 33,
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
                const SizedBox(
                  height: 46,
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Colors.blue,
                  ),
                  title: const Text('Home'),
                  onTap: () {
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
                  },
                ),
                sized0hx05,
                ListTile(
                  leading: const Icon(
                    Icons.directions_car,
                    color: Colors.blue, // Set icon color to blue
                  ),
                  title: const Text('Vehicle'),
                  onTap: () {
                    vehiclefunction(context);
                    // Add your functionality here
                    Navigator.pop(context);
                  },
                ),
                sized0hx05,
                ListTile(
                  leading: const Icon(
                    Icons.location_on,
                    color: Colors.blue, // Set icon color to blue
                  ),
                  title: const Text('Site'),
                  onTap: () {
                    // Add your functionality here
                    Navigator.pop(context);
                  },
                ),
                sized0hx05,
                ListTile(
                  leading: const Icon(
                    Icons.local_hospital,
                    color: Colors.blue, // Set icon color to blue
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
                    // Add your functionality here
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
                    // Add your functionality here
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
                    // Add your functionality here
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
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
