// ignore_for_file: must_be_immutable, use_build_context_synchronously
import 'dart:io';
import 'dart:typed_data';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:open_file/open_file.dart';
import 'package:enviro_mobile_application/service/07_shedule/job_card/shedule_page_service.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/schedule_comment_section.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';
import 'package:path/path.dart' as p;

@RoutePage()
class SheduleSignaturePage extends StatelessWidget {
  SheduleSignaturePage({
    required this.i,
    this.pickedtypes,
    required this.id,
    super.key,
  });

  final int i;

  Uint8List? pickedtypes;
  final int id;
  List? pickedFiles;

  @override
  Widget build(BuildContext context) {
    vmSchedule.updateSignatureButtonColor(state: false);
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Observer(builder: (context) {
        return SingleChildScrollView(
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Padding(
                padding: screenWidth,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (vmSchedule.shedulecardResponse.data?[i].jobCardKeys
                              ?.weighBridgeRequired ==
                          "true")
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: Colors.black12),
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h, right: 8.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                sized0hx10,
                                Text(
                                  'Weigh bridge Required:',
                                  style: TextStyle(
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                                sized0hx05,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CmButton(
                                      height: 25.h,
                                      width: 95.w,
                                      color: Colors.black,
                                      onPressed: () async {
                                        showShowMediaDialog(context: context);
                                        // context.router
                                        //     .push(WeighBridgeMediaRoute(id: id));
                                      },
                                      text: 'Add Media',
                                    ),
                                  ],
                                ),
                                sized0hx10,
                                if (vmSchedule
                                        .pickedWeighImageList?.isNotEmpty ??
                                    true) ...[
                                  SizedBox(
                                    height: 70.h,
                                    width: double.infinity,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: vmSchedule
                                          .pickedWeighImageList?.length,
                                      itemBuilder: (context, index) {
                                        String imagePath = vmSchedule
                                            .pickedWeighImageList![index];
                                        String fileName = p.basename(imagePath);
                                        bool isImage =
                                            imagePath.endsWith('.jpg') ||
                                                imagePath.endsWith('.jpeg') ||
                                                imagePath.endsWith('.png');
                                        return Padding(
                                          padding: EdgeInsets.all(4.w),
                                          child: InkWell(
                                            onTap: () async {
                                              OpenFile.open(
                                                imagePath,
                                              );
                                            },
                                            onLongPress: () {
                                              showConfirmationAlert(
                                                  context: context,
                                                  onSubmit: () {
                                                    vmSchedule
                                                        .pickedWeighImageList
                                                        ?.removeAt(index);
                                                  },
                                                  content:
                                                      "Are you sure you want to delete?",
                                                  submitText: "Yes",
                                                  submitText2: "No");
                                            },
                                            child: Container(
                                              width: 80.h, // Width of each item
                                              foregroundDecoration:
                                                  BoxDecoration(
                                                      border: Border.all()),
                                              child: Column(
                                                children: [
                                                  sized0hx05,
                                                  Expanded(
                                                    child: isImage
                                                        ? Image.file(
                                                            File(imagePath),
                                                            fit: BoxFit.cover,
                                                          )
                                                        : Icon(
                                                            Icons.file_copy,
                                                            size: 20.w,
                                                            color: Colors.red,
                                                          ),
                                                  ),
                                                  Expanded(
                                                      child: Text(
                                                    fileName,
                                                    style: TextStyle(
                                                        fontSize: 9.sp,
                                                        overflow: TextOverflow
                                                            .ellipsis),
                                                  ))
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ],
                            ),
                          ),
                        ),
                      sized0hx10,
                      cmContainer(
                          title: "Type of waste:",
                          subtitle: "Any change in waste is mentioned here...",
                          onChanged: (value) {
                            vmSchedule.controllerTypeofwaste.text = value;
                          }),
                      sized0hx05,
                      cmContainer(
                          title: "waste Liters:",
                          subtitle:
                              "Any change in amount of litres collected,mention here...",
                          onChanged: (value) {
                            vmSchedule.controllerWateliters.text = value;
                          }),
                      sized0hx05,
                      cmContainer(
                          title: "Po Number:",
                          subtitle: "Purchase order number...",
                          onChanged: (value) {
                            vmSchedule.controllerPonumber.text = value;
                          }),
                      sized0hx05,
                      cmContainer(
                          title: "SignName:",
                          subtitle: "Sign name...",
                          required: true,
                          onChanged: (value) {
                            vmSchedule.signNameController.text = value;
                          }),
                      sized0hx10,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow.shade700,
                          border: Border.all(color: Colors.yellow),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Changes in waste type and its litres will be uploaded with client\'s signature.',
                                style: TextStyle(
                                    fontSize: 9.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                      sized0hx10,
                      Container(
                        width: double.infinity - 30.h,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: double.infinity - 30.h,
                                  height: 25.h,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200),
                                  child: Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.only(left: 5.w),
                                      child: Text(
                                        'Please provide your signature:',
                                        style: TextStyle(
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 175.w,
                                  child: Signature(
                                    controller: vmSchedule.signaturecontroller,
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                sized0hx10
                              ],
                            ),
                            Positioned(
                              bottom: 5.w,
                              right: 28.w,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (vmSchedule.signaturePath == null
                                      //  &&
                                      //     vmSchedule.signaturecontroller.isNotEmpty
                                      )
                                    CmButton(
                                      color: vmSchedule.signColor,
                                      onPressed: () async {
                                        Uint8List? pickedTypes =
                                            await vmSchedule.signaturecontroller
                                                .toPngBytes();
                                        if (pickedTypes != null) {
                                          final tempDir =
                                              await getTemporaryDirectory();
                                          final filePath =
                                              '${tempDir.path}/${DateTime.now()}.png';
                                          File file =
                                              await File(filePath).create();
                                          await file.writeAsBytes(pickedTypes);
                                          vmSchedule.setSignaturePicker(
                                              pickedTypes, filePath);
                                        } else {}

                                        if (vmSchedule.signaturePath != null) {
                                          showToast(context,
                                              msg: "Saved your signature",
                                              color: Colors.green);
                                        } else {
                                          showToast(context,
                                              msg: "No signature to save",
                                              color: Colors.red);
                                        }
                                      },
                                      borderRadius: 3.w,
                                      textcolor: vmSchedule.textColor,
                                      text: 'Save',
                                    ),
                                  sized0wx10,
                                  CmButton(
                                    color: vmSchedule.signColor,
                                    onPressed: () async {
                                      vmSchedule.signaturePath = null;
                                      vmSchedule.signaturecontroller.clear();
                                      vmSchedule.updateSignatureButtonColor(
                                          state: false);
                                    },
                                    borderRadius: 3.w,
                                    textcolor: vmSchedule.textColor,
                                    text: 'Reset',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      sized0hx20,
                      ScheduleCommentSection(id: id, i: i),
                      Center(
                        child: CmButton(
                          width: 150.w,
                          color: vmSchedule.signColor,
                          loading: vmSchedule.signatureResponse.loading,
                          indicatorColor: Colors.white,
                          onPressed: () async {
                            if (vmSchedule.signaturePath == null &&
                                vmSchedule.signaturecontroller.isNotEmpty) {
                              showToast(context,
                                  msg: "Please save signature before submit",
                                  color: Color.fromARGB(255, 133, 121, 120));
                            } else if (vmSchedule.signNameController.text ==
                                "") {
                              showToast(context,
                                  msg: "Sign name is required",
                                  color: Colors.red);
                            } else if (vmSchedule.signaturePath != null &&
                                vmSchedule.signaturecontroller.isNotEmpty) {
                              if (vmSchedule.commentController.text != "") {
                                vmSchedule.shedulecommentviewmodelfunction(
                                    context: context,
                                    id: id,
                                    comment: vmSchedule.commentController.text);
                              }
                              await vmSchedule
                                  .shedulesignatureviewmodelfunction(
                                      context: context,
                                      image: vmSchedule.signaturePath ?? "",
                                      extractedWasteType:
                                          vmSchedule.controllerTypeofwaste.text,
                                      extractedLitres:
                                          vmSchedule.controllerWateliters.text,
                                      purchaseOderNo:
                                          vmSchedule.controllerPonumber.text,
                                      signatureName:
                                          vmSchedule.signNameController.text,
                                      id: id,
                                      pickedFiles: vmSchedule
                                              .pickedWeighImageList
                                              ?.toList() ??
                                          []);
                              vmSchedule.editScheduleStatusApi(
                                  context: context,
                                  statusType: ScheduleStatusType.completed,
                                  date: DateFormat('yyyy-MM-dd HH:mm:ss')
                                      .format(DateTime.now()),
                                  status: "completed",
                                  id: id);
                              if (vmSchedule.signaturecontroller.isNotEmpty) {
                                vmSchedule.updateSignatureButtonColor(
                                    state: true);
                              }
                            }
                          },
                          text: 'Submit',
                        ),
                      ),
                      sized0hx10
                    ])));
      }),
    );
  }

  Future<void> openCamera(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      vmSchedule.pickedWeighCameraImage = pickedFile.path;
      vmSchedule.pickedWeighImageList?.add(vmSchedule.pickedWeighCameraImage!);
    }
  }

  Future<void> openGallery(BuildContext context) async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      vmSchedule.pickedWeighGalleryImage = pickedFile.path;
      vmSchedule.pickedWeighImageList?.add(vmSchedule.pickedWeighGalleryImage!);
    }
  }

  Widget cmContainer(
      {String? title,
      String? subtitle,
      void Function(String)? onChanged,
      bool? required = false}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 189, 245, 191),
        border: Border.all(color: Colors.black12),
        borderRadius: BorderRadius.circular(5.w),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  title ?? "",
                  style: TextStyle(fontSize: 9.sp, fontWeight: FontWeight.bold),
                ),
                if (required == true)
                  Text(
                    "*",
                    style: TextStyle(color: Colors.red, fontSize: 11.sp),
                  )
              ],
            ),
            TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                  hintText: subtitle,
                  border: InputBorder.none,
                  hintStyle:
                      TextStyle(color: Colors.grey.shade500, fontSize: 8.sp)),
              style: TextStyle(fontSize: 9.sp),
            ),
          ],
        ),
      ),
    );
  }

  returnLogo(String filePath, dynamic image, int? filesize) {
    List<String>? parts = filePath.split('.');
    // if (parts.length < 2) {
    //   return const Icon(
    //     Icons.error_outline,
    //     color: Colors.red,
    //   );
    // }

    String? fileExtension = parts.last.toLowerCase();

    switch (fileExtension) {
      case 'jpg':
        if (vmSchedule.pickedFiles.isNotEmpty) {
          return SizedBox(
            height: 60,
            width: 40,
            child: Image.file(File(image)),
          );
        } else {
          return const Text("Image file is null");
        }
      case 'jpeg':
        if (vmSchedule.pickedFiles.isNotEmpty) {
          return SizedBox(
            height: 60,
            width: 40,
            child: Image.file(File(image)),
          );
        } else {
          return const Text("Image file is null");
        }
      case 'png':
        if (vmSchedule.pickedFiles.isNotEmpty) {
          return SizedBox(
            height: 60,
            width: 40,
            child: Image.file(File(image)),
          );
        } else {
          return const Text("Image file is null");
        }
      case 'gif':
        if (vmSchedule.pickedFiles.isNotEmpty) {
          return SizedBox(
            height: 60,
            width: 40,
            child: Image.file(File(image)),
          );
        } else {
          return const Text("Image file is null");
        }

      case 'pdf':
        return const Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
        );
      case 'PDF':
        return const Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
        );
      case 'doc':
        return const Icon(
          Icons.insert_drive_file,
          color: Colors.black12,
        );
      case 'mp4':
        return const Icon(
          Icons.video_collection,
          color: Colors.blue,
        );
      case 'mov':
        return const Icon(
          Icons.video_file,
          color: Colors.red,
        );
      case 'avi':
        return const Icon(
          Icons.video_file,
          color: Colors.red,
        );
      case 'mkv':
        return const Icon(
          Icons.video_file,
          color: Colors.red,
        );
      default:
        return const Icon(
          Icons.error_outline,
          color: Colors.red,
        );
    }
  }

  void showShowMediaDialog({
    required BuildContext context,
  }) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CmButton(
                text: "Camera",
                width: 120.w,
                color: Colors.black,
                onPressed: () {
                  openCamera(context);
                  context.router.pop();
                },
              ),
              CmButton(
                text: "Gallery",
                width: 120.w,
                color: Colors.black,
                onPressed: () {
                  openGallery(context);
                  context.router.pop();
                },
              ),
              CmButton(
                text: "Files",
                width: 120.w,
                color: Colors.black,
                onPressed: () {
                  vmSchedule.pickFilefromphone();
                  context.router.pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
