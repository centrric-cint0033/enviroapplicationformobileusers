import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/week_page.dart';
import 'package:enviro_mobile_application/view/loginpage/calenderpage/calender_page.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/bottombar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/calender_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/card_main_container.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cm_home_page.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_small_card.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/view/loginpage/loginpage.dart';
import 'package:enviro_mobile_application/view/loginpage/week_page/week_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobx/mobx.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                icon: const Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                iconSize: 32,
                icon: const Icon(Icons.account_circle),
                onPressed: () {},
              ),
            ]),
        body: Column(
          children: [
            CommonTabbar(),
            Expanded(
              child: TabBarView(
                children: <Widget>[cmhomepage(), weekpage(), calender_page()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
