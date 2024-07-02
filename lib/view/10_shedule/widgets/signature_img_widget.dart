import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget signatureImageWidget({required int i}) {
  return SizedBox(
    width: 75.h,
    child: Image(
        fit: BoxFit.cover,
        image: CachedNetworkImageProvider(
            vmSchedule.sheduleweekResponse.data?[i].image ?? "")),
  );
}
