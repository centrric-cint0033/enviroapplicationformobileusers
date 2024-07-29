import 'package:enviro_mobile_application/model/07_Jobcard/job_card_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/widgets/cm_title.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
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
      ),
      body: Observer(
        builder: (context) {
          List<String> additionalPhoneNo = vmSchedule
                  .jobcardResponse.data?.additionalPhoneNumber?.values
                  .toList() ??
              [];
          List<String> additionalEmail = vmSchedule
                  .jobcardResponse.data?.additionalEmail?.values
                  .toList() ??
              [];
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
                            expandedRowShowsText(
                                "Company Name",
                                vmSchedule.jobcardResponse.data?.customerName ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Company Address",
                                vmSchedule
                                        .jobcardResponse.data?.companyAddress ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Company Contact Phone",
                                vmSchedule.jobcardResponse.data
                                        ?.customerContactPhone ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Company Contact Mob",
                                vmSchedule.jobcardResponse.data
                                        ?.customerContactMob ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Company Contact Email",
                                vmSchedule.jobcardResponse.data
                                        ?.customerContactEmail ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsTextWidget(
                                "Additional Email",
                                additionalEmail.isNotEmpty
                                    ? Expanded(
                                        flex: 3,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: additionalEmail.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.w),
                                              child: Container(
                                                constraints: BoxConstraints(
                                                  minHeight: 20
                                                      .w, // Set minimum height
                                                ),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.w),
                                                  color: Appthemes.cPrimary,
                                                ),
                                                child: SingleChildScrollView(
                                                  scrollDirection:
                                                      Axis.horizontal,
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Padding(
                                                        padding: EdgeInsets
                                                            .symmetric(
                                                                horizontal:
                                                                    8.w),
                                                        child: Flexible(
                                                          child: Text(
                                                            additionalEmail[
                                                                index],
                                                            style: TextStyle(
                                                              fontSize: 10.sp,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                            softWrap: false,
                                                            overflow:
                                                                TextOverflow
                                                                    .visible,
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    : SizedBox()),
                            sized0hx10,
                            expandedRowShowsTextWidget(
                                "Additional Contact Phone",
                                additionalPhoneNo.isNotEmpty
                                    ? Expanded(
                                        flex: 3,
                                        child: ListView.builder(
                                          shrinkWrap: true,
                                          itemCount: additionalPhoneNo.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 8.w),
                                              child: Container(
                                                height: 20.w,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.w),
                                                    color: Appthemes.cPrimary),
                                                child: Center(
                                                    child: Expanded(
                                                  child: Text(
                                                    additionalPhoneNo[index],
                                                    style: TextStyle(
                                                        fontSize: 10.sp,
                                                        color: Colors.white),
                                                  ),
                                                )),
                                              ),
                                            );
                                          },
                                        ),
                                      )
                                    : SizedBox()),
                            sized0hx10,
                            expandedRowShowsText(
                                "Induction Type",
                                vmSchedule.jobcardResponse.data
                                        ?.typeOfInduction ??
                                    ''),
                            sized0hx10,
                            expandedRowShowsText(
                                "Industry Type",
                                vmSchedule.jobcardResponse.data
                                        ?.industryTypeInfo?.industryName ??
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
                            expandedRowShowsText(
                              "Is this an Outsourced Job",
                              boolToString(vmSchedule
                                      .jobcardResponse.data?.outsourcedJob
                                      .toString() ??
                                  ''),
                            ),
                            sized0hx10,
                            Align(
                              alignment: Alignment.centerLeft,
                              child: cmTitle(
                                  vmSchedule.jobcardResponse.data
                                              ?.reoccurring ==
                                          false
                                      ? "This is NOT a reoccuring Quote"
                                      : "This is a reoccuring Quote",
                                  width: 200.w,
                                  blackText: true),
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
                                cmDivider(),
                              ],
                              if (vmSchedule.jobcardResponse.data?.manifest !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText("Manifest | Comments"),
                                sized0hx10,
                                _buildSectioncontainer(vmSchedule
                                        .jobcardResponse.data?.manifest
                                        .toString() ??
                                    ''),
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
                                cmDivider(),
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
                                        "")),
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
                                cmDivider()
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.safetyDataSheetRequired !=
                                  "") ...[
                                if (vmSchedule
                                    .jobcardResponse
                                    .data!
                                    .jobcardinfoFiles!
                                    .safetyDataSheetFiles!
                                    .isNotEmpty)
                                  sized0hx10,
                                expandedRowShowsText(
                                    "Safer Data Sheet \n Required",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.safetyDataSheetRequired
                                            .toString() ??
                                        "")),
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
                                cmDivider()
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
                                    ''),
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
                                        [],
                                    fromImg: true),
                                cmDivider(),
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
                                cmDivider(),
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
                                cmDivider(),
                              ],
