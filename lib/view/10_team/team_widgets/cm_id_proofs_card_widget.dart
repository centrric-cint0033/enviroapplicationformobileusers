import 'dart:io';

import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view/10_team/team_widgets/cm_required_text.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget cmIdProofCard(
  BuildContext context,
  Widget widget1,
  Widget widget2,
) {
  return Card(
    child: Padding(
      padding: EdgeInsets.all(8.h),
      child: Column(children: [
        cmRow(Observer(
          builder: (context) {
            return Row(
              children: [
                const Text(
                  "License File",
                ),
                sized0wx05,
                vmTeam.showRequredTextLicense ? cmRequiredText() : const Text("")
              ],
            );
          },
        ),
            Observer(
              builder: (context) => Row(
                children: [
                  customButton(() async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();
                    if (result != null) {
                      String fileName = result.files.single.name;
                      vmTeam.selectedFileNameLicense = fileName;
                      PlatformFile file = result.files.single;
                      vmTeam.selectedFilePathLicense = file.path!;
                    }
                  }, Colors.grey, "Select File"),
                  Expanded(
                    child: Text(
                      "  ${vmTeam.selectedFileNameLicense ?? ""}",
                      style: const TextStyle(overflow: TextOverflow.ellipsis),
                    ),
                  )
                ],
              ),
            )),
        cmRow(Observer(
          builder: (context) {
            return Row(
              children: [
                const Text(
                  "License Expiry",
                ),
                sized0wx05,
                vmTeam.showRequredTextLicense ? cmRequiredText() : const Text("")
              ],
            );
          },
        ), widget1),
        cmRow(Observer(
          builder: (context) {
            return Row(
              children: [
                const Text(
                  "License Alert",
                ),
                sized0wx05,
                vmTeam.showRequredTextLicense ? cmRequiredText() : const Text("")
              ],
            );
          },
        ), widget2),
      ]),
    ),
  );
}

Widget cmRow(Widget widget1, Widget widget2) {
  return Row(
    children: [Expanded(child: widget1), Expanded(child: widget2)],
  );
}
