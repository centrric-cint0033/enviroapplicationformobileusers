import 'dart:io';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class JobCardPage extends StatelessWidget {
  const JobCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Observer(
        builder: (context) {
          return vmSchedule.jobcardResponse.loading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sized0hx10,
                      _buildSectionHeader('Site Details'),
                      Padding(
                        padding: screenWidth,
                        child: Column(
                          children: [
                            sized0hx10,
                            expandedRowShowsText(
                                "Site Name",
                                vmSchedule.jobcardResponse.data?.siteName ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Type of Waste(Site Profile)",
                                vmSchedule
                                        .jobcardResponse.data?.typeOfWasteStr ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Site Address",
                                vmSchedule.jobcardResponse.data?.siteAddress ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Site Postcode",
                                vmSchedule.jobcardResponse.data?.sitePostCode ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Site Contact Name",
                                vmSchedule.jobcardResponse.data
                                        ?.siteContactPerson ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Site Contact Phone",
                                vmSchedule.jobcardResponse.data
                                        ?.siteContactPhone ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Site Contact Mob",
                                vmSchedule
                                        .jobcardResponse.data?.siteContactMob ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Site Contact Email",
                                vmSchedule.jobcardResponse.data
                                        ?.siteContactEmail ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText("Price",
                                vmSchedule.jobcardResponse.data?.price ?? ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Account Status",
                                vmSchedule
                                        .jobcardResponse.data?.accountStatus ??
                                    ''),
                            sized0hx10,
                            // const Text(
                            //   "This is NOT a recurring Quote",
                            //   style: TextStyle(
                            //     backgroundColor:
                            //         Color.fromARGB(31, 124, 122, 122),
                            //   ),
                            // ),
                            expandedRowShowsText(
                                "Frequency Week",
                                vmSchedule.jobcardResponse.data?.frequency ??
                                    ''),

                            sized0hx10,
                            expandedRowShowsText(
                                "Induction Type",
                                vmSchedule.jobcardResponse.data
                                        ?.typeOfInduction ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Sales Person",
                                vmSchedule.jobcardResponse.data
                                        ?.salesPersonName ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                              "Date",
                              DateFormat('dd-MM-yyyy').format(DateTime.parse(
                                  vmSchedule.jobcardResponse.data?.date ?? '')),
                            ),
                            sized0hx10,
                          ],
                        ),
                      ),
                      sized0hx10,
                      _buildSectionHeader('Additional Information'),
                      Padding(
                          padding: screenWidth,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (vmSchedule.jobcardResponse.data
                                      ?.accessRestriction !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText("Access Restrictions"),
                                sized0hx10,
                                _buildSectioncontainer(vmSchedule
                                        .jobcardResponse.data?.accessRestriction
                                        .toString() ??
                                    ''),
                              ],
                              sized0hx10,
                              if (vmSchedule.jobcardResponse.data
                                          ?.tcRequiredComment !=
                                      "" &&
                                  vmSchedule.jobcardResponse.data
                                          ?.tcRequiredComment !=
                                      null) ...[
                                _buildInfoText("TC required | comments"),
                                sized0hx10,
                                _buildSectioncontainer((vmSchedule
                                            .jobcardResponse
                                            .data
                                            ?.tcRequiredComment
                                            .toString() ??
                                        '')
                                    .toString()),
                              ],
                              if (vmSchedule
                                  .jobcardResponse
                                  .data!
                                  .jobcardinfoFiles!
                                  .tcRequiredMultipleFile!
                                  .isNotEmpty) ...[
                                if (vmSchedule.jobcardResponse.data
                                        ?.tcRequiredComment ==
                                    "") ...[
                                  sized0hx10,
                                  _buildInfoText("Access Restrictions")
                                ],
                                sized0hx05,
                                cmFileBuilder(vmSchedule
                                        .jobcardResponse
                                        .data!
                                        .jobcardinfoFiles!
                                        .tcRequiredMultipleFile ??
                                    []),
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.purchaseComment !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText("Purchaseorder | Comments"),
                                sized0hx10,
                                _buildSectioncontainer(vmSchedule
                                        .jobcardResponse.data?.purchaseComment
                                        .toString() ??
                                    ''),
                              ],
                              if (vmSchedule
                                  .jobcardResponse
                                  .data!
                                  .jobcardinfoFiles!
                                  .purchaseOrder!
                                  .isNotEmpty) ...[
                                if (vmSchedule.jobcardResponse.data
                                        ?.purchaseComment ==
                                    "") ...[
                                  sized0hx10,
                                  _buildInfoText("Purchaseorder | Comments")
                                ],
                                sized0hx05,
                                cmFileBuilder(vmSchedule.jobcardResponse.data!
                                        .jobcardinfoFiles!.purchaseOrder ??
                                    []),
                              ],
                              if (vmSchedule.jobcardResponse.data?.manifest !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText("Manifest | Comments"),
                                sized0hx10,
                                _buildSectioncontainer(vmSchedule
                                        .jobcardResponse.data?.manifest
                                        .toString() ??
                                    '')
                              ],
                              if (vmSchedule
                                  .jobcardResponse
                                  .data!
                                  .jobcardinfoFiles!
                                  .manifestMultipleFile!
                                  .isNotEmpty) ...[
                                if (vmSchedule.jobcardResponse.data?.manifest ==
                                    "") ...[
                                  sized0hx10,
                                  _buildInfoText("Manifest | Comments")
                                ],
                                sized0hx05,
                                cmFileBuilder(vmSchedule
                                        .jobcardResponse
                                        .data!
                                        .jobcardinfoFiles!
                                        .manifestMultipleFile ??
                                    []),
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.additionalImages !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText("Additional images"),
                                sized0hx10,
                                _buildSectioncontainer(vmSchedule
                                        .jobcardResponse.data?.additionalImages
                                        .toString() ??
                                    '')
                              ],
                              if (vmSchedule
                                  .jobcardResponse.data!.files!.isNotEmpty) ...[
                                if (vmSchedule.jobcardResponse.data
                                        ?.additionalImages ==
                                    "") ...[
                                  sized0hx10,
                                  _buildInfoText("Additional images")
                                ],
                                sized0hx05,
                                cmFileBuilder(
                                    vmSchedule.jobcardResponse.data!.files ??
                                        []),
                              ],
                              sized0hx10,
                              expandedRowShowsText(
                                  "Data form Required",
                                  boolToString(vmSchedule
                                          .jobcardResponse.data?.wasteDataForm
                                          .toString() ??
                                      "")),
                              sized0hx05,
                              if (vmSchedule
                                  .jobcardResponse
                                  .data!
                                  .jobcardinfoFiles!
                                  .dataFormRequiredMultipleFile!
                                  .isNotEmpty) ...[
                                cmFileBuilder(vmSchedule
                                        .jobcardResponse
                                        .data!
                                        .jobcardinfoFiles!
                                        .dataFormRequiredMultipleFile ??
                                    []),
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.accessHeight !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "AccessHeight",
                                    vmSchedule
                                            .jobcardResponse.data?.accessHeight
                                            .toString() ??
                                        ''),
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.keyRequired !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Key Required",
                                    boolToString(vmSchedule
                                            .jobcardResponse.data?.keyRequired
                                            .toString() ??
                                        "")),
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.pitDistanceFromTruckLocation !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Pit Distance from Truck",
                                    vmSchedule.jobcardResponse.data
                                            ?.pitDistanceFromTruckLocation
                                            .toString() ??
                                        '')
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.waterTapLocation !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Water Tap Location",
                                    vmSchedule.jobcardResponse.data
                                            ?.waterTapLocation
                                            .toString() ??
                                        '')
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.gurneyRequired !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Gurney Required",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.gurneyRequired
                                            .toString() ??
                                        ""))
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.confinedSpace !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Confined Space \n Required",
                                    boolToString(vmSchedule
                                            .jobcardResponse.data?.confinedSpace
                                            .toString() ??
                                        ""))
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.numberOfTrucksRequired !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Number of trucks",
                                    vmSchedule.jobcardResponse.data
                                            ?.numberOfTrucksRequired
                                            .toString() ??
                                        '')
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.estimatedJobDuration !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Estimated Job Duration",
                                    vmSchedule.jobcardResponse.data
                                            ?.estimatedJobDuration
                                            .toString() ??
                                        '')
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.timeForService !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Best time for service",
                                    vmSchedule.jobcardResponse.data
                                            ?.timeForService
                                            .toString() ??
                                        '')
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.specificPpeReqired !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Specific PPE",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.specificPpeReqired
                                            .toString() ??
                                        ""))
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.weighBridgeRequired !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Weigh Bridge Required",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.weighBridgeRequired
                                            .toString() ??
                                        ""))
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.noAndTypePalletToBeExchanged !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Number and type of \n pallets to be exchanged",
                                    vmSchedule.jobcardResponse.data
                                            ?.noAndTypePalletToBeExchanged
                                            .toString() ??
                                        '')
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.safetyDataSheetRequired !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Safer Data Sheet \n Required",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.safetyDataSheetRequired
                                            .toString() ??
                                        ""))
                              ],
                              if (vmSchedule
                                  .jobcardResponse
                                  .data!
                                  .jobcardinfoFiles!
                                  .safetyDataSheetFiles!
                                  .isNotEmpty) ...[
                                sized0hx05,
                                cmFileBuilder(vmSchedule
                                        .jobcardResponse
                                        .data!
                                        .jobcardinfoFiles!
                                        .safetyDataSheetFiles ??
                                    []),
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.chemistApproval !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Chemist Approval",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.chemistApproval
                                            .toString() ??
                                        ""))
                              ],
                              sized0hx05,
                              if (vmSchedule
                                  .jobcardResponse
                                  .data!
                                  .jobcardinfoFiles!
                                  .chemistApprovalMultipleFile!
                                  .isNotEmpty) ...[
                                cmFileBuilder(vmSchedule
                                        .jobcardResponse
                                        .data!
                                        .jobcardinfoFiles!
                                        .chemistApprovalMultipleFile ??
                                    []),
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.additionalInformation !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Additional information",
                                    vmSchedule.jobcardResponse.data
                                            ?.additionalInformation
                                            ?.toString() ??
                                        ''),
                                sized0hx10,
                                _buildSectioncontainer(vmSchedule
                                        .jobcardResponse
                                        .data
                                        ?.additionalInformation
                                        ?.toString() ??
                                    '')
                              ],
                              if (vmSchedule.jobcardResponse.data?.capacity !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Capacity",
                                    vmSchedule.jobcardResponse.data?.capacity
                                            ?.toString() ??
                                        '')
                              ],
                              if (vmSchedule.jobcardResponse.data?.barcode !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Barcode",
                                    vmSchedule.jobcardResponse.data?.barcode
                                            ?.toString() ??
                                        '')
                              ],
                              if (vmSchedule.jobcardResponse.data?.jobStatus !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Job status",
                                    vmSchedule.jobcardResponse.data?.jobStatus
                                            ?.toString() ??
                                        '')
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.pitLocation !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Pit Location",
                                    vmSchedule.jobcardResponse.data?.pitLocation
                                            ?.toString() ??
                                        ''),
                                sized0hx10,
                                _buildSectioncontainer(vmSchedule
                                        .jobcardResponse.data?.pitLocation
                                        ?.toString() ??
                                    '')
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.smokeAlarms !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Smoke alarm",
                                    vmSchedule.jobcardResponse.data?.smokeAlarms
                                            ?.toString() ??
                                        '')
                              ],
                              if (vmSchedule
                                  .jobcardResponse
                                  .data!
                                  .jobcardinfoFiles!
                                  .weighBridgeRequiredMultipleFile!
                                  .isNotEmpty) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Weighbridge Requires Multiple Files",
                                    vmSchedule.jobcardResponse.data
                                            ?.additionalInformation
                                            ?.toString() ??
                                        ''),
                                sized0hx10,
                                cmFileBuilder(vmSchedule
                                        .jobcardResponse
                                        .data!
                                        .jobcardinfoFiles!
                                        .weighBridgeRequiredMultipleFile ??
                                    []),
                              ]
                            ],
                          )),
                      sized0hx20
                    ],
                  ),
                );
        },
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      height: 32.w,
      color: const Color.fromARGB(31, 124, 122, 122),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        style: TextStyle(fontSize: 10.w, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSectioncontainer(String title) {
    return Container(
      height: 60.w,
      width: double.infinity,
      color: const Color.fromARGB(31, 124, 122, 122),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 10.w,
          ),
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 9.w),
    );
  }

  Widget cmFileBuilder(List fileList) {
    return SizedBox(
      height: 70.h,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fileList.length,
        itemBuilder: (context, index) {
          String path = fileList[index].file ?? "";

          bool isImage = path.endsWith('.jpg') ||
              path.endsWith('.jpeg') ||
              path.endsWith('.png');
          return InkWell(
            onTap: () async {
              _launchImageUrl(path);
            },
            child: Container(
              width: 80.h, // Width of each item
              foregroundDecoration: BoxDecoration(border: Border.all()),
              child: Column(
                children: [
                  sized0hx05,
                  Expanded(
                    child: isImage
                        ? Image.file(
                            File(path),
                            fit: BoxFit.cover,
                          )
                        : Icon(
                            Icons.file_copy,
                            size: 20.w,
                            color: Colors.red,
                          ),
                  ),
                  Expanded(
                      child: Text(
                    fileList[index].name ?? "",
                    style: TextStyle(
                        fontSize: 9.w, overflow: TextOverflow.ellipsis),
                  ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _launchImageUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  String boolToString(String value) {
    return value == "True" ? "Yes" : "No";
  }
}
