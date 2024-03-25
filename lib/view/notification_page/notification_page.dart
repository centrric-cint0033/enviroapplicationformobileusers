import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key});

  void _handleNotificationButtonTap() {
    print('Notification button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        leadingImage: Image.asset(ImageConstant.imagePath),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            iconSize: 32,
            icon: const Icon(Icons.notifications),
            onPressed: _handleNotificationButtonTap,
          ),
          IconButton(
            iconSize: 32,
            icon: const Icon(Icons.account_circle),
            onPressed: () {},
          ),
        ],
      ),
      body: notification_page(context),
    );
  }
}
