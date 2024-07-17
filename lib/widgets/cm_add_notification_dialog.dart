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

class MyDialogNotification extends StatefulWidget {
  final bool fromOhsNews;

  const MyDialogNotification({super.key, this.fromOhsNews = false});
  @override
  _MyDialogNotificationState createState() => _MyDialogNotificationState();
}

class _MyDialogNotificationState extends State<MyDialogNotification> {
  final TextEditingController textFieldController1 = TextEditingController();
  final TextEditingController textFieldController2 = TextEditingController();

  @override
  void initState() {
    super.initState();
    textFieldController1.addListener(_updateState);
    textFieldController2.addListener(_updateState);
  }

  void _updateState() {
    setState(() {});
  }

  @override
  void dispose() {
    textFieldController1.removeListener(_updateState);
    textFieldController2.removeListener(_updateState);
    textFieldController1.dispose();
    textFieldController2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      content: SingleChildScrollView(
        child: Observer(builder: (context) {
          return Column(
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
                child: Center(child: MembersDownWidget()),
              ),
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
                    width: double.infinity,
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
          );
        }),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(
            'Cancel',
            style: TextStyle(color: Colors.black, fontSize: 12.w),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        Observer(builder: (context) {
          final res = widget.fromOhsNews == true
              ? vmOhs.addNewsResponse
              : vmOhs.addNotificationResponse;
          final isButtonEnabled = textFieldController1.text.isNotEmpty &&
              textFieldController2.text.isNotEmpty &&
              vmTeam.selectedMember?.id != null &&
              vmTeam.selectedFilePath != "";
          return TextButton(
            onPressed: isButtonEnabled
                ? () {
                    widget.fromOhsNews == true
                        ? vmOhs.ohsAddNewsApi(
                            context: context,
                            data: OhsRespModel(
                              title: textFieldController1.text,
                              description: textFieldController2.text,
                              members: vmTeam.selectedMember?.id,
                              file_attachment: vmTeam.selectedFilePath,
                            ),
                          )
                        : vmOhs.ohsAddNotificationApi(
                            context: context,
                            data: OhsRespModel(
                              title: textFieldController1.text,
                              description: textFieldController2.text,
                              members: vmTeam.selectedMember?.id,
                              file_attachment: vmTeam.selectedFilePath,
                            ),
                          );
                  }
                : null,
            child: res.loading
                ? const CupertinoActivityIndicator()
                : Text(
                    'OK',
                    style: TextStyle(
                      color:
                          isButtonEnabled ? Colors.black : Colors.grey.shade400,
                      fontSize: 12.w,
                    ),
                  ),
          );
        }),
      ],
    );
  }
}

Future<void> showMyDialogNotification(BuildContext context,
    {bool fromOhsNews = false}) async {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return MyDialogNotification(
        fromOhsNews: fromOhsNews,
      );
    },
  );
}
