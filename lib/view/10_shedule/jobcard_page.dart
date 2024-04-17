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
      body: Column(
        children: [
          const SizedBox(height: 20),
          Container(
            width: 450.dg,
            height: 40,
            color: const Color.fromARGB(31, 124, 122, 122),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Site Details'),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 19.0, right: 19),
              child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 18,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 20),
                itemBuilder: (context, index) {
                  return buildCardDataOrder(index);
                },
              ),
            ),
          ),
          Container(
            width: 450.dg,
            height: 40,
            color: const Color.fromARGB(31, 124, 122, 122),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('Additional informations'),
            ),
          ),
          sized0hx40
        ],
      ),
    );
  }

  Widget buildCardDataOrder(int index) {
    switch (index) {
      case 3:
        return expandedRowShowsText("Site Name", "CENTRRIC");
      case 4:
        return expandedRowShowsText("Type of Waste(site profile)", "KL-02333");
      case 5:
        return expandedRowShowsText(
            "Site Address", "Kalamassery, Cochi, Kerala, India");
      case 6:
        return expandedRowShowsText("Site postcode", "82783");
      case 7:
        return expandedRowShowsText("Site Contact name", "DSD");
      case 8:
        return expandedRowShowsText("Site Contact Phone", "276563738");
      case 9:
        return expandedRowShowsText("Site Contact Mob", "897656543");
      case 10:
        return expandedRowShowsText("Site Contact Email", "AZEEM@GMAIL.COM");
      case 11:
        return expandedRowShowsText("Price", "");
      case 12:
        return expandedRowShowsText("Account Status", "");
      case 13:
        return const Text(
          "This is NOT a recurring Quote",
          style: TextStyle(
            backgroundColor: Color.fromARGB(31, 124, 122, 122),
          ),
        );
      case 14:
        return expandedRowShowsText("Date", "1-9-2022");

      case 15:
        return expandedRowShowsText("Sales Person", "Richargefridge");
      case 16:
        return expandedRowShowsText("Induction Type", "");

      default:
        return Container();
    }
  }
}
