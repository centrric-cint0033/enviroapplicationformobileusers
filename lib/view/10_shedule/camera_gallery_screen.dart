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

@RoutePage()
class CameraGalleryScreen extends StatelessWidget {
  final bool fromJobStarted;
  final int id;

  const CameraGalleryScreen({
    super.key,
    this.fromJobStarted = false,
    required this.id,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
      ),
      body: Center(
        child: SingleChildScrollView(
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
                      vmSchedule.pickedCameraImage != null
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
                                    child: SizedBox(
                                      height: 160.h,
                                      width: 260.w,
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
                                    child: SizedBox(
                                      height: 160.h,
                                      width: 260.w,
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
                        fontSize: 10.w,
                        onPressed: () {
                          vmSchedule.addImageScheduleApi(
                              context: context,
                              id: id,
                              beforeOrAfterPic: true,
                              pickedFiles: vmSchedule.pickedCameraImageList ??
                                  vmSchedule.pickedGalleryImageList ??
                                  [],
                              picType: fromJobStarted == true
                                  ? BeforeOrAfterPic.beforePic
                                  : BeforeOrAfterPic.afterPic);
                        },
                      ),
                      sized0hx50,
                    ],
                  );
          }),
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
