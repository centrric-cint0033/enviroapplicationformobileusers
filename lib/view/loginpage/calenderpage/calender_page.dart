import 'package:enviro_mobile_application/view/loginpage/common/appbar/Appthemes/Appthemes.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/calender_page.dart';

import 'package:flutter/material.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(
          leadingImage: Image.asset(ImageConstant.imagePath),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              iconSize: 32,
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
        body: calender_page(),
      ),
    );
  }
}
