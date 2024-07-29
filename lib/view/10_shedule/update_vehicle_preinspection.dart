import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_widget.dart';
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
  const UpdateVehiclepreinspectionPage(
      {Key? key, required this.index, required this.driversIndex})
      : super(key: key);
  final int index;
  final int driversIndex;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: cmnDrawer(context),
      appBar: AppBar(
        title: cmnTitleWidget('Add Pre-Inspection'),
      ),
      body: InkWell(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView(
          padding: screenWidth,
          child: Observer(builder: (context) {
            vmSchedule.preInspectionSubmitButtonValidation();
            final res = vmSchedule.addPreInspectionScheduleResponse;
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
                  vmSchedule.shedulecardResponse.data?[index].vehicle
                          ?.toString() ??
                      '',
                ),
                requiredRowWidget("Odometer", "",
                    fromType: true, controller: vmSchedule.odometerCntrller),
                requiredRowWidget(
                  "Driver's name",
                  "${vmSchedule.shedulecardResponse.data?[index].drivers?[driversIndex].name}",
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
                cmCheckBoxRow("I have approriate valid  licence",
                    vmSchedule.checkboxValue2, onChanged: (bool? value) {
                  if (value != null) {
                    vmSchedule.updateCheckboxValue2(value);
                  }
                }),
                cmCheckBoxRow(
                    "I have appropriate  licence", vmSchedule.checkboxValue3,
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
                                    color: Colors.grey.shade700,
                                    fontSize: 10.sp),
                              ),
                              TextSpan(
                                text: ' MUST NOT be operated  ',
                                style: TextStyle(
                                    color: Colors.red, fontSize: 10.sp),
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
                                    color: Colors.grey.shade700,
                                    fontSize: 10.sp),
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
                    showPopup(context,
                        vmSchedule.selectedWarningSystemValue ?? "", 2);
                  },
                ),
                cmCheckBoxRow2(
                  context,
                  "Steering",
                  vmSchedule.selectedSteeringValue ?? "",
                  onTap: () {
                    showPopup(
                        context, vmSchedule.selectedSteeringValue ?? "", 3);
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
                    showPopup(context,
                        vmSchedule.selectedHandBreakAlarmValue ?? "", 5);
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
                    showPopup(context,
                        vmSchedule.selectedRevAlarmCameraValue ?? "", 8);
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
                    showPopup(context,
                        vmSchedule.selectedLightBeaconsValue ?? "", 11);
                  },
                ),
                cmCheckBoxRow2(
                  context,
                  "Hazards Lights",
                  vmSchedule.selectedHazardsLightsValue ?? "",
                  onTap: () {
                    showPopup(context,
                        vmSchedule.selectedHazardsLightsValue ?? "", 12);
                  },
                ),
                cmCheckBoxRow2(
                  context,
                  "Rims & Wheel Nuts",
                  vmSchedule.selectedRimsWheelNutsValue ?? "",
                  onTap: () {
                    showPopup(context,
                        vmSchedule.selectedRimsWheelNutsValue ?? "", 13);
                  },
                ),
                cmCheckBoxRow2(
                  context,
                  "Coolant",
                  vmSchedule.selectedCoolantValue ?? "",
                  onTap: () {
                    showPopup(
                        context, vmSchedule.selectedCoolantValue ?? "", 14);
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
                    showPopup(
                        context, vmSchedule.selectedWipersValue ?? "", 18);
                  },
                ),
                cmCheckBoxRow2(
                  context,
                  "Fuel Level Pumb",
                  vmSchedule.selectedFuelLevelPumbValue ?? "",
                  onTap: () {
                    showPopup(context,
                        vmSchedule.selectedFuelLevelPumbValue ?? "", 19);
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
                    showPopup(context,
                        vmSchedule.selectedSeatSeatBeltValue ?? "", 21);
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
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: const Text('Accessories &Fittings'),
                ),
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
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fire Extinguisher(Date Calibrated):',
                        style: TextStyle(fontSize: 10.sp),
                      ),
                      if (vmSchedule.selectedFireExtinguisherDate != null)
                        Text(
                          DateFormat('dd-MM-yyyy')
                              .format(vmSchedule.selectedFireExtinguisherDate!),
                          style: TextStyle(fontSize: 10.sp),
                        ),
                      datePicker(
                          context,
                          vmSchedule.selectedFireExtinguisherDate,
                          (date) => vmSchedule.datePickerFn(date))
                    ],
                  ),
                ),
                cmCheckBoxRow3(
                    "Garden Hose", vmSchedule.selectGardenHoseCheckbox,
                    onChanged: (bool? value) {
                  if (value != null) {
                    vmSchedule.updateCheckboxValueFn5(value);
                  }
                }),
                cmCheckBoxRow3(
                    "Gattic Lifters", vmSchedule.selectGatticCheckbox,
                    onChanged: (bool? value) {
                  if (value != null) {
                    vmSchedule.updateCheckboxValueFn6(value);
                  }
                }),
                cmCheckBoxRow3(
                    "Bucket/Rags", vmSchedule.selectBucketRagsCheckbox,
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
                        TextField(
                          controller: vmSchedule.faultsReportCntrller,
                          decoration: const InputDecoration(
                            hintText: 'Type Here...',
                            border: InputBorder.none,
                          ),
                          style: const TextStyle(),
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
                      value: vmSchedule.selectverifyCheckbox1,
                      onChanged: (bool? value) {
                        if (value != null) {
                          vmSchedule.updateCheckboxValueFn9(value);
                        }
                      },
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
                      value: vmSchedule.selectverifyCheckbox2,
                      onChanged: (bool? value) {
                        if (value != null) {
                          vmSchedule.updateCheckboxValueFn10(value);
                        }
                      },
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
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: 100.w,
                    child: ElevatedButton(
                      onPressed: () {
                        if (vmSchedule.showSubmitButton == true) {
                          cmSubmitFn(context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: vmSchedule.showSubmitButton
                            ? Colors.blue
                            : Colors.blue.shade100,
                        backgroundColor: vmSchedule.showSubmitButton
                            ? Colors.blue
                            : Colors.blue.shade100,
                        side: BorderSide(
                            color: vmSchedule.showSubmitButton
                                ? Colors.blue
                                : Colors.blue.shade100),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(8.h),
                        child: res.loading
                            ? SizedBox(
                                height: 12.w,
                                width: 12.w,
                                child: const CircularProgressIndicator(
                                  strokeWidth: 2,
                                  color: Colors.white,
                                ),
                              )
                            : Text(
                                'Submit',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10.sp),
                              ),
                      ),
                    ),
                  ),
                ),
                sized0hx15
              ],
            );
          }),
        ),
      ),
    );
  }

  cmSubmitFn(BuildContext context) {
    vmSchedule.updatePreInspectionSchedule(
        context: context,
        data: VehicleModel(
            vehicle: vmSchedule.shedulecardResponse.data?[index]
                .drivers?[driversIndex].vehicleId,
            registration:
                vmSchedule.shedulecardResponse.data?[index].vehicle?.toString(),
            odometer: vmSchedule.odometerCntrller.text != ""
                ? int.parse(vmSchedule.odometerCntrller.text)
                : null,
            driverName: vmSchedule
                .shedulecardResponse.data?[index].drivers?[driversIndex].name,
            hourMeterStart: vmSchedule.hoursMeterCntrller.text,
            fitForWork: vmSchedule.checkboxValue,
            validDrivingLicense: vmSchedule.checkboxValue2,
            appropriatePpe: vmSchedule.checkboxValue3,
            engineOilLevel: vmSchedule.selectedEngineOilValue == "No issue"
                ? "null"
                : vmSchedule.selectedEngineOilValue == "categoryA"
                    ? "true"
                    : "false",
            warningSystem: vmSchedule.selectedWarningSystemValue == "No issue"
                ? "null"
                : vmSchedule.selectedWarningSystemValue == "categoryA"
                    ? "true"
                    : "false",
            steering: vmSchedule.selectedSteeringValue == "No issue"
                ? "null"
                : vmSchedule.selectedSteeringValue == "categoryA"
                    ? "true"
                    : "false",
            safetyEmergStop: vmSchedule.selectedSafetyEmergValue == "No issue"
                ? "null"
                : vmSchedule.selectedSafetyEmergValue == "categoryA"
                    ? "true"
                    : "false",
            handbreakAlarm: vmSchedule.selectedHandBreakAlarmValue == "No issue"
                ? "null"
                : vmSchedule.selectedHandBreakAlarmValue == "categoryA"
                    ? "true"
                    : "false",
            ptoVacpump: vmSchedule.selectedPTOVacValue == "No issue"
                ? "null"
                : vmSchedule.selectedPTOVacValue == "categoryA"
                    ? "true"
                    : "false",
            horn: vmSchedule.selectedHornValue == "No issue"
                ? "null"
                : vmSchedule.selectedHornValue == "categoryA"
                    ? "true"
                    : "false",
            revAlarmCamera: vmSchedule.selectedRevAlarmCameraValue == "No issue"
                ? "null"
                : vmSchedule.selectedRevAlarmCameraValue == "categoryA"
                    ? "true"
                    : "false",
            lightsHead: vmSchedule.selectedLightsHeadValue == "No issue"
                ? "null"
                : vmSchedule.selectedLightsHeadValue == "categoryA"
                    ? "true"
                    : "false",
            lightsTail: vmSchedule.selectedLightsTailValue == "No issue"
                ? "null"
                : vmSchedule.selectedLightsTailValue == "categoryA"
                    ? "true"
                    : 'false',
            lightBeacons: vmSchedule.selectedLightBeaconsValue == "No issue"
                ? "null"
                : vmSchedule.selectedLightBeaconsValue == "categoryA"
                    ? 'true'
                    : "false",
            hazardLight: vmSchedule.selectedHazardsLightsValue == "No issue"
                ? "null"
                : vmSchedule.selectedHazardsLightsValue == "categoryA"
                    ? "true"
                    : "false",
            rimsWheelnut: vmSchedule.selectedRimsWheelNutsValue == "No issue"
                ? "null"
                : vmSchedule.selectedRimsWheelNutsValue == "categoryA"
                    ? "true"
                    : "false",
            coolant: vmSchedule.selectedCoolantValue == "No issue"
                ? "null"
                : vmSchedule.selectedCoolantValue == "categoryA"
                    ? "true"
                    : "false",
            wheels: vmSchedule.selectedWheelsTyresValue == "No issue"
                ? "null"
                : vmSchedule.selectedWheelsTyresValue == "categoryA"
                    ? "true"
                    : "false",
            mirrorWindowscreen:
                vmSchedule.selectedMirrorsWindscreenValue == "No issue"
                    ? "null"
                    : vmSchedule.selectedMirrorsWindscreenValue == "categoryA"
                        ? "true"
                        : "false",
            structureBodywork:
                vmSchedule.selectedStructureBodywrkValue == "No issue"
                    ? "null"
                    : vmSchedule.selectedStructureBodywrkValue == "categoryA"
                        ? "true"
                        : "false",
            wipers: vmSchedule.selectedWipersValue == "No issue"
                ? "null"
                : vmSchedule.selectedWipersValue == "categoryA"
                    ? "true"
                    : "false",
            fuelLevelpump: vmSchedule.selectedFuelLevelPumbValue == "No issue"
                ? "null"
                : vmSchedule.selectedFuelLevelPumbValue == "categoryA"
                    ? "true"
                    : "false",
            fuelLeveltruck: vmSchedule.selectedFuelLevelTruckValue == "No issue"
                ? "null"
                : vmSchedule.selectedFuelLevelTruckValue == "categoryA"
                    ? "true"
                    : "false",
            seatSeatbelt: vmSchedule.selectedSeatSeatBeltValue == "No issue"
                ? "null"
                : vmSchedule.selectedSeatSeatBeltValue == "categoryA"
                    ? "true"
                    : "false",
            parkbrakeTrailer: vmSchedule.selectedParkBarkeValue == "No issue"
                ? "null"
                : vmSchedule.selectedParkBarkeValue == "categoryA"
                    ? "true"
                    : "false",
            footBrake: vmSchedule.selectedFootBrakeValue == "No issue"
                ? "null"
                : vmSchedule.selectedFootBrakeValue == "categoryA"
                    ? "true"
                    : "false",
            electrical: vmSchedule.selectedElectricalValue == "No issue"
                ? "null"
                : vmSchedule.selectedElectricalValue == "categoryA"
                    ? "true"
                    : "false",
            hoses: vmSchedule.selectHosesCheckbox,
            fittings: vmSchedule.selectFittingsCheckbox,
            firstAidKit: vmSchedule.selectFirstAidKitCheckbox,
            ppe: vmSchedule.selectPPECheckbox,
            fireExtinguisherDate:
                vmSchedule.selectedFireExtinguisherDate != null
                    ? DateFormat('yyyy-MM-dd')
                        .format(vmSchedule.selectedFireExtinguisherDate!)
                    : null,
            gardenHose: vmSchedule.selectGardenHoseCheckbox,
            gaticLifters: vmSchedule.selectGatticCheckbox,
            bucketRags: vmSchedule.selectBucketRagsCheckbox,
            spillKit: vmSchedule.selectSpillKitCheckbox,
            reportedFaultString: vmSchedule.faultsReportCntrller,
            safeReadyToOperate: vmSchedule.selectverifyCheckbox1,
            reportedFaults: vmSchedule.selectverifyCheckbox2));
  }
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
                        vmSchedule.preInspectionSubmitButtonValidation();
                      },
                      decoration:
                          const InputDecoration(border: InputBorder.none),
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
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
  String value, {
  required void Function()? onTap,
}) {
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
                    activeColor: Colors.green.shade900,
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
