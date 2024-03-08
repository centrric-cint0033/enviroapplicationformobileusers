import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_tababr.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/week_page.dart';

import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';

import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/cm_home_page.dart';

import 'package:flutter/material.dart';

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
                children: <Widget>[cmhomepage(), weekpage()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
