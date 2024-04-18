import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
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
              padding: const EdgeInsets.only(
                left: 13,
              ),
              itemCount: 1,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  textColor: Colors.black,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      expandedRowShowsText("Date and Time", ":2-3-21929 48pm5"),
                      const SizedBox(height: 16),
                      expandedRowShowsText("vehicle registration", ":qhdbn"),
                      const SizedBox(height: 16),
                      expandedRowShowsText("Odometer", ":"),
                      const SizedBox(height: 16),
                      expandedRowShowsText("Drivers Nmae", ":azeem"),
                      const SizedBox(height: 16),
                      expandedRowShowsText("Hour Meter Start", ":"),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                          const Row(
                            children: [
                              Text(
                                'I am Fit for Work',
                              ),
                              Icon(
                                Icons.star, size: 13,
                                color: Colors.red, // Set icon color to red
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                          ),
                          const Text('I have approruiate valid  licence'),
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                          ),
                          const Text('I have approruiate  licence'),
                          const Icon(
                            Icons.star,
                            size: 13,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      sized0hx05,
                      const Text(
                        ' pre-Start checklist- All fields are Mandatory(NO obvious Defect)(X-Fault identified)& N/A not applicable',
                        style: const TextStyle(fontSize: 12),
                      ),
                      sized0hx10,
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RichText(
                            text: const TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Category A fault vehicle ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: ' MUST NOT be operated  ',
                                  style: TextStyle(color: Colors.red),
                                ),
                                TextSpan(
                                  text: 'until fault is rectified',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: ' Fault Vehicle ',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: ' May be operated ',
                                  style: TextStyle(color: Colors.blue),
                                ),
                                TextSpan(
                                  text: ' corrective action is required',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      sized0hx05,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Engine OIl steel',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Warning system',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Steering',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'safty/Emergy stops',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hand break alarm',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'PTO/vac pumb',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Horn',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rev/alarmcamera',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Lights head',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Lights tail',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Light beacons',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      sized0hx10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hazard lights',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rims&wheelnuts',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Coolant',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Wheels&tyres',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Mirrors &windscreen',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Structure and bodywork',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'wipers',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Full level pumb',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Full level truck',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Seat/seatbelt',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'parkbeat/trailor',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Footbrake',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Electrical',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.black),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      const Text('Accessories &Fittings'),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Hoses',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Fittings',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'First Aid Kit',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'PPE',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      const Text(
                        'Fire Estingusher(Date Collabrated)',
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'GoldenHose',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Gattic LItters',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Bucket/Rags',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Split Kit',
                          ),
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                        ],
                      ),
                      sized0hx10,
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.yellow,
                          border: Border.all(color: Colors.yellow),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Any Faults to report( of any category)& Any additional information',
                                style: TextStyle(),
                              ),
                              SizedBox(height: 8),
                              TextField(
                                decoration: InputDecoration(
                                  hintText: 'Type Here...',
                                  border: InputBorder.none,
                                ),
                                style: TextStyle(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Action Taken By"),
                          Text("Authorised By"),
                        ],
                      ),
                      sized0hx40,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                          const Expanded(
                            child: Text(
                              'I have conducted the abouve pre_start  checklist and satisfied that the vehiclke is safe and readyb to operatate.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      sized0hx10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Checkbox(
                            side: const BorderSide(color: Colors.red),
                            value: false,
                            onChanged: (bool? value) {},
                            checkColor: Colors.red,
                          ),
                          const Expanded(
                            child: Text(
                              'I have conducted the abouve pre_start  checklist and satisfied that the vehiclke is safe and readyb to operatate.',
                              style: TextStyle(fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                      sized0hx10,
                      Align(
                        alignment: Alignment.bottomRight,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            primary: Colors.blue,
                            onPrimary: Colors.blue,
                            side: const BorderSide(color: Colors.blue),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Submit',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
