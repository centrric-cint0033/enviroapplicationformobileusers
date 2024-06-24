import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/Routepage/routespage.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/10_shedule/shedule_widget.dart';
import 'package:enviro_mobile_application/view_model/11_shedule/shedule_page_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:enviro_mobile_application/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class UpdateVehiclepreinspectionPage extends StatelessWidget {
  const UpdateVehiclepreinspectionPage({Key? key, required this.index})
      : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Add Pre-Inspection'),
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
                DateFormat('dd-MM-yyyy hh:mm a').format(DateTime.now()),
              ),
              sized0hx10,
              expandedRowShowText(
                "Vehicle Registration",
                vmSchedule.sheduleweekResponse.data?[index].vehicle
                        ?.toString() ??
                    '',
              ),
              requiredRowWidget("Odometer", "",
                  fromType: true, controller: vmSchedule.odometerCntrller),
              requiredRowWidget(
                "Driver's name",
                "${vmSchedule.sheduleweekResponse.data?[index].drivers?[0].name}",
                fromType: false,
              ),
              requiredRowWidget("Hour Meter Start", "",
                  fromType: true, controller: vmSchedule.hoursMeterCntrller),
              cmCheckBoxRow("I am Fit for Work", vmSchedule.checkboxValue,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValue(value);
                }
              }),
              cmCheckBoxRow(
                  "I have approriate valid  licence", vmSchedule.checkboxValue2,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValue2(value);
                }
              }),
              cmCheckBoxRow(
                  "I have approruiate  licence", vmSchedule.checkboxValue3,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValue3(value);
                }
              }),
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
                                  color: Colors.grey.shade700, fontSize: 10.w),
                            ),
                            TextSpan(
                              text: ' MUST NOT be operated  ',
                              style:
                                  TextStyle(color: Colors.red, fontSize: 10.w),
                            ),
                            TextSpan(
                              text: 'until fault is rectified',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.w),
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
                                  color: Colors.grey.shade700, fontSize: 10.w),
                            ),
                            TextSpan(
                              text: ' May be operated ',
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 10.w),
                            ),
                            TextSpan(
                              text: ' corrective action is required',
                              style: TextStyle(
                                  color: Colors.black, fontSize: 10.w),
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
                vmSchedule.selectedEngineOilValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedEngineOilValue ?? "", 1);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Warning System",
                vmSchedule.selectedWarningSystemValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedWarningSystemValue ?? "", 2);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Steering",
                vmSchedule.selectedSteeringValue ?? "",
                onTap: () {
                  showPopup(context, vmSchedule.selectedSteeringValue ?? "", 3);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Safety/Emerg Stops",
                vmSchedule.selectedSafetyEmergValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedSafetyEmergValue ?? "", 4);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Hand Break Alarm",
                vmSchedule.selectedHandBreakAlarmValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedHandBreakAlarmValue ?? "", 5);
                },
              ),
              cmCheckBoxRow2(
                context,
                "PTO/Vac.Pumb",
                vmSchedule.selectedPTOVacValue ?? "",
                onTap: () {
                  showPopup(context, vmSchedule.selectedPTOVacValue ?? "", 6);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Horn",
                vmSchedule.selectedHornValue ?? "",
                onTap: () {
                  showPopup(context, vmSchedule.selectedHornValue ?? "", 7);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Rev alarm/Camera",
                vmSchedule.selectedRevAlarmCameraValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedRevAlarmCameraValue ?? "", 8);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Lights-Head",
                vmSchedule.selectedLightsHeadValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedLightsHeadValue ?? "", 9);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Lights-Tail",
                vmSchedule.selectedLightsTailValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedLightsTailValue ?? "", 10);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Light-beacons",
                vmSchedule.selectedLightBeaconsValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedLightBeaconsValue ?? "", 11);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Hazards Lights",
                vmSchedule.selectedHazardsLightsValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedHazardsLightsValue ?? "", 12);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Rims & Wheel Nuts",
                vmSchedule.selectedRimsWheelNutsValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedRimsWheelNutsValue ?? "", 13);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Coolant",
                vmSchedule.selectedCoolantValue ?? "",
                onTap: () {
                  showPopup(context, vmSchedule.selectedCoolantValue ?? "", 14);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Wheels & Tyres",
                vmSchedule.selectedWheelsTyresValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedWheelsTyresValue ?? "", 15);
                },
              ),
              Observer(builder: (context) {
                return cmCheckBoxRow2(
                  context,
                  "Mirrors & Windscreen",
                  vmSchedule.selectedMirrorsWindscreenValue ?? "",
                  onTap: () {
                    showPopup(context,
                        vmSchedule.selectedMirrorsWindscreenValue ?? "", 16);
                  },
                );
              }),
              cmCheckBoxRow2(
                context,
                "Structure & Bodywork",
                vmSchedule.selectedStructureBodywrkValue ?? "",
                onTap: () {
                  showPopup(context,
                      vmSchedule.selectedStructureBodywrkValue ?? "", 17);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Wipers",
                vmSchedule.selectedWipersValue ?? "",
                onTap: () {
                  showPopup(context, vmSchedule.selectedWipersValue ?? "", 18);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Fuel Level Pumb",
                vmSchedule.selectedFuelLevelPumbValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedFuelLevelPumbValue ?? "", 19);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Fuel Level Truck",
                vmSchedule.selectedFuelLevelTruckValue ?? "",
                onTap: () {
                  showPopup(context,
                      vmSchedule.selectedFuelLevelTruckValue ?? "", 20);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Seat/Seat Belt",
                vmSchedule.selectedSeatSeatBeltValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedSeatSeatBeltValue ?? "", 21);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Park Barke/Trailer",
                vmSchedule.selectedParkBarkeValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedParkBarkeValue ?? "", 22);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Foot Brake",
                vmSchedule.selectedFootBrakeValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedFootBrakeValue ?? "", 23);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Electrical",
                vmSchedule.selectedElectricalValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmSchedule.selectedElectricalValue ?? "", 24);
                },
              ),
              const Text('Accessories &Fittings'),
              cmCheckBoxRow3("Hoses", vmSchedule.selectHosesCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValueFn1(value);
                }
              }),
              cmCheckBoxRow3("Fittings", vmSchedule.selectFittingsCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValueFn2(value);
                }
              }),
              cmCheckBoxRow3(
                  "First Aid Kit", vmSchedule.selectFirstAidKitCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValueFn3(value);
                }
              }),
              cmCheckBoxRow3("PPE", vmSchedule.selectPPECheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValueFn4(value);
                }
              }),
              const Text(
                'Fire Estinguisher(Date Calibrated):',
              ),
              cmCheckBoxRow3("Garden Hose", vmSchedule.selectGardenHoseCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValueFn5(value);
                }
              }),
              cmCheckBoxRow3("Gattic Lifters", vmSchedule.selectGatticCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValueFn6(value);
                }
              }),
              cmCheckBoxRow3("Bucket/Rags", vmSchedule.selectBucketRagsCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValueFn7(value);
                }
              }),
              cmCheckBoxRow3("Spill Kit", vmSchedule.selectSpillKitCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmSchedule.updateCheckboxValueFn8(value);
                }
              }),
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
                    activeColor: Colors.white,
                    value: vmSchedule.selectverifyCheckbox1,
                    onChanged: (bool? value) {
                      if (value != null) {
                        vmSchedule.updateCheckboxValueFn9(value);
                      }
                    },
                    checkColor: Colors.red,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'I have conducted the abouve pre_start  checklist and satisfied that the vehiclke is safe and ready to operatate.',
                            style: TextStyle(fontSize: 10.w),
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
                    activeColor: Colors.white,
                    value: vmSchedule.selectverifyCheckbox2,
                    onChanged: (bool? value) {
                      if (value != null) {
                        vmSchedule.updateCheckboxValueFn10(value);
                      }
                    },
                    checkColor: Colors.red,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            'I have reported all faults in the appropriate section and notified the authorised personnel',
                            style: TextStyle(fontSize: 10.w),
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
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    shedulecommentfunction(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.blue,
                    backgroundColor: Colors.blue,
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
          );
        }),
      ),
    );
  }
}

