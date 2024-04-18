import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class JobCardPage extends StatelessWidget {
  const JobCardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            _buildSectionHeader('Site Details'),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Site Name", "CENTRRIC"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText(
                  "Type of Waste(site \n profile)", "KL-0233"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText(
                  "Site Address", "Kalamassery, Cochin, Kerala, India"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Site postcode", "82783"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Site Contact name", "DSD"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Site Contact Phone", "276563738"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Site Contact Mob", "897656543"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child:
                  expandedRowShowsText("Site Contact Email", "AZEEM@GMAIL.COM"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Price", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Account Status", ""),
            ),
            const SizedBox(
              height: 20,
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
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Date", "1-9-2022"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Sales Person", "Richargefridge"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: expandedRowShowsText("Induction Type", ""),
            ),
            const SizedBox(height: 20),
            _buildSectionHeader('Additional Information'),
            const SizedBox(
              height: 20,
            ),
            _buildInfoText("Access Restrictions"),
            const SizedBox(
              height: 20,
            ),
            _buildSectioncontainer('ffrthjukl'),
            const SizedBox(
              height: 20,
            ),
            _buildInfoText("TC required | comments"),
            const SizedBox(
              height: 20,
            ),
            _buildSectioncontainer('ffrthjukl'),
            const SizedBox(
              height: 20,
            ),
            _buildInfoText("Purchaseorder | comments"),
            const SizedBox(
              height: 20,
            ),
            _buildSectioncontainer(''),
            const SizedBox(
              height: 20,
            ),
            _buildInfoText("Manifest | comments"),
            const SizedBox(
              height: 20,
            ),
            _buildSectioncontainer(''),
            const SizedBox(
              height: 20,
            ),
            _buildInfoText("Additional images"),
            const SizedBox(
              height: 20,
            ),
            _buildSectioncontainer(''),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Data from Required", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("AccessHieght", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("KeyRequired", "false"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("PitDistance from truck", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Water tap location", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Gurney REquired", "True"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Confined space \n required", "No"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Number of trucks", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Estimated job duration", "adddada"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Besttime for service", "Cefgtyhjk"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("SpecificPPE", "NO"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Weigh bridge required", "No"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText(
                  "Number and type of \n pallets to be exchanged", "sdfghj"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child:
                  expandedRowShowsText("Safer data sheet \n required", "yes"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("chemist approval", "yes"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Additional information", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            _buildSectioncontainer('ffrthjukl'),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Capacity", "swjiisws"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Barcode", "aaaxas"),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Job status", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Pit Location", ""),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildSectioncontainer('ffrthjukl'),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 17.0),
              child: expandedRowShowsText("Smoke alarm", "sdsds"),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
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
