import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/bottombar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';

import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';
import 'package:enviro_mobile_application/view/loginpage/homepage/widgets/card_main_container.dart';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 14.0,
            ),
            Text(
              "Today's Schedule",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            CardMainContainer(),
          ],
        ),
      ),
      // bottomNavigationBar: const CommonBottombar(),
    );
  }
}
