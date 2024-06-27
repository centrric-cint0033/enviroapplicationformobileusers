import 'dart:developer';
import 'dart:io';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/image_picker_service/image_file_picker.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class CameraGalleryScreen extends StatelessWidget {
  final bool fromJobStarted;
  final bool fromJobFinished;
  final int id;

  const CameraGalleryScreen({
    super.key,
    this.fromJobStarted = false,
    this.fromJobFinished = false,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
      ),
      body: Center(
        child: Observer(builder: (context) {
          return (vmSchedule.pickedCameraImage == null &&
                  vmSchedule.pickedGalleryImage == null)
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
                    Container(
                      height: 160.h,
                      width: 260.w,
                      child: ClipRect(
                        child: Image.file(
                            File(vmSchedule.pickedCameraImage ??
                                vmSchedule.pickedGalleryImage ??
                                ""),
                            fit: BoxFit.fitWidth),
                      ),
                    ),
                    CmButton(
                      text: "Submit",
                      color: Colors.black,
                      width: 140.w,
                      fontSize: 10.w,
                      onPressed: () {
                        vmSchedule.addImageScheduleApi(
                            context: context,
                            id: id,
                            beforeOrAfterPic: true,
                            pickedFiles: vmSchedule.pickedCameraImage ?? "",
                            picType: fromJobStarted == true
                                ? BeforeOrAfterPic.beforePic
                                : BeforeOrAfterPic.afterPic);
                      },
                    )
                  ],
                );
        }),
      ),
    );
  }

  Future<void> openCamera(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      vmSchedule.pickedCameraImage = pickedFile.path;

      log(vmSchedule.pickedCameraImage.toString());
    }
  }

  Future<void> openGallery(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      vmSchedule.pickedGalleryImage = pickedFile.path;
    }
  }
}
