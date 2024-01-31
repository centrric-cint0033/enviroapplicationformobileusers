import 'package:flutter/material.dart';

void _handleNotificationButtonTap() {
  print('Notification button tapped!');
}

List<Widget> get cmn_action_icon {
  return [
    const IconButton(
      iconSize: 32,
      icon: Padding(
        padding: EdgeInsets.only(right: 13.0),
        child: Icon(Icons.notifications),
      ),
      onPressed: _handleNotificationButtonTap,
    ),
  ];
}
