import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../widgets/drawer.dart';

@RoutePage()
class JobCardPage extends StatelessWidget {
  const JobCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Job Card'),
        actions: [notificationButton(context)],
      ),
      body: Observer(
        builder: (context) {
          return vmJobcard.jobcardResponse.loading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      _buildSectionHeader('Site Details'),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText("Site Name",
                            vmJobcard.jobcardResponse.data?.siteName ?? ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText(
                            "Type of Waste(site \n profile)",
                            vmJobcard.jobcardResponse.data?.typeOfWasteStr ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText("Site Address",
                            vmJobcard.jobcardResponse.data?.siteAddress ?? ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText("Site postcode",
                            vmJobcard.jobcardResponse.data?.sitePostCode ?? ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText(
                            "Site Contact name",
                            vmJobcard.jobcardResponse.data?.siteContactPerson ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText(
                            "Site Contact Phone",
                            vmJobcard.jobcardResponse.data?.siteContactPhone ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText(
                            "Site Contact Mob",
                            vmJobcard.jobcardResponse.data?.siteContactMob ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText(
                            "Site Contact Email",
                            vmJobcard.jobcardResponse.data?.siteContactEmail ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText("Price",
                            vmJobcard.jobcardResponse.data?.price ?? ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText(
                            "Account Status",
                            vmJobcard.jobcardResponse.data?.accountStatus ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const SizedBox(height: 10),
                      const Padding(
                        padding: EdgeInsets.only(left: 14.0),
                        child: Text(
                          "This is NOT a recurring Quote",
                          style: TextStyle(
                            backgroundColor: Color.fromARGB(31, 124, 122, 122),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText(
                            "Date", vmJobcard.jobcardResponse.data?.date ?? ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText("Sales Person",
                            vmJobcard.jobcardResponse.data?.salesPerson ?? ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: expandedRowShowsText("Induction Type", ""),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      _buildSectionHeader('Additional Information'),
                      const SizedBox(
                        height: 30,
                      ),
                      _buildInfoText("Access Restrictions"),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: _buildSectioncontainer(
                            vmJobcard.jobcardResponse.data?.siteContactMob ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      _buildInfoText("TC required | comments"),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: _buildSectioncontainer((vmJobcard
                                    .jobcardResponse.data?.tcRequiredComment ??
                                '')
                            .toString()),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: _buildInfoText("Purchaseorder | comments"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: _buildSectioncontainer(
                            vmJobcard.jobcardResponse.data?.purchaseComment ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      _buildInfoText("Manifest | comments"),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: _buildSectioncontainer(
                            vmJobcard.jobcardResponse.data?.manifest ?? ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0),
                        child: _buildInfoText("Additional images"),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: _buildSectioncontainer(
                            vmJobcard.jobcardResponse.data?.additionalImages ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: expandedRowShowsText(
                              "Data from Required",
                              vmJobcard.jobcardResponse.data?.wasteDataForm
                                      ?.toString() ??
                                  '')),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: expandedRowShowsText(
                              "AccessHieght",
                              vmJobcard.jobcardResponse.data?.accessHeight ??
                                  '')),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                          padding: const EdgeInsets.only(left: 17.0),
                          child: expandedRowShowsText(
                              "KeyRequired",
                              vmJobcard.jobcardResponse.data?.keyRequired
                                      ?.toString() ??
                                  '')),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "PitDistance from truck",
                            vmJobcard.jobcardResponse.data
                                    ?.pitDistanceFromTruckLocation
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Water tap location",
                            vmJobcard.jobcardResponse.data?.waterTapLocation
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Gurney REquired",
                            vmJobcard.jobcardResponse.data?.gurneyRequired
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Confined space \n required",
                            vmJobcard.jobcardResponse.data?.confinedSpace
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Number of trucks",
                            vmJobcard.jobcardResponse.data
                                    ?.numberOfTrucksRequired
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Estimated job duration",
                            vmJobcard.jobcardResponse.data?.estimatedJobDuration
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Besttime for service",
                            vmJobcard.jobcardResponse.data?.timeForService
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "SpecificPPE",
                            vmJobcard.jobcardResponse.data?.specificPpeReqired
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Weigh bridge required",
                            vmJobcard.jobcardResponse.data?.weighBridgeRequired
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Number and type of \n pallets to be exchanged",
                            vmJobcard.jobcardResponse.data
                                    ?.noAndTypePalletToBeExchanged
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Safer data sheet \n required",
                            vmJobcard.jobcardResponse.data
                                    ?.safetyDataSheetRequired
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "chemist approval",
                            vmJobcard.jobcardResponse.data?.chemistApproval
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child:
                            expandedRowShowsText("Additional information", ""),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: _buildSectioncontainer(vmJobcard
                                .jobcardResponse.data?.additionalInformation
                                ?.toString() ??
                            ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Capacity",
                            vmJobcard.jobcardResponse.data?.capacity
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Barcode",
                            vmJobcard.jobcardResponse.data?.barcode
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Job status",
                            vmJobcard.jobcardResponse.data?.jobStatus
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Pit Location",
                            vmJobcard.jobcardResponse.data?.pitLocation
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                        child: _buildSectioncontainer(vmJobcard
                                .jobcardResponse.data?.pitLocation
                                ?.toString() ??
                            ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 17.0),
                        child: expandedRowShowsText(
                            "Smoke alarm",
                            vmJobcard.jobcardResponse.data?.smokeAlarms
                                    ?.toString() ??
                                ''),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
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
      height: 40,
      color: const Color.fromARGB(31, 124, 122, 122),
      alignment: Alignment.centerLeft,
      child: Text(
        title,
        // style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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

  Widget _buildExpandedRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
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
