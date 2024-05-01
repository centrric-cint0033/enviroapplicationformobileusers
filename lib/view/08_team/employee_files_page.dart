import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class EmployeeFilesPage extends StatelessWidget {
  const EmployeeFilesPage({super.key, this.employeeId});
  final num? employeeId;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Empolyee Files'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: SingleChildScrollView(
          child: Column(children: [
            sized0hx20,
            Row(
              children: [
                Expanded(
                  child: WWTextField(
                    controller: vmTeam.currentEmployeeSearchCntrlr,
                    onChanged: (v) => vmTeam.onTextChanged(() => v.isEmpty
                        ? vmTeam.getCurrentEmployee()
                        : vmTeam.currentEmployeeSearchApi(v)),
                    suffixTap: () {},
                    hintText: 'Search Employee',
                  ),
                ),
                sized0wx10,
                customButton(() {
                  showCreateEditDialog(context, createEditTap: (v) {
                    vmTeam.addTeamFolder(
                        context: context,
                        employee: employeeId ?? 0,
                        name: v,
                        parentfolder: 1);
                  });
                }, Appthemes.cPrimary, "Folder +"),
                sized0wx10,
                customButton(() async {
                  FilePickerResult? result =  
                      await FilePicker.platform.pickFiles();
                  // if (result != null) {
                  //   String fileName = result.files.single.name;
                  //   vmTeam.selectedFileNameLicense = fileName;
                  //   PlatformFile file = result.files.single;
                  //   vmTeam.selectedFilePathLicense = file.path!;
                  // }
                }, Appthemes.cPrimary, "Files +")
              ],
            )
          ]),
        ),
      ),
    );
  }
}
