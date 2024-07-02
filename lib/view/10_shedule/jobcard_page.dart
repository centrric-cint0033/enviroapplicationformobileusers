import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
                  padding: screenWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sized0hx10,
                      _buildSectionHeader('Site Details'),
                      sized0hx10,
                      expandedRowShowsText("Site Name",
                          vmSchedule.jobcardResponse.data?.siteName ?? ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Type of Waste(site Profile)",
                          vmSchedule.jobcardResponse.data?.typeOfWasteStr ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText("Site Address",
                          vmSchedule.jobcardResponse.data?.siteAddress ?? ''),
                      sized0hx10,
                      expandedRowShowsText("Site postcode",
                          vmSchedule.jobcardResponse.data?.sitePostCode ?? ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Site Contact name",
                          vmSchedule.jobcardResponse.data?.siteContactPerson ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Site Contact Phone",
                          vmSchedule.jobcardResponse.data?.siteContactPhone ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Site Contact Mob",
                          vmSchedule.jobcardResponse.data?.siteContactMob ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Site Contact Email",
                          vmSchedule.jobcardResponse.data?.siteContactEmail ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText("Price",
                          vmSchedule.jobcardResponse.data?.price ?? ''),
                      sized0hx10,
                      expandedRowShowsText("Account Status",
                          vmSchedule.jobcardResponse.data?.accountStatus ?? ''),
                      sized0hx10,
                      const Text(
                        "This is NOT a recurring Quote",
                        style: TextStyle(
                          backgroundColor: Color.fromARGB(31, 124, 122, 122),
                        ),
                      ),
                      expandedRowShowsText(
                          "Date", vmSchedule.jobcardResponse.data?.date ?? ''),
                      sized0hx10,
                      expandedRowShowsText("Sales Person",
                          vmSchedule.jobcardResponse.data?.salesPerson ?? ''),
                      sized0hx10,
                      expandedRowShowsText("Induction Type", ""),
                      sized0hx10,
                      _buildSectionHeader('Additional Information'),
                      sized0hx10,
                      _buildInfoText("Access Restrictions"),
                      sized0hx10,
                      _buildSectioncontainer(
                          vmSchedule.jobcardResponse.data?.siteContactMob ??
                              ''),
                      sized0hx10,
                      _buildInfoText("TC required | comments"),
                      sized0hx10,
                      _buildSectioncontainer(
                          (vmSchedule.jobcardResponse.data?.tcRequiredComment ??
                                  '')
                              .toString()),
                      sized0hx10,
                      _buildInfoText("Purchaseorder | comments"),
                      sized0hx10,
                      _buildSectioncontainer(
                          vmSchedule.jobcardResponse.data?.purchaseComment ??
                              ''),
                      sized0hx10,
                      _buildInfoText("Manifest | comments"),
                      sized0hx10,
                      _buildSectioncontainer(
                          vmSchedule.jobcardResponse.data?.manifest ?? ''),
                      sized0hx10,
                      _buildInfoText("Additional images"),
                      sized0hx10,
                      _buildSectioncontainer(
                          vmSchedule.jobcardResponse.data?.additionalImages ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Data form Required",
                          vmSchedule.jobcardResponse.data?.wasteDataForm
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText("AccessHieght",
                          vmSchedule.jobcardResponse.data?.accessHeight ?? ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "KeyRequired",
                          vmSchedule.jobcardResponse.data?.keyRequired
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "PitDistance from truck",
                          vmSchedule.jobcardResponse.data
                                  ?.pitDistanceFromTruckLocation
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Water tap location",
                          vmSchedule.jobcardResponse.data?.waterTapLocation
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Gurney REquired",
                          vmSchedule.jobcardResponse.data?.gurneyRequired
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Confined space \n required",
                          vmSchedule.jobcardResponse.data?.confinedSpace
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Number of trucks",
                          vmSchedule
                                  .jobcardResponse.data?.numberOfTrucksRequired
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Estimated job duration",
                          vmSchedule.jobcardResponse.data?.estimatedJobDuration
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Besttime for service",
                          vmSchedule.jobcardResponse.data?.timeForService
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "SpecificPPE",
                          vmSchedule.jobcardResponse.data?.specificPpeReqired
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Weigh bridge required",
                          vmSchedule.jobcardResponse.data?.weighBridgeRequired
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Number and type of \n pallets to be exchanged",
                          vmSchedule.jobcardResponse.data
                                  ?.noAndTypePalletToBeExchanged
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Safer data sheet \n required",
                          vmSchedule
                                  .jobcardResponse.data?.safetyDataSheetRequired
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "chemist approval",
                          vmSchedule.jobcardResponse.data?.chemistApproval
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText("Additional information", ""),
                      sized0hx10,
                      _buildSectioncontainer(vmSchedule
                              .jobcardResponse.data?.additionalInformation
                              ?.toString() ??
                          ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Capacity",
                          vmSchedule.jobcardResponse.data?.capacity
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Barcode",
                          vmSchedule.jobcardResponse.data?.barcode
                                  ?.toString() ??
                              ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Job status",
                          vmSchedule.jobcardResponse.data?.jobStatus
                                  ?.toString() ??
                              ''),
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
                          ''),
                      sized0hx10,
                      expandedRowShowsText(
                          "Smoke alarm",
                          vmSchedule.jobcardResponse.data?.smokeAlarms
                                  ?.toString() ??
                              ''),
                      sized0hx10,
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
      height: 70,
      width: double.infinity,
      color: const Color.fromARGB(31, 124, 122, 122),
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
        ),
      ),
    );
  }

  Widget _buildInfoText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Text(text),
    );
  }
}