void shedulecommentfunction(BuildContext context) {
  context.router.pushNamed(RouteNames.rshedulecommandstatus);
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
              style: TextStyle(fontSize: 10.w),
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
                    style: TextStyle(fontSize: 10.w),
                  ),
                  Expanded(
                    child: TextField(
                      controller: controller,
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.number,
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
                    style: TextStyle(fontSize: 10.w),
                  ),
                  Text(
                    text2 ?? "",
                    style: TextStyle(fontSize: 10.w),
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
        checkColor: Colors.red,
        activeColor: Colors.white,
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
      Text(
        text,
        style: TextStyle(fontSize: 10.w),
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
  String value, {
  required void Function()? onTap,
}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
              color: Colors.black), // Use the color parameter for text color
        ),
        InkWell(
          onTap: onTap,
          child: Container(
            height: 13.h,
            width: 13.h,
            decoration: BoxDecoration(
                border: Border.all(),
                color: value == "No issue"
                    ? Colors.green.shade900
                    : value == "categoryA"
                        ? Colors.red
                        : Colors.blue),
            child: Center(
                child: Icon(
              Icons.check,
              color: Colors.white,
              size: 10.h,
            )),
          ),
        ),
      ],
    ),
  );
}

Widget cmCheckBoxRow3(String text, bool value,
    {required void Function(bool?)? onChanged}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(fontSize: 10.w),
      ),
      Checkbox(
        side: const BorderSide(color: Colors.red),
        value: value,
        onChanged: onChanged,
        checkColor: Colors.red,
        activeColor: Colors.white,
        materialTapTargetSize: MaterialTapTargetSize.padded,
      ),
    ],
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
                vmSchedule.noIssueOnTap(value, i);
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
                    activeColor: Colors.green,
                    materialTapTargetSize: MaterialTapTargetSize.padded,
                    value: true,
                    onChanged: (values) {
                      vmSchedule.noIssueOnTap(value, i);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                vmSchedule.categoryAOnTap(value, i);
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
                      vmSchedule.categoryAOnTap(value, i);
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                vmSchedule.categoryBOnTap(value, i);
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
                      vmSchedule.categoryBOnTap(value, i);
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
