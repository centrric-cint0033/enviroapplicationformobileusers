// ignore_for_file: use_build_context_synchronously

import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

@RoutePage()
class ScheduleImageScreen extends StatelessWidget {
  final bool fromJobStarted;
  final int id;
  final bool fromAddMedia;

  const ScheduleImageScreen({
    super.key,
    this.fromJobStarted = false,
    required this.id,
    this.fromAddMedia = false,
  });

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        vmSchedule.clearLists();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: cmnTitleWidget('Scheduling'),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Observer(builder: (context) {
              return (vmSchedule.pickedCameraImage == "" &&
                      vmSchedule.pickedGalleryImage == "")
                  ? Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CmButton(
                          text: "Camera",
                          width: 120.w,
                          color: Colors.black,
                          onPressed: () {
                            openCamera(context);
                          },
                        ),
                        CmButton(
                          text: "Gallery",
                          width: 120.w,
                          color: Colors.black,
                          onPressed: () {
                            openGallery(context);
                          },
                        ),
                      ],
                    )
                  : Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        vmSchedule.pickedCameraImage != ""
                            ? SizedBox(
                                width: 260.w,
                                child: ListView.builder(
                                  itemCount:
                                      vmSchedule.pickedCameraImageList?.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.all(8.0.h),
                                      child: Container(
                                        height: 160.h,
                                        width: 260.w,
                                        decoration:
                                            BoxDecoration(border: Border.all()),
                                        child: ClipRect(
                                          child: Image.file(
                                              File(vmSchedule
                                                          .pickedCameraImageList?[
                                                      index] ??
                                                  ""),
                                              fit: BoxFit.fitWidth),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              )
                            : SizedBox(
                                width: 260.w,
                                child: ListView.builder(
                                  itemCount:
                                      vmSchedule.pickedGalleryImageList?.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.all(8.0.h),
                                      child: Container(
                                        height: 160.h,
                                        width: 260.w,
                                        decoration:
                                            BoxDecoration(border: Border.all()),
                                        child: ClipRect(
                                          child: Image.file(
                                              File(vmSchedule
                                                          .pickedGalleryImageList?[
                                                      index] ??
                                                  ""),
                                              fit: BoxFit.fitWidth),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                        ElevatedButton(
                            onPressed: () {
                              vmSchedule.pickedCameraImage != null
                                  ? openCamera(context)
                                  : openGallery(context);
                            },
                            child: const Icon(Icons.add)),
                        CmButton(
                          text: "Submit",
                          color: Colors.black,
                          width: 140.w,
                          loading: vmSchedule.addImageScheduleResponse.loading,
                          indicatorColor: Colors.white,
                          fontSize: 10.sp,
                          onPressed: () async {
                            await vmSchedule.addImageScheduleApi(
                                context: context,
                                id: id,
                                beforeOrAfterPic:
                                    fromAddMedia == true ? false : true,
                                pickedFiles: (vmSchedule.pickedCameraImageList
                                            ?.isNotEmpty ??
                                        false)
                                    ? vmSchedule.pickedCameraImageList ?? []
                                    : vmSchedule.pickedGalleryImageList ?? [],
                                picType: fromJobStarted == true
                                    ? BeforeOrAfterPic.beforePic
                                    : BeforeOrAfterPic.afterPic);
                            if (vmSchedule.addImageScheduleResponse.data !=
                                null) {
                              fromJobStarted == true
                                  ? vmSchedule.editScheduleStatusApi(
                                      context: context,
                                      statusType: ScheduleStatusType.jobStarted,
                                      date: DateFormat('yyyy-MM-dd HH:mm:ss')
                                          .format(DateTime.now()),
                                      status: "job_started",
                                      id: id)
                                  : vmSchedule.editScheduleStatusApi(
                                      context: context,
                                      statusType:
                                          ScheduleStatusType.finishedJob,
                                      date: DateFormat('yyyy-MM-dd HH:mm:ss')
                                          .format(DateTime.now()),
                                      status: "job_finished",
                                      id: id);
                            }
                          },
                        ),
                        sized0hx50,
                      ],
                    );
            }),
          ),
        ),
      ),
    );
  }

  Future<void> openCamera(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      vmSchedule.pickedCameraImage = pickedFile.path;
      vmSchedule.pickedCameraImageList?.add(vmSchedule.pickedCameraImage!);
    }
  }

  Future<void> openGallery(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      vmSchedule.pickedGalleryImage = pickedFile.path;
      vmSchedule.pickedGalleryImageList?.add(vmSchedule.pickedGalleryImage!);
    }
  }
}
