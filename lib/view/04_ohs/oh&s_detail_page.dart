import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class OhsDetailPage extends StatelessWidget {
  final OhsRespModel data;
  final int index;
  const OhsDetailPage({Key? key, required this.data, required this.index})
      : super(key: key);

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Notification Detail'),
      ),
      body: SingleChildScrollView(
        child: Observer(builder: (context) {
          final res = vmOhs.notificationpageResponse;
          return Column(
            children: [
              res.loading
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        Padding(
                          padding: screenWidth,
                          child: SizedBox(
                            width: double.infinity,
                            child: Card(
                              color: Colors.grey.shade200,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  sized0hx10,
                                  Column(
                                    children: [
                                      Text(
                                        data.title ?? '',
                                        style: TextStyle(fontSize: 10.w),
                                      ),
                                      Text(
                                        data.created_by ?? '',
                                        style: TextStyle(fontSize: 10.w),
                                      ),
                                      Text(
                                        data.description ?? '',
                                        style: TextStyle(fontSize: 10.w),
                                      ),
                                      Text(
                                        DateFormat('yyyy-MM-dd').format(
                                          DateTime.parse(
                                              data.edited_date_time ?? ''),
                                        ),
                                        style: TextStyle(fontSize: 10.w),
                                      )
                                    ],
                                  ),
                                  sized0hx10,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      if (data.file_attachment?.isNotEmpty ??
                                          false)
                                        InkWell(
                                          onTap: () {
                                            vmSchedule.launchURL(
                                                data.file_attachment ?? "");
                                          },
                                          child: Container(
                                            width: 80.h,
                                            decoration: BoxDecoration(
                                                border: Border.all()),
                                            child: Column(
                                              children: [
                                                Column(children: [
                                                  const Icon(
                                                      Icons.file_copy_outlined),
                                                  Text(
                                                    data.file_attachment ?? "",
                                                    style: TextStyle(
                                                        fontSize: 10.w),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )
                                                ])
                                              ],
                                            ),
                                          ),
                                        ),
                                    ],
                                  ),
                                  sized0hx20,
                                ],
                              ),
                            ),
                          ),
                        ),
                        sized0hx20,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 30.h,
                                width: 80.h,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: data.editStatus == false
                                          ? Colors.black
                                          : Colors.grey.shade400,
                                    ),
                                    borderRadius: BorderRadius.circular(7)),
                                child: TextButton(
                                    onPressed: () {
                                      // vmOhs.ohsDeleteNotificationApi(
                                      //     context: context,
                                      //     notificationId: data.id ?? 0);
                                    },
                                    child: vmOhs
                                            .deleteNotificationResponse.loading
                                        ? SizedBox(
                                            height: 12.w,
                                            width: 12.w,
                                            child:
                                                const CircularProgressIndicator(
                                              strokeWidth: 2,
                                            ))
                                        : Text(
                                            "Edit",
                                            style: TextStyle(
                                                color: data.editStatus == false
                                                    ? Colors.black
                                                    : Colors.grey.shade400,
                                                fontSize: 10.w),
                                          ))),
                            Container(
                                height: 30.h,
                                width: 80.h,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(7)),
                                child: TextButton(
                                    onPressed: () {
                                      vmOhs.ohsDeleteNewsApi(
                                          context: context,
                                          newsId: data.id ?? 0);
                                    },
                                    child: vmOhs.deleteNewsResponse.loading
                                        ? SizedBox(
                                            height: 12.w,
                                            width: 12.w,
                                            child:
                                                const CircularProgressIndicator(
                                              strokeWidth: 2,
                                            ))
                                        : Text(
                                            "Delete",
                                            style: TextStyle(
                                                color: Colors.grey.shade800,
                                                fontSize: 10.w),
                                          ))),
                            if (vmOhs.newspageResponse.data?[index]
                                    .userReadStatus ==
                                false)
                              Container(
                                  height: 30.h,
                                  width: 80.h,
                                  decoration: BoxDecoration(
                                      border: Border.all(),
                                      borderRadius: BorderRadius.circular(7)),
                                  child: TextButton(
                                      onPressed: () {
                                        vmOhs.ohsStatusNewsApi(
                                            context: context,
                                            newsId: data.id ?? 0);
                                      },
                                      child: vmOhs.statusNewsResponse.loading
                                          ? SizedBox(
                                              height: 12.w,
                                              width: 12.w,
                                              child:
                                                  const CircularProgressIndicator(
                                                strokeWidth: 2,
                                              ))
                                          : Text(
                                              "Read",
                                              style: TextStyle(
                                                  color: Colors.grey.shade800,
                                                  fontSize: 10.w),
                                            )))
                          ],
                        ),
                        sized0hx20
                      ],
                    ),
            ],
          );
        }),
      ),
    );
  }
}
