import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_picker/image_picker.dart';

@RoutePage()
class ScheduleVideoAndPhotoPage extends StatelessWidget {
  ScheduleVideoAndPhotoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        drawer: CmnDrawer(context),
        appBar: AppBar(
          title: cmnTitleWidget('Scheduling'),
          actions: [notificationButton(context)],
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 219,
                  child: Align(
                    alignment: Alignment.center,
                    child: Observer(builder: (_) {
                      return CmButton(
                        borderRadius: 0,
                        color: const Color.fromARGB(255, 0, 8, 14),
                        buttonTextStyle: const TextStyle(color: Colors.white),
                        onPressed: () {
                          vmJobcard.pickImageFromGallery();
                        },
                        text: "Upload from Gallery",
                      );
                    }),
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 219,
                  child: Align(
                    alignment: Alignment.center,
                    child: Observer(builder: (_) {
                      return CmButton(
                        borderRadius: 0,
                        color: const Color.fromARGB(255, 0, 8, 14),
                        buttonTextStyle: const TextStyle(color: Colors.white),
                        onPressed: () {
                          vmJobcard.pickImageFromCamera();
                        },
                        text: "Upload from Camera",
                      );
                    }),
                  ),
                ),
                if (vmJobcard.isImageSelected) // Check if image is selected
                  ElevatedButton(
                    onPressed: () {
                      // Action when button is pressed
                    },
                    child: Text('Your Button Text'),
                  ),
                Observer(builder: (_) {
                  return vmJobcard.selectedcameraImage != null
                      ? SizedBox(
                          height: 100,
                          width: 400,
                          child: Image.file(vmJobcard.selectedcameraImage!))
                      : const Text('No image selected');
                }),
                Observer(builder: (_) {
                  return vmJobcard.selectedImage != null
                      ? SizedBox(
                          height: 100,
                          width: 400,
                          child: Image.file(vmJobcard.selectedImage!))
                      : const Text('No image selected');
                }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
