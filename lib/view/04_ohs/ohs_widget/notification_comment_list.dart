import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationCommentList extends StatelessWidget {
  const NotificationCommentList(
      {super.key,
      required this.data,
      required this.indexx,
      this.fromArchive = false});
  final OhsRespModel data;
  final int indexx;
  final bool fromArchive;
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      final res = fromArchive == false
          ? vmOhs.notificationpageResponse
          : vmOhs.archiveNotificationResponse;
      List<OhsRespModel> datas = res.data ?? [];
      return datas[indexx].comments_list!.isNotEmpty
          ? ListView.separated(
              shrinkWrap: true,
              itemCount: datas[indexx].comments_list?.length ?? 0,
              separatorBuilder: (BuildContext context, int index) => sized0hx05,
              itemBuilder: (context, index) {
                return Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Padding(
                    padding: EdgeInsets.only(left: 8.w, top: 8.w, bottom: 8.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          datas[indexx].created_by ?? "",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        Text(
                          datas[indexx].comments_list?[index].comment ?? "",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          : Align(
              alignment: Alignment.center,
              child: Text(
                "No Comments",
                style: TextStyle(fontSize: 10.sp),
              ));
    });
  }
}
