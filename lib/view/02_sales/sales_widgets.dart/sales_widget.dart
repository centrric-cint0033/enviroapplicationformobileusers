import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final gapField = sized0hx10;

Card customCard({required Widget child}) => Card(
    margin: const EdgeInsets.only(left: 16.0, right: 16),
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Appthemes.cLightGrey),
      borderRadius: BorderRadius.circular(8.0),
    ),
    color: Colors.white,
    child: child);

Text showText(String value) => Text(
      value,
      // textAlign: TextAlign.left,
      style: const TextStyle(color: Colors.blue),
    );

Expanded expandedShowText(String value) => Expanded(child: showText(value));

Row expandedRowShowText(String firsValue, String secondValue) => Row(
      children: [expandedShowText(firsValue), expandedShowText(secondValue)],
    );

Widget buildCardDataOrder(List<Widget> widget, {String? image}) => customCard(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          if (image != null) ...[
            imageAndName(image),
            sized0wx10,
          ],
          Expanded(flex: 7, child: Column(children: widget)),
        ],
      ),
    ));

Expanded imageAndName(String image) => Expanded(
    flex: 2,
    child: Column(children: [
      CachedNetworkImage(
        imageUrl: image,
        height: 60.w,
        width: 60.w,
      ),
      gapField,
      showText('Name')
    ]));
