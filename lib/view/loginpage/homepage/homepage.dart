import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/bottombar.dart';
import 'package:enviro_mobile_application/view/loginpage/common/appbar/cmappbar.dart';

import 'package:enviro_mobile_application/view/loginpage/common/appbar/imagepath/imagepath.dart';
import 'package:enviro_mobile_application/view/loginpage/homepage/widgets/card_main_container.dart';
import 'package:enviro_mobile_application/view/loginpage/homepage/widgets/common_small_card.dart';
import 'package:enviro_mobile_application/view/loginpage/homepage/widgets/common_tababr.dart';
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
              icon: const Icon(Icons.account_circle),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              CommonTabbar(),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const SizedBox(
                  height: 14.0,
                ),
              ),
              const Text(
                "Today's Schedule",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const CardMainContainer(),
              const SizedBox(height: 48),
              const Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Schedule List',
                  ),
                ),
              ),
              SizedBox(
                height: 18.sp,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: common_card(),
              ),
              SizedBox(
                height: 18.sp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
