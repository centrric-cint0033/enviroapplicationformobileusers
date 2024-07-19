import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/video_player_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class ScheduleVideoScreen extends StatelessWidget {
  final int id;

  const ScheduleVideoScreen({
    super.key,
    required this.id,
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
              return (vmSchedule.pickedCameraVideo == "" &&
                      vmSchedule.pickedGalleryVideo == "")
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
                        vmSchedule.pickedCameraVideo != ""
                            ? SizedBox(
                                width: 260.w,
                                child: ListView.builder(
                                  itemCount:
                                      vmSchedule.pickedCameraVideoList.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.all(8.0.h),
                                      child: VideoPlayerWidget(
                                        videoFile: File(vmSchedule
                                            .pickedCameraVideoList[index]),
                                        height: 160.h, // Specify the height
                                      ),
                                    );
                                  },
                                ),
                              )
                            : SizedBox(
                                width: 260.w,
                                child: ListView.builder(
                                  itemCount:
                                      vmSchedule.pickedGalleryVideoList?.length,
                                  physics: const NeverScrollableScrollPhysics(),
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: EdgeInsets.all(8.0.h),
                                      child: VideoPlayerWidget(
                                        videoFile: File(
                                            vmSchedule.pickedGalleryVideoList?[
                                                    index] ??
                                                ""),
                                        height: 160.h,
                                      ),
                                    );
                                  },
                                ),
                              ),
                        ElevatedButton(
                            onPressed: () {
                              vmSchedule.pickedCameraVideo != ""
                                  ? openCamera(context)
                                  : openGallery(context);
                            },
                            child: const Icon(Icons.add)),
                        Observer(builder: (context) {
                          return CmButton(
                            text: "Submit",
                            color: Colors.black,
                            width: 140.w,
                            loading: vmSchedule.shedulecardResponse.loading,
                            fontSize: 10.sp,
                            onPressed: () {
                              vmSchedule.addVideoScheduleApi(
                                context: context,
                                id: id,
                                pickedFiles: (vmSchedule
                                        .pickedCameraVideoList.isNotEmpty)
                                    ? vmSchedule.pickedCameraVideoList
                                    : vmSchedule.pickedGalleryVideoList ?? [],
                              );
                            },
                          );
                        }),
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
        await ImagePicker().pickVideo(source: ImageSource.camera);
    if (pickedFile != null) {
      vmSchedule.pickedCameraVideo = pickedFile.path;
      vmSchedule.pickedCameraVideoList.add(vmSchedule.pickedCameraVideo!);
    }
  }

  Future<void> openGallery(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickVideo(source: ImageSource.gallery);
    if (pickedFile != null) {
      vmSchedule.pickedGalleryVideo = pickedFile.path;
      vmSchedule.pickedGalleryVideoList?.add(vmSchedule.pickedGalleryVideo!);
    }
  }
}
