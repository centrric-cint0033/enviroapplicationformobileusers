import 'package:cached_network_image/cached_network_image.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AfterImagesList extends StatelessWidget {
  const AfterImagesList({super.key, required this.i});
  final int i;
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final res = vmSchedule.sheduleweekResponse;
      return ListView.builder(
        itemCount: res.data?[i].afterPics?.length,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(8.0.h),
            child: SizedBox(
              width: 75.h,
              child: Image(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(
                      res.data?[i].afterPics?[index].file ?? "")),
            ),
          );
        },
      );
    });
  }
}
