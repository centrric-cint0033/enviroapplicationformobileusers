import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';

void notificationclick(BuildContext context) {
  // Use the context to push the named route
  Navigator.of(context).pushNamed(RouteNames.rnotificationpage);
  print('sbhxsh');
}

class NotificationButton extends StatelessWidget {
  final IconData? iconData;

  const NotificationButton({
    Key? key,
    this.iconData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.notifications_active_rounded),
      onPressed: () {
        // Call notificationclick function with the context
        notificationclick(context);
      },
    );
  }
}
