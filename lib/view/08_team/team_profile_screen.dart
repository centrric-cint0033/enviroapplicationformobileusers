import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/approutes.gr.dart';
import 'package:enviro_mobile_application/model/00_common_model/folder_model/folder_model.dart';
import 'package:enviro_mobile_application/model/10_team/team_profile_employee_details_res_model/team_profile_employee_details_res_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_button.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/dp_image_widget.dart';
import 'package:enviro_mobile_application/view_model/08_team/team_view_model.dart';
import 'package:enviro_mobile_application/view_model/10_profile/profile_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_show_delete_dialoque.dart';
import 'package:enviro_mobile_application/widgets/cm_title.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/ww_customLoading.dart';
import 'package:enviro_mobile_application/widgets/ww_folder_card.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

@RoutePage()
class TeamProfileScreen extends StatelessWidget {
  final num? id;
  const TeamProfileScreen({
    super.key,
    this.id,
  });
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        vmTeam.currentEmployeeSearchCntrlr.clear();
        vmTeam.terminatedEmployeeSearchCntrlr.clear();
        return true;
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: cmnTitleWidget('Team Profile'),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Observer(
              builder: (context) {
                final res = vmTeam.teamProfileEmployeeDetailListResponse;
                TeamProfileEmployeeDetailsResModel? employeeDetails = res.data;
                final ress = vmTeam.teamFoldersResponse;
                FolderListModel? folderList = ress.data;
                return res.loading
                    ? Center(child: wwCustomLoader())
                    : SingleChildScrollView(
                        child: Column(children: [
                          sized0hx10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              cmOutlineButton(
                                  text: "TimeSheet",
                                  onPressed: () {
                                    vmTeam.selectedChooseWeekTimesheet =
                                        getLastFriday(DateTime.now());
                                    vmTeam.getTimeSheetApi(
                                        date: DateFormat('yyyy-MM-dd').format(
                                            vmTeam
                                                .selectedChooseWeekTimesheet!),
                                        context: context);
                                    context.router.push(TimeSheetRoute());
                                  }),
                              cmOutlineButton(
                                  text: "Leave Application",
                                  onPressed: () {
                                    vmTeam.addFileLeave = "";
                                    context.router
                                        .push(LeaveApplicationRoute());
                                  }),
                            ],
                          ),
                          sized0hx10,
                          Container(
                            height: 82.h,
                            decoration: BoxDecoration(
                                color: Appthemes.cLightGrey,
                                borderRadius: BorderRadius.circular(12),
                                border:
                                    Border.all(color: Colors.grey.shade300)),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        SizedBox(
                                          height: 60.w,
                                          width: 60.w,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.grey.shade700,
                                                shape: BoxShape.circle),
                                            child: dpImage(
                                                employeeDetails?.dp ?? ""),
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment: vmProfile
                                                      .profilepageResponse
                                                      .data
                                                      ?.permissionType
                                                      ?.contains('driver') ??
                                                  false
                                              ? MainAxisAlignment.center
                                              : MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              employeeDetails?.userType ?? "",
                                              style: TextStyle(
                                                  color: Appthemes.cPrimary,
                                                  fontSize: 11.w),
                                            ),
                                            Text(
                                              employeeDetails?.name ?? "",
                                              style: TextStyle(fontSize: 11.w),
                                            ),
                                            if (vmProfile.profilepageResponse
                                                    .data?.permissionType
                                                    ?.contains('driver') ??
                                                false)
                                              sized0hx03
                                            else
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    height: 26.h,
                                                    width: 57.h,
                                                    child: customButton(() {
                                                      showDeleteDialoq(context,
                                                          () {
                                                        vmTeam.deleteEmployeeApi(
                                                            context: context,
                                                            employeeID:
                                                                employeeDetails
                                                                        ?.id ??
                                                                    0);
                                                        context.router.pop();
                                                      });
                                                    }, Appthemes.cPrimary,
                                                        "Delete"),
                                                  ),
                                                  sized0hx10,
                                                  SizedBox(
                                                    height: 26.h,
                                                    width: 57.h,
                                                    child: customButton(() {
                                                      vmTeam
                                                          .getTeamDesignationsApi();
                                                      addingDataToControllerEdit(
                                                          employeeDetails);
                                                      try {
                                                        vmTeam.selectedJoiningDate =
                                                            DateTime.parse(
                                                                employeeDetails
                                                                        ?.dateJoined ??
                                                                    "");
                                                      } catch (e) {}
                                                      try {
                                                        vmTeam.selectedTerminationDate =
                                                            DateTime.parse(
                                                                employeeDetails
                                                                        ?.terminationDate ??
                                                                    "");
                                                      } catch (e) {}
                                                      try {
                                                        vmTeam.selectedDob =
                                                            DateTime.parse(
                                                                employeeDetails
                                                                        ?.dateOfBirth ??
                                                                    "");
                                                      } catch (e) {}
                                                      vmTeam.selectedDesignationAddTeam2 =
                                                          employeeDetails
                                                              ?.userType;
                                                      context.router.push(
                                                          TeamEditRoute(
                                                              employeeDetatils:
                                                                  employeeDetails!));
                                                    }, Appthemes.cPrimary,
                                                        "Edit"),
                                                  ),
                                                ],
                                              )
                                          ],
                                        ),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                          sized0hx10,
                          listData(employeeDetails),
                          sized0hx10,
                          cmTitle('Employees Folder',
                              fontWeight: FontWeight.bold),
                          sized0hx10,
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Folders'),
                                ),
                                CmButton(
                                    text: 'Add folders+',
                                    onPressed: () {
                                      showCreateEditDialog(context,
                                          createEditTap: (v) {
                                        vmTeam.addTeamFolder(
                                            context: context,
                                            employee: employeeDetails?.id ?? 0,
                                            name: v,
                                            parentfolder: 1);
                                      });
                                    }),
                              ]),
                          sized0hx10,
                          WWTextField(
                            controller: vmTeam.folderSearchCntrlr,
                            onChanged: (v) => vmTeam.onTextChanged(() {
                              v.isEmpty
                                  ? vmTeam.getTeamFolders(
                                      id: id!, parentFolderId: 1)
                                  : vmTeam.folderSearchApi(
                                      v,
                                      1,
                                      vmTeam.searchType ?? "",
                                      employeeDetails!.id!);
                            }),
                            suffixTap: () {},
                            hintText: 'Search by Folder Name',
                          ),
                          sized0hx10,
                          folderList?.folders != null &&
                                  folderList!.folders!.isNotEmpty
                              ? ress.loading
                                  ? wwCustomLoader()
                                  : ListView.separated(
                                      physics:
                                          const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder:
                                          (BuildContext context, int index) =>
                                              sized0hx10,
                                      itemCount: folderList
                                              .folders?[0].folders?.length ??
                                          0,
                                      itemBuilder: (context, index) {
                                        var data = folderList
                                            .folders?[0].folders?[index];
                                        if (data != null) {
                                          return WWFolderCard(
                                              folder: data,
                                              onTap: () {
                                                vmTeam.folderNames.clear();
                                                vmTeam.getTeamFolders(
                                                    id: employeeDetails?.id ??
                                                        0,
                                                    parentFolderId:
                                                        data.id ?? 0,
                                                    fromTeamProfileScreen:
                                                        true);
                                                vmTeam.folderNames
                                                    .add("${data.name}");
                                                context.router.push(
                                                    EmployeeFilesRoute(
                                                        employeeId:
                                                            employeeDetails?.id,
                                                        folderName: data.name,
                                                        folderId: data.id,
                                                        searchType: data.type));
                                              },
                                              folderName: data.name,
                                              editTap: (s) =>
                                                  vmTeam.editTeamFolderApi(
                                                      name: s,
                                                      folderId: data.id ?? 0,
                                                      parentFolderId: 1,
                                                      context: context,
                                                      employeeID:
                                                          employeeDetails?.id ??
                                                              0),
                                              deleteTap: () =>
                                                  vmTeam.deleteTeamFolderApi(
                                                      folderId: data.id ?? 0,
                                                      context: context,
                                                      employeeID:
                                                          employeeDetails?.id ??
                                                              0,
                                                      parentFolderId: 1));
                                        } else {
                                          return Container();
                                        }
                                      },
                                    )
                              : Center(
                                  child: SvgPicture.asset(
                                    "assets/images/empty1.svg",
                                  ),
                                ),
                        ]),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }

  DateTime getLastFriday(DateTime date) {
    int daysToSubtract = (date.weekday + 1) % 7 + 1;
    if (date.weekday >= DateTime.friday) {
      daysToSubtract = date.weekday - DateTime.friday;
    } else {
      daysToSubtract = date.weekday + 2;
    }
    return date.subtract(Duration(days: daysToSubtract));
  }

  Widget listData(TeamProfileEmployeeDetailsResModel? data) {
    return buildCardDataOrder(
      [
        expandedRowShowText('Address', data?.address ?? ""),
        sized0hx05,
        expandedRowShowText('Date of Birth', data?.dateOfBirth ?? ""),
        sized0hx05,
        expandedRowShowText('Joining Date', data?.dateJoined ?? ""),
        sized0hx05,
        expandedRowShowText('Email Address', data?.email ?? ""),
        sized0hx05,
        expandedRowShowText('Contact Number', data?.contactNumber ?? ""),
        sized0hx05,
        expandedRowShowText(
            'Termination Date', '${data?.terminationDate ?? ""}'),
        sized0hx05,
        expandedRowShowText('Employment Status', data?.employementStatus ?? ""),
        sized0hx05,
        expandedRowShowText('Work Email Address', data?.email ?? ""),
        sized0hx05,
        expandedRowShowText(
            'Emergency Contact', data?.emergencyContactName ?? ""),
        sized0hx05,
        expandedRowShowText(
            'Emergency Contact No', data?.emergencyContact ?? ""),
      ],
    );
  }

  addingDataToControllerEdit(
      TeamProfileEmployeeDetailsResModel? employeeDetails) {
    vmTeam.textEditTeamNameController.text = employeeDetails?.name ?? "";
    vmTeam.textEditTeamAddressController.text = employeeDetails?.address ?? "";
    vmTeam.textEditTeamEmailController.text =
        employeeDetails?.personalEmail ?? "";
    vmTeam.textEditTeamContactNumberController.text =
        employeeDetails?.contactNumber ?? "";
    vmTeam.textEditTeamWorkEmailController.text = employeeDetails?.email ?? "";
    vmTeam.textEditTeamEmergencyContactController.text =
        employeeDetails?.emergencyContactName ?? "";
    vmTeam.textEditTeamEmergencyContactNumberController.text =
        employeeDetails?.emergencyContact ?? "";
  }

  Widget cmOutlineButton(
      {required String text, required void Function()? onPressed}) {
    return SizedBox(
      width: 130.w,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          side: MaterialStateProperty.all(
            const BorderSide(color: Appthemes.cPrimary, width: 1),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: 9.sp, color: Colors.black),
        ),
      ),
    );
  }
}
