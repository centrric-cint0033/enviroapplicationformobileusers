import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Card customCard({required Widget child}) => Card(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Appthemes.cLightGrey),
      borderRadius: BorderRadius.circular(8.0),
    ),
    color: Colors.white,
    child: child);

Expanded expandedShowText(String value) =>
    Expanded(flex: 3, child: showBlackText(value));

Row expandedRowShowText(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        expandedShowText(firsValue),
        sized0wx05,
        showBlackText(':'),
        sized0wx05,
        expandedShowText(secondValue)
      ],
    );
Row expandedRowsShowingText(
  String firsValue,
  String secondValue,
) =>
    Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        expandedShowText(firsValue),
        sized0wx05,
        showBlueText(':'),
        sized0wx05,
        expandedShowText(secondValue),
        sized0wx05,
        // showIcon(icon: const Icon(Icons.calendar_today)),
      ],
    );
Row expandedRowShowsText(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        expandedShowText(firsValue),
        sized0wx05,
        showBlackText(':'),
        sized0wx05,
        expandedShowText(secondValue)
      ],
    );

Row expandedRowShowText1(String firsValue, String secondValue) => Row(
      children: [
        Expanded(flex: 3, child: showBlackText(firsValue)),
        sized0wx05,
        showBlueText(':'),
        sized0wx05,
        Expanded(flex: 1, child: showBlackText(secondValue))
      ],
    );

Expanded imageAndName(String image, String name) => Expanded(
      flex: 3,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: image,
            height: 60.w,
            width: 60.w,
            fit: BoxFit.cover,
          ),
          sized0hx05,
          showBlueText(name, maxLines: 2, overflow: TextOverflow.ellipsis)
        ],
      ),
    );

Widget buildCardDataOrder(List<Widget> widget, {String? image, String? name}) =>
    Container(
      decoration: BoxDecoration(
          border: Border.all(color: Appthemes.cPrimary),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
        padding: EdgeInsets.only(left: 8.w, right: 8.w),
        child: Row(
          children: [
            if (image != null) ...[
              imageAndName(image, name ?? ""),
              sized0wx10,
            ],
            Expanded(
              flex: 7,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => sized0hx05,
                itemCount: widget.length,
                itemBuilder: (context, index) => widget[index],
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
Widget showListData(Widget column) {
  return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Appthemes.cPrimary),
          borderRadius: BorderRadius.circular(6)),
      child: Padding(
          padding: EdgeInsets.only(left: 8.w, right: 8.w), child: column));
}
