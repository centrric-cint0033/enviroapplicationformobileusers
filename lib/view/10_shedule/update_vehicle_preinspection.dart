import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/widgets/cmn_action_icon.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';

@RoutePage()
class UpdateVehiclepreinspectionPage extends StatelessWidget {
  const UpdateVehiclepreinspectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Add Preinspection'),
        actions: [notificationButton(context)],
      ),
      body: Column(
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.blue,
                  side: const BorderSide(color: Colors.blue),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Back',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  textColor: Colors.black,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      expandedRowShowsText("Date and Time", ":2-3-21929 48pm5"),
                      expandedRowShowsText("vehicle registration", ":qhdbn"),
                      expandedRowShowsText("Odometer", ":qhdbn"),
                      expandedRowShowsText("Drivers Nmae", ":azeem"),
                      expandedRowShowsText("Hour Meter Start", ":qhdbn"),
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
