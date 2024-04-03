import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:flutter/material.dart';

notificationButton(BuildContext context) => IconButton(
    icon: const Icon(Icons.notifications_active_rounded),
    onPressed: () {
      context.router.pushNamed(RouteNames.rnotificationpage);
    });
