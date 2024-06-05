import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/view/04_ohs/ohs_widget/01_ohs_widgets.dart';
import 'package:enviro_mobile_application/view_model/04_ohs/ohs_view_model.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/members_drop_down_widget.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> showMyDialognotification(BuildContext context) async {
  TextEditingController textFieldController1 = TextEditingController();
  TextEditingController textFieldController2 = TextEditingController();
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              WWTextField(
                controller: textFieldController1,
                hintText: 'Title',
              ),
              gapFieldOhs,
              SizedBox(
                height: 100,
                child: WWTextField(
                  controller: textFieldController2,
                  hintText: 'Description',
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
              gapFieldOhs,
              Container(
                  height: 36.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.white,
                  ),
                  child: Center(child: MembersDownWidget())),
              gapFieldOhs,
              Observer(builder: (context) {
                return InkWell(
                  onTap: () async {
                    FilePickerResult? result =
                        await FilePicker.platform.pickFiles();
                    if (result != null) {
                      String fileName = result.files.single.name;
                      vmOhs.selectedFileNameNotification = fileName;
                      PlatformFile file = result.files.single;
                      vmTeam.selectedFilePath = file.path!;
                    }
                  },
                  child: Container(
                    height: 36.w,
                    width: 194.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.white,
                    ),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5.w),
                        child: Text(
                            vmOhs.selectedFileNameNotification ?? "Add File+"),
                      ),
                    ),
                  ),
                );
              }),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Cancel',
              style: TextStyle(color: Colors.black),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          Observer(builder: (context) {
            final res = vmOhs.addNotificationResponse;
            return TextButton(
              child: res.loading
                  ? const CupertinoActivityIndicator()
                  : const Text(
                      'OK',
                      style: TextStyle(color: Colors.black),
                    ),
              onPressed: () {
                vmOhs.ohsAddNotificationApi(
                    context: context,
                    data: OhsRespModel(
                        title: textFieldController1.text,
                        description: textFieldController2.text,
                        members: vmTeam.selectedMember?.id,
                        file_attachment: vmOhs.selectedFileNameNotification));
              },
            );
          }),
        ],
      );
    },
  );
}
