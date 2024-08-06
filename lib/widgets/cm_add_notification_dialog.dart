import 'package:enviro_mobile_application/model/04_ohs/oh&s_resp_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_res_model/team_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
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
  final bool fromOhsEditNews;
  final String? title;
  final String? description;
  final String? member;
  final String? file;
  final int? newsId;
  const MyDialogNotification(
      {super.key,
      this.fromOhsNews = false,
      this.fromOhsEditNews = false,
      this.title,
      this.description,
      this.member,
      this.file,
      this.newsId});
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
    if (widget.fromOhsEditNews == true) {
      textFieldController1.text = widget.title ?? "";
      textFieldController2.text = widget.description ?? "";
      vmOhs.selectedFileNameNotification = widget.file ?? "";
      if (widget.member != null) {
        final memberName = widget.member;
        vmTeam.selectedMember = vmTeam.allEmployeeResponse.data?.firstWhere(
          (member) => member.name == memberName,
          orElse: () => TeamResModel(name: memberName),
        );
      }
      setState(() {});
    }
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
              sized0hx05,
              SizedBox(
                height: 100,
                child: WWTextField(
                  controller: textFieldController2,
                  hintText: 'Description',
                  keyboardType: TextInputType.multiline,
                  maxLines: null,
                ),
              ),
              sized0hx05,
              Container(
                height: 36.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.white,
                ),
                child: Center(child: MembersDownWidget()),
              ),
              sized0hx05,
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
            style: TextStyle(color: Colors.black, fontSize: 11.sp),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        Observer(builder: (context) {
          final res = widget.fromOhsEditNews == true
              ? vmOhs.editNewsResponse
              : widget.fromOhsNews == true
                  ? vmOhs.addNewsResponse
                  : vmOhs.addNotificationResponse;
          final isButtonEnabled = widget.fromOhsEditNews == true
              ? (textFieldController1.text.isNotEmpty &&
                  textFieldController2.text.isNotEmpty)
              : (textFieldController1.text.isNotEmpty &&
                  textFieldController2.text.isNotEmpty &&
                  vmTeam.selectedMember?.id != null &&
                  vmTeam.selectedFilePath != "");
          return TextButton(
            onPressed: isButtonEnabled
                ? () {
                    if (widget.fromOhsEditNews == true) {
                      vmOhs.ohsEditNewsApi(
                        context: context,
                        newsId: widget.newsId ?? 0,
                        data: OhsRespModel(
                          title: textFieldController1.text,
                          description: textFieldController2.text,
                          members: vmTeam.selectedMember?.id,
                          file_attachment: vmTeam.selectedFilePath,
                        ),
                      );
                    } else {
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
                  }
                : null,
            child: res.loading
                ? SizedBox(
                    height: 12.w,
                    width: 12.w,
                    child: const CircularProgressIndicator(
                      strokeWidth: 2,
                      color: Appthemes.cPrimary,
                    ))
                : Text(
                    'OK',
                    style: TextStyle(
                      color:
                          isButtonEnabled ? Colors.black : Colors.grey.shade400,
                      fontSize: 11.sp,
                    ),
                  ),
          );
        }),
      ],
    );
  }
}

Future<void> showMyDialogNotification(BuildContext context,
    {bool fromOhsNews = false,
    bool fromOhsEditNews = false,
    String? title,
    String? description,
    String? member,
    String? file,
    int? newsId}) async {
  showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return MyDialogNotification(
        fromOhsNews: fromOhsNews,
        fromOhsEditNews: fromOhsEditNews,
        title: title,
        description: description,
        member: member,
        file: file,
        newsId: newsId,
      );
    },
  );
}
