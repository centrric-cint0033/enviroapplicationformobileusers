import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:flutter/material.dart';

notificationButton(BuildContext context) => IconButton(
    icon: const Icon(Icons.notifications_active_rounded),
    onPressed: () {
      vmOhs.ohsNotificationApi();
      context.router.pushNamed(RouteNames.rnotificationpage);
    });
