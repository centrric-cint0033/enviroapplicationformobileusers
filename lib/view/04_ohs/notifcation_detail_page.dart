import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_widget/notification_comment_list.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class NotificationDetailPage extends StatelessWidget {
  final OhsRespModel data;
  final int index;
  final bool fromArchive;
  const NotificationDetailPage(
      {Key? key,
      required this.data,
      required this.index,
      this.fromArchive = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: cmnDrawer(context),
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
                                        style: TextStyle(fontSize: 10.sp),
                                      ),
                                      Text(
                                        data.created_by ?? '',
                                        style: TextStyle(fontSize: 10.sp),
                                      ),
                                      Text(
                                        data.description ?? '',
                                        style: TextStyle(fontSize: 10.sp),
                                      ),
                                      Text(
                                        DateFormat('yyyy-MM-dd').format(
                                          DateTime.parse(
                                              data.edited_date_time ?? ''),
                                        ),
                                        style: TextStyle(fontSize: 10.sp),
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
                                                border: Border.all(),
                                                borderRadius:
                                                    BorderRadius.circular(7)),
                                            child: Column(
                                              children: [
                                                Column(children: [
                                                  const Icon(
                                                      Icons.file_copy_outlined),
                                                  Text(
                                                    data.file_attachment ?? "",
                                                    style: TextStyle(
                                                        fontSize: 10.sp),
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                  )
                                                ])
                                              ],
                                            ),
                                          ),
                                        ),
                                      Container(
                                          height: 30.h,
                                          width: 80.h,
                                          decoration: BoxDecoration(
                                              border: Border.all(),
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          child: TextButton(
                                              onPressed: () {
                                                fromArchive == false
                                                    ? vmOhs
                                                        .ohsDeleteNotificationApi(
                                                            context: context,
                                                            notificationId:
                                                                data.id ?? 0)
                                                    : vmOhs
                                                        .ohsDeleteArchiveNotificationApi(
                                                            context: context,
                                                            notificationId:
                                                                data.id ?? 0);
                                              },
                                              child: (fromArchive == false
                                                      ? vmOhs
                                                          .deleteNotificationResponse
                                                          .loading
                                                      : vmOhs
                                                          .deleteArchiveNotificationResponse
                                                          .loading)
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
                                                          color: Colors
                                                              .grey.shade800,
                                                          fontSize: 10.sp),
                                                    ))),
                                      if (fromArchive == false) ...[
                                        if (vmOhs.notificationpageResponse
                                                .data?[index].userReadStatus ==
                                            false)
                                          Container(
                                              height: 30.h,
                                              width: 80.h,
                                              decoration: BoxDecoration(
                                                  border: Border.all(),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: TextButton(
                                                  onPressed: () {
                                                    vmOhs
                                                        .ohsStatusNotificationApi(
                                                            context: context,
                                                            notificationId:
                                                                data.id ?? 0);
                                                  },
                                                  child: vmOhs
                                                          .statusNotificationResponse
                                                          .loading
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
                                                              color: Colors.grey
                                                                  .shade800,
                                                              fontSize: 10.sp),
                                                        )))
                                      ] else ...[
                                        if (vmOhs.archiveNotificationResponse
                                                .data?[index].userReadStatus ==
                                            false)
                                          Container(
                                              height: 30.h,
                                              width: 80.h,
                                              decoration: BoxDecoration(
                                                  border: Border.all(),
                                                  borderRadius:
                                                      BorderRadius.circular(7)),
                                              child: TextButton(
                                                  onPressed: () {
                                                    vmOhs
                                                        .ohsStatusNotificationApi(
                                                            context: context,
                                                            notificationId:
                                                                data.id ?? 0);
                                                  },
                                                  child: vmOhs
                                                          .statusNotificationResponse
                                                          .loading
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
                                                              color: Colors.grey
                                                                  .shade800,
                                                              fontSize: 10.sp),
                                                        )))
                                      ]
                                    ],
                                  ),
                                  sized0hx20,
                                ],
                              ),
                            ),
                          ),
                        ),
                        sized0hx20,
                        Padding(
                          padding: screenWidth,
                          child: NotificationCommentList(
                            data: data,
                            indexx: index,
                            fromArchive: fromArchive,
                          ),
                        )
                      ],
                    ),
            ],
          );
        }),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 20.w),
        child: SizedBox(
          child: TextField(
            controller: vmOhs.addCommentController,
            cursorColor: Colors.grey,
            autofocus: false,
            decoration: InputDecoration(
              focusColor: Colors.black12,
              fillColor: Colors.grey.shade200,
              filled: true,
              enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey.shade300,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey)),
              hintText: 'Add Comment',
              hintStyle: TextStyle(fontSize: 9.sp),
              suffixIcon: Observer(builder: (context) {
                final res = vmOhs.addCommentNotifyResponse;
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.shade100,
                    child: Center(
                      child: IconButton(
                        icon: res.loading
                            ? SizedBox(
                                height: 12.w,
                                width: 12.w,
                                child: const CircularProgressIndicator(
                                  strokeWidth: 2,
                                ))
                            : Icon(
                                Icons.send,
                                size: 13.w,
                              ),
                        onPressed: () {
                          if (vmOhs.addCommentController.text.isNotEmpty) {
                            vmOhs.ohsAddCommentNotificationApi(
                                context: context,
                                notificationId: data.id ?? 0,
                                comment: vmOhs.addCommentController.text);
                          }
                        },
                      ),
                    ),
                  ),
                );
              }),
            ),
            style: TextStyle(fontSize: 9.sp),
            maxLines: null,
          ),
        ),
      ),
    );
  }
}
