import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

notificationButton(BuildContext context) => IconButton(
    icon: Icon(
      Icons.notifications_active_rounded,
      size: 16.sp,
    ),
    onPressed: () {
      vmOhs.ohsNotificationApi();
      context.router.pushNamed(RouteNames.rnotificationpage);
    });
