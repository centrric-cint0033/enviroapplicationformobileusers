import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class CameraGalleryScreen extends StatelessWidget {
  final Function onCameraSelected;
  final Function onGallerySelected;

  const CameraGalleryScreen(
      {required this.onCameraSelected, required this.onGallerySelected});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Center(
        child: Observer(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
              dpImage(vmSchedule.pickedCameraImage ??
                  vmSchedule.pickedGalleryImage ??
                  ""),
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
