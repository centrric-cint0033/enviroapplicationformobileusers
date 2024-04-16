import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final gapField = sized0hx10;

Card customCard({required Widget child}) => Card(
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Appthemes.cLightGrey),
      borderRadius: BorderRadius.circular(8.0),
    ),
    color: Colors.white,
    child: child);

Text showText(String value, {FontWeight? fontWeight}) => Text(value,
    style: TextStyle(color: Appthemes.cPrimary, fontWeight: fontWeight));

Expanded expandedShowText(String value) =>
    Expanded(flex: 3, child: showText(value));

Row expandedRowShowText(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [expandedShowText(firsValue), expandedShowText(secondValue)],
    );

Row expandedRowShowText1(String firsValue, String secondValue) => Row(
      children: [
        Expanded(flex: 3, child: showText(firsValue)),
        Expanded(flex: 1, child: showText(secondValue))
      ],
    );

Widget buildCardDataOrder(List<Widget> widget, {String? image}) => customCard(
    child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(children: [
          if (image != null) ...[
            imageAndName(image),
            sized0wx10,
          ],
          Expanded(flex: 7, child: Column(children: widget)),
        ])));

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
