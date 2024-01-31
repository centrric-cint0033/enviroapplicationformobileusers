import 'package:enviro_mobile_application/view/loginpage/Common_widgets/notification_news_tabbar.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cm_home_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cmn_title_textwidget.dart';

import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/news_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/notification_page.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';
import 'package:enviro_mobile_application/view/loginpage/notification_page/notificationpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Common_widgets/widgets/cmn_leading_icon.dart';

class OhsPage extends StatelessWidget {
  const OhsPage({Key? key}) : super(key: key);

  void _handleOhsButtonTap() {
    print('Notification button tapped!');
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: CustomAppBar(
          leading: cmn_leading_icon(),
          title: cmnTitleWidget('OH&S'),
          actions: cmn_action_icon,
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
                child: notification_news_tabbar(),
              ),
            ),
            SizedBox(
              height: 48.h,
            ),
            Expanded(
              child: TabBarView(
                children: [news_page(), notification_page()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
