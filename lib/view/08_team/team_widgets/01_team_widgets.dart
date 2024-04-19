import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customContainerWidget(Color color, String text) {
  return Container(
    height: 26.h,
    width: 48.w,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.h),
        border: Border.all(color: color)),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: color, fontSize: 10.h),
      ),
    ),
  );
}

Widget listTile(
  BuildContext context, {
  TeamResModel? data,
  required Function() onTap,
}) {
  return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(12)),
      child: InkWell(
        onTap: onTap,
        child: ColoredBox(
          color: Appthemes.cLightGrey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Center(
              child: ListTile(
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(32),
                          bottomRight: Radius.circular(32))),
                  leading: dpImage(data?.dpThumbnail ?? data?.dp ?? ""),
                  title: Text(data?.name ?? ""),
                  trailing: customContainerWidget(Colors.blue, "View")),
            ),
          ),
        ),
      ));
}
