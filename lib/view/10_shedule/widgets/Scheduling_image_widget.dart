import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SchedulingImgWidget extends StatelessWidget {
  const SchedulingImgWidget({super.key, required this.text, required this.widget});
  final String text;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30.h,
          width: double.infinity - 20.w,
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 8.w),
              child: Text(
                text,
                style: TextStyle(fontSize: 9.w),
              ),
            ),
          ),
        ),
        sized0hx03,
        Container(
          height: 100.h,
          width: double.infinity - 20.w,
          decoration: BoxDecoration(color: Colors.grey.shade300),
          child: widget,
        )
      ],
    );
  }
}
