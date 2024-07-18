import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/01_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const gapField = SizedBox(height: 0.3);
Card customCard({required Widget child}) => Card(
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Appthemes.cLightGrey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      color: Colors.white,
      child: child,
    );

expandedShowText2(String value, int flex) => Expanded(
    flex: flex,
    child:
        showBlackText(value, fontSize: 10.w, overflow: TextOverflow.ellipsis));

Row expandedRowShowText2(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        expandedShowText2(firsValue, 1),
        expandedShowText2(":$secondValue", 2),
      ],
    );
Row expandedRowShowText(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        expandedShowText2(firsValue, 2),
        sized0wx05,
        showBlackText(':'),
        sized0wx05,
        expandedShowText2(secondValue, 2),
      ],
    );

Row expandedRowShowingText2(String firsValue, String secondValue) => Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        expandedShowText2(firsValue, 2),
        sized0wx05,
        showBlackText(':'),
        sized0wx05,
        expandedShowText2(secondValue, 2),
        // showIcon(icon: Icon(Icons.today))
      ],
    );
Row expandedRowShowText1(String firsValue, String secondValue) => Row(
      children: [
        Expanded(flex: 3, child: showBlueText(firsValue)),
        sized0wx05,
        showBlueText(':'),
        sized0wx05,
        Expanded(flex: 1, child: showBlueText(secondValue)),
      ],
    );

Expanded imageAndName(String image) => Expanded(
      flex: 2,
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: image,
            height: 60.w,
            width: 60.w,
          ),
          gapField,
          showBlueText('Name'),
        ],
      ),
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
            Expanded(
              flex: 7,
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (context, index) => gapField,
                itemCount: widget.length,
                itemBuilder: (context, index) => widget[index],
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );


