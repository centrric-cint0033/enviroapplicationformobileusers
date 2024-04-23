import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

@RoutePage()
class SheduledetailPage extends StatelessWidget {
  const SheduledetailPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Scheduling'),
        actions: [notificationButton(context)],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Observer(builder: (context) {
          return ListView.separated(
            itemBuilder: (context, index) {
              if (index == 0) {
                return Align(
                  alignment: Alignment.topRight,
                  child: Observer(builder: (_) {
                    return CmButton(
                      borderRadius: 34,
                      width: 130,
                      loading: vmJobcard.jobcardResponse.loading,
                      color: Colors.white,
                      text: 'job card',
                      buttonTextStyle: const TextStyle(color: Colors.black),
                      onPressed: () {
                        jobCardFunction(context);
                      },
                      loadingColor: Colors.blue,
                    );
                  }),
                );
              } else if (index == 1) {
                return const SizedBox(height: 5);
              } else if (index == 2) {
                return const Text(
                  'Schedule Details',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                );
              } else if (index >= 3 && index <= 10) {
                return buildCardDataOrder(index);
              } else {
                return CmButton(
                  color: Colors.green,
                  buttonTextStyle: const TextStyle(color: Colors.white),
                  onPressed: () {
                    updatevehiclepreinspection(context);
                  },
                  text: "Update vehicle preinspection",
                );
              }
            },
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemCount: 12,
          );
        }),
      ),
    );
  }

  Widget buildCardDataOrder(int index) {
    switch (index) {
      case 3:
        return expandedRowShowText(
          "Client Name",
          ":qhdbn",
        );
      case 4:
        return expandedRowShowText("Client Type", ":qhdbn");
      case 5:
        return expandedRowShowText("Client Email", ":qhdbn");
      case 6:
        return expandedRowShowText("Status", ":qhdbn");

      case 7:
        return expandedRowShowText("Amount", ":0");
      case 8:
        return expandedRowShowText("QuotedBy", ":shjsand");
      case 9:
        return expandedRowShowText("Wastetype", ":shjsanddf");
      case 10:
        return expandedRowShowText("frequency", ":19");

      default:
        return Container();
    }
  }
}

void updatevehiclepreinspection(BuildContext context) {
  print('ssssspendingclickedhhhh');
  context.router.pushNamed(RouteNames.rupdatevehiclepreinspectionpage);
}

void jobCardFunction(BuildContext context) async {
  await vmJobcard.jobcardviewmodelfunction(); // Add await here
  print('jobclicked');
  context.router.pushNamed(RouteNames.rjobcardpage);
}
