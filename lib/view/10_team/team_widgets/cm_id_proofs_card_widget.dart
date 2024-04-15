import 'dart:io';

import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:path_provider/path_provider.dart';

Widget cmIdProofCard(BuildContext context,Widget widget1,Widget widget2) {
  return Card(
    child: Padding(
      padding: EdgeInsets.all(8.h),
      child: Column(children: [
        cmRow(
            const Text(
              "License File",
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.h, right: 10.h),
              child: customButton(() async {
                FilePickerResult? result =
                    await FilePicker.platform.pickFiles();
                Directory documentsDirectory =
                    await getApplicationDocumentsDirectory();
                String documentPath = documentsDirectory.path;
              }, Colors.grey, "Select File"),
            )),
        cmRow(
          const Text("License Expiry"),
          widget1
        ),
        cmRow(
            const Text("License Alert"),
           widget2),
      ]),
    ),
  );
}

Widget cmRow(Widget widget1, Widget widget2) {
  return Row(
    children: [Expanded(child: widget1), Expanded(child: widget2)],
  );
}
