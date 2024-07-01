// ignore_for_file: must_be_immutable
import 'dart:io';
import 'dart:typed_data';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/widgets/schedule_comment_section.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:signature/signature.dart';

@RoutePage()
class SheduleSignaturePage extends StatelessWidget {
  SheduleSignaturePage({
    required this.i,
    this.picker,
    this.pickedtypes,
    required this.id,
    super.key,
  });
  Uint8List? picker;

  final TextEditingController _controllerTypeofwaste = TextEditingController();
  final TextEditingController _signNameController = TextEditingController();
  final TextEditingController _controllerPonumber = TextEditingController();
  final TextEditingController _controllerWateliters = TextEditingController();
  final SignatureController _signaturecontroller = SignatureController(
    penStrokeWidth: 5,
    penColor: Colors.black,
    exportBackgroundColor: Colors.white,
    onDrawEnd: () {
      vmSchedule.updateSignatureButtonColor(state: true);
    },
  );
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
                                      vmSchedule.pickImageFromsignatureCamera();
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
                                        children:
                                            vmSchedule.pickedFiles.map((file) {
                                          final icon = returnLogo(
                                              file.name, file.path, file.size);
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
                                                    builder:
                                                        (BuildContext context) {
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
                                                                  .remove(file);
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
                                _controllerTypeofwaste.text = value;
                              }),
                          sized0hx05,
                          cmContainer(
                              title: "waste Liters:",
                              subtitle:
                                  "Any change in amount of litres collected,mention here...",
                              onChanged: (value) {
                                _controllerWateliters.text = value;
                              }),
                          sized0hx05,
                          cmContainer(
                              title: "Po Number:",
                              subtitle: "Purchase order number...",
                              onChanged: (value) {
                                _controllerPonumber.text = value;
                              }),
                          sized0hx05,
                          cmContainer(
                              title: "SignName:",
                              subtitle: "Sign name...",
                              onChanged: (value) {
                                _signNameController.text = value;
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
                                    controller: _signaturecontroller,
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
                                      Uint8List? pickedTypes =
                                          await _signaturecontroller
                                              .toPngBytes();
                                      if (pickedTypes != null) {
                                        final tempDir =
                                            await getTemporaryDirectory();
                                        File file = await File(
                                                '${tempDir.path}/${DateTime.now()}.png')
                                            .create();
                                        await file.writeAsBytes(pickedTypes);
                                        picker = pickedTypes;
                                      } else {
                                        print('No signature to save.');
                                      }
                                      // ignore: use_build_context_synchronously
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            shape: BeveledRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3.w),
                                              side: const BorderSide(
                                                  color: Colors.black),
                                            ),
                                            content: Text(
                                              'Uploading your signature',
                                              style: TextStyle(
                                                  fontSize: 12.w,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            actions: <Widget>[
                                              Observer(builder: (_) {
                                                return TextButton(
                                                  onPressed: () {
                                                    Navigator.of(context).pop();
                                                  },
                                                  child: const Text('OK'),
                                                );
                                              }),
                                            ],
                                          );
                                        },
                                      );
                                    },
                                    borderRadius: 3.w,
                                    textcolor: vmSchedule.textColor,
                                    text: 'Save',
                                  ),
                                  sized0wx10,
                                  CmButton(
                                    color: vmSchedule.signColor,
                                    onPressed: () async {
                                      _signaturecontroller.clear();
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
                          onPressed: () {
                            vmSchedule.shedulesignatureviewmodelfunction(
                                image: picker!,
                                extractedWasteType: _controllerTypeofwaste.text,
                                extractedLitres: _controllerWateliters.text,
                                purchaseOderNo: _controllerPonumber.text,
                                signatureName: _signNameController.text,
                                id: id,
                                pickedFiles: vmSchedule.pickedFiles);
                            vmSchedule.shedulecommentviewmodelfunction(
                                id: id,
                                comment: vmSchedule.commentController.text);
                            vmSchedule.updateSignatureButtonColor(state: true);
                            _signaturecontroller.clear();
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
