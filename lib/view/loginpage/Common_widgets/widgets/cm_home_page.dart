import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_small_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'card_main_container.dart';

SingleChildScrollView cmhomepage() {
  return SingleChildScrollView(
    child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.all(14.0),
          child: SizedBox(
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
        const SizedBox(height: 28),
        const Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: EdgeInsets.only(left: 79),
            child: Column(
              children: [],
            ),
          ),
        ),
        SizedBox(
          height: 12.sp,
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
  );
}
