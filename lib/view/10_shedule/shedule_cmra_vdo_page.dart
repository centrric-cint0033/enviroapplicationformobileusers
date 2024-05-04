import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class ScheduleVideoAndPhotoPage extends StatefulWidget {
  const ScheduleVideoAndPhotoPage({Key? key}) : super(key: key);

  @override
  _ScheduleVideoAndPhotoPageState createState() =>
      _ScheduleVideoAndPhotoPageState();
}

class _ScheduleVideoAndPhotoPageState extends State<ScheduleVideoAndPhotoPage> {
  final ImagePicker _imagePicker = ImagePicker();
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 219,
              child: Row(
                children: [
                  Expanded(
                    child: Observer(builder: (_) {
                      return CmButton(
                        borderRadius: 0,
                        color: const Color.fromARGB(255, 0, 8, 14),
                        buttonTextStyle: const TextStyle(color: Colors.white),
                        onPressed: () {
                          pickImageFromGallery();
                        },
                        text: "Upload from Gallery",
                      );
                    }),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 219,
              child: Row(
                children: [
                  Expanded(
                    child: Observer(builder: (_) {
                      return CmButton(
                        borderRadius: 0,
                        color: const Color.fromARGB(255, 0, 8, 14),
                        buttonTextStyle: const TextStyle(color: Colors.white),
                        onPressed: () {
                          pickImageFromCamera();
                        },
                        text: "Upload from Camera",
                      );
                    }),
                  ),
                ],
              ),
            ),
            selectedImage != null
                ? Container(child: Image.file(selectedImage!))
                : const Text('No image selected'),
          ],
        ),
      ),
    );
  }

  Future<void> pickImageFromGallery() async {
    final pickedFile =
        await _imagePicker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });
    }
  }

  Future<void> pickImageFromCamera() async {
    final pickedFile = await _imagePicker.pickImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        selectedImage = File(pickedFile.path);
      });
    }
  }
}
