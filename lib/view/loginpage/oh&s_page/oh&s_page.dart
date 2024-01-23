import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cm_home_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/news_page.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OhsPage extends StatelessWidget {
  const OhsPage({Key? key}) : super(key: key);

  void _handleNotificationButtonTap() {
    print('Notification button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                width: 390,
                height: 52,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(22.0),
                ),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(23),
                    color: Colors.white,
                  ),
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.white,
                  indicatorColor: Colors.black,
                  tabs: const [
                    Tab(text: 'news'),
                    Tab(text: 'notifications'),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  news_page(), // Content for the 'news' tab
                  // Content for the 'notifications' tab
                  Center(
                    child: Text('Notifications Content'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