//
                              if (vmSchedule.jobcardResponse.data
                                      ?.wastePackagedMethod !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "How is the Waste Packaged",
                                    vmSchedule.jobcardResponse.data
                                            ?.wastePackagedMethod
                                            .toString() ??
                                        ''),
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.volumeExpected !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Volume Expected",
                                    vmSchedule.jobcardResponse.data
                                            ?.volumeExpected
                                            .toString() ??
                                        ''),
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.numberOfLoadsExpected !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Number of Loads expected",
                                    vmSchedule.jobcardResponse.data
                                            ?.numberOfLoadsExpected
                                            .toString() ??
                                        ''),
                              ],

                              if (vmSchedule.jobcardResponse.data
                                      ?.sampleOfWasteToBeCollected !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Sample of Waste to be collected",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.sampleOfWasteToBeCollected
                                            .toString() ??
                                        '')),
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.sampleOfWasteToBeCollectedText !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Sample of Waste to be collected | Comments",
                                    vmSchedule.jobcardResponse.data
                                            ?.sampleOfWasteToBeCollectedText
                                            .toString() ??
                                        ''),
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.estimatedDatetimeOfDisposal !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Estimated Date and Time of Disposal",
                                    vmSchedule.jobcardResponse.data
                                            ?.estimatedDatetimeOfDisposal
                                            .toString() ??
                                        ''),
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.flowMeterRequired !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Flow Meter Required",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.flowMeterRequired
                                            .toString() ??
                                        '')),
                              ],
//
                              if (vmSchedule
                                      .jobcardResponse.data?.accessHeight !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Access Height",
                                    vmSchedule
                                            .jobcardResponse.data?.accessHeight
                                            .toString() ??
                                        ''),
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.keyRequiredNew !=
                                  "") ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Key Required",
                                    vmSchedule.jobcardResponse.data
                                            ?.keyRequiredNew
                                            .toString() ??
                                        ""),
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
                                      ?.specificPpeRequiredComment !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText("Specific PPE | Comments"),
                                sized0hx10,
                                _buildSectioncontainer((vmSchedule
                                            .jobcardResponse
                                            .data
                                            ?.specificPpeRequiredComment
                                            .toString() ??
                                        '')
                                    .toString()),
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
                              if (vmSchedule
                                  .jobcardResponse
                                  .data!
                                  .jobcardinfoFiles!
                                  .weighBridgeRequiredMultipleFile!
                                  .isNotEmpty) ...[
                                sized0hx10,
                                cmFileBuilder(vmSchedule
                                        .jobcardResponse
                                        .data!
                                        .jobcardinfoFiles!
                                        .weighBridgeRequiredMultipleFile ??
                                    []),
                                cmDivider()
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
                                      ?.additionalInformation !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText("Additional Information"),
                                sized0hx10,
                                _buildSectioncontainer(vmSchedule
                                        .jobcardResponse
                                        .data
                                        ?.additionalInformation
                                        ?.toString() ??
                                    '')
                              ],
                              if (vmSchedule
                                      .jobcardResponse.data?.photoRequired !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Photo Required",
                                    boolToString(vmSchedule
                                            .jobcardResponse.data?.photoRequired
                                            ?.toString() ??
                                        ''))
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.photoRequiredText !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText("Photo Required | Comments"),
                                sized0hx10,
                                _buildSectioncontainer((vmSchedule
                                            .jobcardResponse
                                            .data
                                            ?.photoRequiredText
                                            .toString() ??
                                        '')
                                    .toString()),
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.certificateOfDestructionRequired !=
                                  null) ...[
                                sized0hx10,
                                expandedRowShowsText(
                                    "Certification of Destruction Required",
                                    boolToString(vmSchedule.jobcardResponse.data
                                            ?.certificateOfDestructionRequired
                                            ?.toString() ??
                                        ''))
                              ],
                              if (vmSchedule.jobcardResponse.data
                                      ?.certificateOfDestructionRequiredText !=
                                  "") ...[
                                sized0hx10,
                                _buildInfoText(
                                    "Certification of Destruction | Comments"),
                                sized0hx10,
                                _buildSectioncontainer((vmSchedule
                                            .jobcardResponse
                                            .data
                                            ?.certificateOfDestructionRequiredText
                                            .toString() ??
                                        '')
                                    .toString()),
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
                                  "") ...[
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
                                _buildInfoText("Pit Location"),
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
        style: TextStyle(fontSize: 10.sp, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSectioncontainer(String title) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(31, 124, 122, 122),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 10.sp,
          ),
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 10.sp),
    );
  }

  Widget cmFileBuilder(List<WeighBridge> fileList, {bool fromImg = false}) {
    return SizedBox(
      height: 100.w,
      width: double.infinity,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: fileList.length,
        itemBuilder: (context, index) {
          String path =
              fromImg ? fileList[index].url ?? "" : fileList[index].file ?? "";
          bool isImage = path.endsWith('.jpg') ||
              path.endsWith('.jpeg') ||
              path.endsWith('.png');
          return InkWell(
            onTap: () async {
              _launchImageUrl(path);
            },
            child: Padding(
              padding: EdgeInsets.all(3.w),
              child: Container(
                width: 75.w, // Width of each item
                decoration: BoxDecoration(color: Colors.grey.shade200),
                child: Column(
                  children: [
                    Expanded(
                      flex: 2,
                      child: isImage
                          ? SizedBox(
                              height: 75.w,
                              width: 75.w,
                              child: Image.network(
                                path,
                                fit: BoxFit.cover,
                              ),
                            )
                          : Icon(
                              Icons.file_copy,
                              size: 20.w,
                              color: Colors.red,
                            ),
                    ),
                    sized0hx05,
                    Expanded(
                        child: Text(
                      fileList[index].name ?? "Untitled",
                      style: TextStyle(
                          fontSize: 9.sp, overflow: TextOverflow.ellipsis),
                    ))
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget cmDivider() {
    return Divider(
      color: Colors.grey.shade300,
      thickness: 4,
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
    return value == "true" ? "Yes" : "No";
  }
}
