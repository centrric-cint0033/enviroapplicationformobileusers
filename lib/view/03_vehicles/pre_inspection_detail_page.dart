import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class PreInspectionDetailPage extends StatelessWidget {
  final VehicleModel data;
  const PreInspectionDetailPage({Key? key, required this.data})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Pre Inspection Detail'),
      ),
      body: SingleChildScrollView(
        padding: screenWidth,
        child: Observer(builder: (context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  context.router.pop();
                },
                style: ElevatedButton.styleFrom(
                    side: const BorderSide(color: Appthemes.cPrimary),
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.w,
                    )),
                child: const Text(
                  'Back',
                  style: TextStyle(color: Appthemes.cPrimary),
                ),
              ),
              sized0hx10,
              expandedRowShowText(
                "Date and Time",
                DateFormat('dd-MM-yyyy hh:mm a')
                    .format(data.dateTime ?? DateTime.now()),
              ),
              sized0hx10,
              expandedRowShowText(
                "Vehicle Registration",
                data.registration ?? "",
              ),
              sized0hx10,
              expandedRowShowText(
                "Odometer",
                "${data.odometer ?? ""}",
              ),
              sized0hx10,
              expandedRowShowText(
                "Driver's name",
                "${data.driverName ?? ""}",
              ),
              sized0hx10,
              expandedRowShowText(
                "Hour Meter Start",
                data.hourMeterStart ?? "",
              ),
              sized0hx10,
              cmCheckBoxRow("I am Fit for Work", data.fitForWork ?? false,
                  onChanged: (bool? value) {}),
              cmCheckBoxRow("I have approriate valid  licence",
                  data.validDrivingLicense ?? false,
                  onChanged: (bool? value) {}),
              cmCheckBoxRow("Appropriate PPE for operation of this vehicle",
                  data.appropriatePpe ?? false,
                  onChanged: (bool? value) {}),
              sized0hx05,
              const Text(
                'Pre-Start checklist- All fields are Mandatory(NO obvious Defect)(X-Fault identified)& N/A not applicable',
                style: TextStyle(fontSize: 12),
              ),
              sized0hx10,
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Category "A" Fault: Vehicle ',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 10.sp),
                            ),
                            TextSpan(
                              text: ' MUST NOT be operated  ',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 10.sp),
                            ),
                            TextSpan(
                              text: 'until fault is rectified',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Category "B" Fault: Vehicle ',
                              style: TextStyle(
                                  color: Colors.grey.shade700, fontSize: 10.sp),
                            ),
                            TextSpan(
                              text: ' May be operated ',
                              style: TextStyle(
                                  color: Colors.blue, fontSize: 10.sp),
                            ),
                            TextSpan(
                              text: ' corrective action is required',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.sp),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              cmCheckBoxRow2(
                context,
                "Engine Oil steel",
                data.engineOilLevel,
              ),
              cmCheckBoxRow2(
                context,
                "Warning System",
                data.warningSystem,
              ),
              cmCheckBoxRow2(
                context,
                "Steering",
                data.steering,
              ),
              cmCheckBoxRow2(
                context,
                "Safety/Emerg Stops",
                data.safetyEmergStop,
              ),
              cmCheckBoxRow2(
                context,
                "Hand Break Alarm",
                data.handbreakAlarm,
              ),
              cmCheckBoxRow2(
                context,
                "PTO/Vac.Pumb",
                data.ptoVacpump,
              ),
              cmCheckBoxRow2(
                context,
                "Horn",
                data.horn,
              ),
              cmCheckBoxRow2(
                context,
                "Rev alarm/Camera",
                data.revAlarmCamera,
              ),
              cmCheckBoxRow2(
                context,
                "Lights-Head",
                data.lightsHead,
              ),
              cmCheckBoxRow2(
                context,
                "Lights-Tail",
                data.lightsTail,
              ),
              cmCheckBoxRow2(
                context,
                "Light-beacons",
                data.lightBeacons,
              ),
              cmCheckBoxRow2(
                context,
                "Hazards Lights",
                data.hazardLight,
              ),
              cmCheckBoxRow2(
                context,
                "Rims & Wheel Nuts",
                data.rimsWheelnut,
              ),
              cmCheckBoxRow2(
                context,
                "Coolant",
                data.coolant,
              ),
              cmCheckBoxRow2(
                context,
                "Wheels & Tyres",
                data.wheels,
              ),
              cmCheckBoxRow2(
                context,
                "Mirrors & Windscreen",
                data.mirrorWindowscreen,
              ),
              cmCheckBoxRow2(
                context,
                "Structure & Bodywork",
                data.structureBodywork,
              ),
              cmCheckBoxRow2(
                context,
                "Wipers",
                data.wipers,
              ),
              cmCheckBoxRow2(
                context,
                "Fuel Level Pumb",
                data.fuelLevelpump,
              ),
              cmCheckBoxRow2(
                context,
                "Fuel Level Truck",
                data.fuelLeveltruck,
              ),
              cmCheckBoxRow2(
                context,
                "Seat/Seat Belt",
                data.seatSeatbelt,
              ),
              cmCheckBoxRow2(
                context,
                "Park Barke/Trailer",
                data.parkbrakeTrailer,
              ),
              cmCheckBoxRow2(
                context,
                "Foot Brake",
                data.footBrake,
              ),
              cmCheckBoxRow2(
                context,
                "Electrical",
                data.electrical,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: const Text('Accessories &Fittings'),
              ),
              cmCheckBoxRow3("Hoses", data.hoses ?? false,
                  onChanged: (bool? value) {}),
              cmCheckBoxRow3("Fittings", data.fittings ?? false,
                  onChanged: (bool? value) {}),
              cmCheckBoxRow3("First Aid Kit", data.firstAidKit ?? false,
                  onChanged: (bool? value) {}),
              cmCheckBoxRow3("PPE", data.ppe ?? false,
                  onChanged: (bool? value) {}),
              expandedRowShowText(
                "Fire Extinguisher(Date Calibrated):",
                data.fireExtinguisherDate ?? "",
              ),
              cmCheckBoxRow3("Garden Hose", data.gardenHose ?? false,
                  onChanged: (bool? value) {}),
              cmCheckBoxRow3("Gattic Lifters", data.gaticLifters ?? false,
                  onChanged: (bool? value) {}),
              cmCheckBoxRow3("Bucket/Rags", data.bucketRags ?? false,
                  onChanged: (bool? value) {}),
              cmCheckBoxRow3("Spill Kit", data.spillKit ?? false,
                  onChanged: (bool? value) {}),
              sized0hx10,
              Container(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  border: Border.all(color: Colors.yellow),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Any Faults to report(of any category) & any additional information',
                        style: TextStyle(),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        "${data.reportedFaults}",
                        style: TextStyle(),
                      ),
                    ],
                  ),
                ),
              ),
              sized0hx15,
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
                    value: data.safeReadyToOperate ?? false,
                    onChanged: (bool? value) {},
                    checkColor: Colors.white,
                    activeColor: Colors.red,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'I have conducted the above pre_start  checklist and satisfied that the vehicle is safe and ready to operate.',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 9.w,
                          color: Colors.red,
                        ),
                      ],
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
                    value: data.reportedFaults ?? false,
                    onChanged: (bool? value) {},
                    checkColor: Colors.white,
                    activeColor: Colors.red,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'I have reported all faults in the appropriate section and notified the authorised personnel',
                            style: TextStyle(fontSize: 10.sp),
                          ),
                        ),
                        Icon(
                          Icons.star,
                          size: 9.w,
                          color: Colors.red,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              sized0hx10,
              Container(
                width: double.infinity,
                color: Color.fromARGB(255, 161, 214, 239),
                child: Padding(
                  padding: EdgeInsets.only(left: 6.w, right: 6.w),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        sized0hx05,
                        Text(
                          "Manager Brief and Review",
                          style: TextStyle(fontSize: 10.sp),
                        ),
                        sized0hx10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                              side: const BorderSide(color: Colors.red),
                              value: data.reviewedForm ?? false,
                              onChanged: (bool? value) {},
                              checkColor: Colors.white,
                              activeColor: Colors.red,
                            ),
                            Expanded(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'I have reviewed this form and satisfied that required maintenance or safety related items have been addressed',
                                      style: TextStyle(fontSize: 10.sp),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 9.w,
                                    color: Colors.red,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        sized0hx10,
                        Text(
                          "I certify that faults reported have been",
                          style: TextStyle(
                              fontSize: 10.sp, color: Colors.grey.shade700),
                        ),
                        sized0hx10,
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  side: const BorderSide(color: Colors.red),
                                  value: data.corrected ?? false,
                                  onChanged: (bool? value) {},
                                  checkColor: Colors.white,
                                  activeColor: Colors.red,
                                ),
                                Text(
                                  'Corrected',
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  side: const BorderSide(color: Colors.red),
                                  value: data.noAction ?? false,
                                  onChanged: (bool? value) {},
                                  checkColor: Colors.white,
                                  activeColor: Colors.red,
                                ),
                                Text(
                                  'No Action',
                                  style: TextStyle(fontSize: 10.sp),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Checkbox(
                              side: const BorderSide(color: Colors.red),
                              value: data.scheduledForRepair ?? false,
                              onChanged: (bool? value) {},
                              checkColor: Colors.white,
                              activeColor: Colors.red,
                            ),
                            Text(
                              'Schedule for repair',
                              style: TextStyle(fontSize: 10.sp),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Checkbox(
                              side: const BorderSide(color: Colors.red),
                              value: data.doNotAffectSafeOperation ?? false,
                              onChanged: (bool? value) {},
                              checkColor: Colors.white,
                              activeColor: Colors.red,
                            ),
                            Expanded(
                              child: Text(
                                'Issues Schedule for maintenance or repair do not affect the safe operation of this vehicle',
                                style: TextStyle(fontSize: 10.sp),
                              ),
                            ),
                          ],
                        ),
                        sized0hx05
                      ]),
                ),
              ),
              sized0hx20
            ],
          );
        }),
      ),
    );
  }

  Widget requiredRowWidget(String? text1, String? text2,
      {TextEditingController? controller, required bool fromType}) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text1 ?? "",
                style: TextStyle(fontSize: 10.sp),
              ),
              Icon(
                Icons.star,
                size: 9.w,
                color: Colors.red,
              ),
            ],
          ),
        ),
        fromType
            ? Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Text(
                      ":",
                      style: TextStyle(fontSize: 10.sp),
                    ),
                    Expanded(
                      child: TextField(
                        controller: controller,
                        onChanged: (value) {
                          vmVehicle.preInspectionSubmitButtonValidation();
                        },
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        keyboardType: TextInputType.number,
                        style: TextStyle(fontSize: 10.sp),
                      ),
                    ),
                  ],
                ),
              )
            : Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Text(
                      ":",
                      style: TextStyle(fontSize: 10.sp),
                    ),
                    Text(
                      text2 ?? "",
                      style: TextStyle(fontSize: 10.sp),
                    ),
                  ],
                ),
              ),
      ],
    );
  }

  Widget cmCheckBoxRow(String text, bool value,
      {required void Function(bool?)? onChanged}) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Checkbox(
          side: const BorderSide(color: Colors.red),
          value: value,
          onChanged: onChanged,
          checkColor: Colors.white,
          activeColor: Colors.red,
          materialTapTargetSize: MaterialTapTargetSize.padded,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 10.sp),
        ),
        Icon(
          Icons.star,
          size: 9.w,
          color: Colors.red,
        ),
      ],
    );
  }

  Widget cmCheckBoxRow2(
    BuildContext context,
    String title,
    bool? value,
  ) {
    return Padding(
      padding: EdgeInsets.all(8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
                color: Colors.black,
                fontSize: 10.sp), // Use the color parameter for text color
          ),
          Container(
            height: 13.h,
            width: 13.h,
            decoration: BoxDecoration(
                border: Border.all(),
                color: value == true
                    ? Colors.red
                    : value == false
                        ? Colors.blue
                        : Colors.green.shade900),
            child: Center(
                child: Icon(
              Icons.check,
              color: Colors.white,
              size: 10.h,
            )),
          ),
        ],
      ),
    );
  }

  Widget cmCheckBoxRow3(String text, bool value,
      {required void Function(bool?)? onChanged}) {
    return Padding(
      padding: EdgeInsets.only(left: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(fontSize: 10.sp),
          ),
          Checkbox(
            side: const BorderSide(color: Colors.red),
            value: value,
            onChanged: onChanged,
            checkColor: Colors.white,
            activeColor: Colors.red,
            materialTapTargetSize: MaterialTapTargetSize.padded,
          ),
        ],
      ),
    );
  }

  showPopup(BuildContext context, String value, int i) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Colors.black),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              InkWell(
                onTap: () {
                  vmVehicle.noIssueOnTap(value, i);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    Text(
                      'No issue',
                      style: TextStyle(
                          color: Colors.green.shade900,
                          fontWeight: FontWeight.bold),
                    ),
                    Checkbox(
                      activeColor: Colors.green.shade900,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      value: true,
                      onChanged: (values) {
                        vmVehicle.noIssueOnTap(value, i);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  vmVehicle.categoryAOnTap(value, i);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    const Text(
                      'Category A fault',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Checkbox(
                      activeColor: Colors.red,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      value: true,
                      onChanged: (valus) {
                        vmVehicle.categoryAOnTap(value, i);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  vmVehicle.categoryBOnTap(value, i);
                  Navigator.pop(context);
                },
                child: Row(
                  children: [
                    const Text(
                      'Category B fault',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.bold),
                    ),
                    Checkbox(
                      activeColor: Colors.blue,
                      materialTapTargetSize: MaterialTapTargetSize.padded,
                      value: true,
                      onChanged: (values) {
                        vmVehicle.categoryBOnTap(value, i);
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
