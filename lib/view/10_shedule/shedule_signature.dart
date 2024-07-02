// ignore_for_file: must_be_immutable, use_build_context_synchronously
import 'dart:io';
import 'dart:typed_data';
import 'package:auto_route/auto_route.dart';
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
import 'package:intl/intl.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';

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
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Observer(builder: (context) {
        return SingleChildScrollView(
            child: Padding(
                padding: screenWidth,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (vmSchedule.sheduleweekResponse.data?[i].jobCardKeys
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
                                Text(
                                  'Weigh bridge Required:',
                                  style: TextStyle(
                                      fontSize: 12.w,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    CmButton(
                                      width: 108.w,
                                      color: Colors.blue,
                                      onPressed: () async {
                                        vmSchedule.pickFilefromphone();
                                      },
                                      text: 'AddFile ',
                                    ),
                                    const SizedBox(width: 18),
                                    CmButton(
                                      width: 118.w,
                                      color: Colors.blue,
                                      onPressed: () async {
                                        vmSchedule
                                            .pickImageFromsignatureCamera();
                                      },
                                      text: 'Camera ',
                                    ),
                                  ],
                                ),
                                SingleChildScrollView(
                                  scrollDirection: Axis
                                      .horizontal, // Set scroll direction to horizontal
                                  child: vmSchedule.pickedFiles.isNotEmpty
                                      ? Row(
                                          children: vmSchedule.pickedFiles
                                              .map((file) {
                                            final icon = returnLogo(file.name,
                                                file.path, file.size);
                                            return SizedBox(
                                              height: 70.h,
                                              width: 140.h,
                                              child: Card(
                                                shape:
                                                    const RoundedRectangleBorder(),
                                                child: ListTile(
                                                  onLongPress: () {
                                                    showDialog(
                                                      context: context,
                                                      builder: (BuildContext
                                                          context) {
                                                        return AlertDialog(
                                                          title: const Text(
                                                              "Delete File"),
                                                          content: Text(
                                                              "Are you sure you want to delete ${file.name}?"),
                                                          actions: <Widget>[
                                                            TextButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: const Text(
                                                                  "Cancel"),
                                                            ),
                                                            TextButton(
                                                              onPressed: () {
                                                                vmSchedule
                                                                    .pickedFiles
                                                                    .remove(
                                                                        file);
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: const Text(
                                                                  "Delete"),
                                                            ),
                                                          ],
                                                        );
                                                      },
                                                    );
                                                  },
                                                  title: Text(
                                                    file.name,
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      fontSize: 9.w,
                                                    ),
                                                  ),
                                                  leading: icon,
                                                  subtitle: Text(
                                                    file.extension!,
                                                    style: TextStyle(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      fontSize: 9.w,
                                                    ),
                                                  ),
                                                  onTap: () {
                                                    OpenFile.open(
                                                      file.path,
                                                    );
                                                  },
                                                ),
                                              ),
                                            );
                                          }).toList(),
                                        )
                                      : Text(
                                          'No files selected',
                                          style: TextStyle(fontSize: 10.w),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      sized0hx10,
                      ExpansionTile(
                        title: Text(
                          'Job Details',
                          style: TextStyle(
                            fontSize: 12.w,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        tilePadding: EdgeInsets.only(left: 2.w, right: 2.w),
                        childrenPadding: EdgeInsets.only(left: 3.w, right: 2.w),
                        children: [
                          cmContainer(
                              title: "Type of waste:",
                              subtitle:
                                  "Any change in waste is mentioned here...",
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
                              onChanged: (value) {
                                vmSchedule.signNameController.text = value;
                              }),
                          sized0hx10,
                        ],
                      ),
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
                                    fontSize: 9.w, fontWeight: FontWeight.bold),
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
                                            fontSize: 9.w,
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
                                  CmButton(
                                    color: vmSchedule.signColor,
                                    onPressed: () async {
                                      Uint8List? pickedTypes = await vmSchedule
                                          .signaturecontroller
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
                          onPressed: () async {
                            vmSchedule.shedulesignatureviewmodelfunction(
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
                                pickedFiles: vmSchedule.pickedFiles);
                            if (vmSchedule.commentController.text != "") {
                              vmSchedule.shedulecommentviewmodelfunction(
                                  id: id,
                                  comment: vmSchedule.commentController.text);
                            }
                            vmSchedule.editScheduleStatusApi(
                                context: context,
                                statusType: ScheduleStatusType.completed,
                                date: DateFormat('yyyy-MM-dd HH:mm:ss')
                                    .format(DateTime.now()),
                                status: "completed",
                                id: id);
                            vmSchedule.updateSignatureButtonColor(state: true);
                          },
                          text: 'Submit',
                        ),
                      ),
                    ])));
      }),
    );
  }

  Widget cmContainer(
      {String? title, String? subtitle, void Function(String)? onChanged}) {
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
            Text(
              title ?? "",
              style: TextStyle(fontSize: 9.w, fontWeight: FontWeight.bold),
            ),
            TextField(
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: subtitle,
                border: InputBorder.none,
              ),
              style: TextStyle(fontSize: 9.w),
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
    print("File extension: $fileExtension");

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
}
