import 'package:auto_route/auto_route.dart';
import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_dropdown_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_edit_page.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/date_picker.dart';
import 'package:enviro_mobile_application/view/10_shedule/schedule_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmn_title_textwidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

@RoutePage()
class VehicleAddPreInspectionPage extends StatelessWidget {
  const VehicleAddPreInspectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Add Pre Inspection'),
      ),
      body: SingleChildScrollView(
        padding: screenWidth,
        child: Observer(builder: (context) {
          vmVehicle.preInspectionSubmitButtonValidation();
          final res = vmVehicle.addPreInspectionVehicleResponse;
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
              expandedRowShowWidget(
                  "Vehicle Registration",
                  const VehicleListDropDown(
                    fromAddMaintenance: true,
                  )),
              requiredRowWidget("Odometer", "",
                  fromType: true, controller: vmVehicle.odometerCntrller),
              requiredRowWidget(
                "Driver's name",
                "Auto Fetch",
                fromType: false,
              ),
              requiredRowWidget("Hour Meter Start", "",
                  fromType: true, controller: vmVehicle.hoursMeterCntrller),
              cmCheckBoxRow("I am Fit for Work", vmVehicle.checkboxValue,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValue(value);
                }
              }),
              cmCheckBoxRow(
                  "I have approriate valid  licence", vmVehicle.checkboxValue2,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValue2(value);
                }
              }),
              cmCheckBoxRow("Appropriate PPE for operation of this vehicle",
                  vmVehicle.checkboxValue3, onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValue3(value);
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
                vmVehicle.selectedEngineOilValue ?? "",
                onTap: () {
                  showPopup(context, vmVehicle.selectedEngineOilValue ?? "", 1);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Warning System",
                vmVehicle.selectedWarningSystemValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedWarningSystemValue ?? "", 2);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Steering",
                vmVehicle.selectedSteeringValue ?? "",
                onTap: () {
                  showPopup(context, vmVehicle.selectedSteeringValue ?? "", 3);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Safety/Emerg Stops",
                vmVehicle.selectedSafetyEmergValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedSafetyEmergValue ?? "", 4);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Hand Break Alarm",
                vmVehicle.selectedHandBreakAlarmValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedHandBreakAlarmValue ?? "", 5);
                },
              ),
              cmCheckBoxRow2(
                context,
                "PTO/Vac.Pumb",
                vmVehicle.selectedPTOVacValue ?? "",
                onTap: () {
                  showPopup(context, vmVehicle.selectedPTOVacValue ?? "", 6);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Horn",
                vmVehicle.selectedHornValue ?? "",
                onTap: () {
                  showPopup(context, vmVehicle.selectedHornValue ?? "", 7);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Rev alarm/Camera",
                vmVehicle.selectedRevAlarmCameraValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedRevAlarmCameraValue ?? "", 8);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Lights-Head",
                vmVehicle.selectedLightsHeadValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedLightsHeadValue ?? "", 9);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Lights-Tail",
                vmVehicle.selectedLightsTailValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedLightsTailValue ?? "", 10);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Light-beacons",
                vmVehicle.selectedLightBeaconsValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedLightBeaconsValue ?? "", 11);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Hazards Lights",
                vmVehicle.selectedHazardsLightsValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedHazardsLightsValue ?? "", 12);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Rims & Wheel Nuts",
                vmVehicle.selectedRimsWheelNutsValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedRimsWheelNutsValue ?? "", 13);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Coolant",
                vmVehicle.selectedCoolantValue ?? "",
                onTap: () {
                  showPopup(context, vmVehicle.selectedCoolantValue ?? "", 14);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Wheels & Tyres",
                vmVehicle.selectedWheelsTyresValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedWheelsTyresValue ?? "", 15);
                },
              ),
              Observer(builder: (context) {
                return cmCheckBoxRow2(
                  context,
                  "Mirrors & Windscreen",
                  vmVehicle.selectedMirrorsWindscreenValue ?? "",
                  onTap: () {
                    showPopup(context,
                        vmVehicle.selectedMirrorsWindscreenValue ?? "", 16);
                  },
                );
              }),
              cmCheckBoxRow2(
                context,
                "Structure & Bodywork",
                vmVehicle.selectedStructureBodywrkValue ?? "",
                onTap: () {
                  showPopup(context,
                      vmVehicle.selectedStructureBodywrkValue ?? "", 17);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Wipers",
                vmVehicle.selectedWipersValue ?? "",
                onTap: () {
                  showPopup(context, vmVehicle.selectedWipersValue ?? "", 18);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Fuel Level Pumb",
                vmVehicle.selectedFuelLevelPumbValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedFuelLevelPumbValue ?? "", 19);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Fuel Level Truck",
                vmVehicle.selectedFuelLevelTruckValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedFuelLevelTruckValue ?? "", 20);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Seat/Seat Belt",
                vmVehicle.selectedSeatSeatBeltValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedSeatSeatBeltValue ?? "", 21);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Park Barke/Trailer",
                vmVehicle.selectedParkBarkeValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedParkBarkeValue ?? "", 22);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Foot Brake",
                vmVehicle.selectedFootBrakeValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedFootBrakeValue ?? "", 23);
                },
              ),
              cmCheckBoxRow2(
                context,
                "Electrical",
                vmVehicle.selectedElectricalValue ?? "",
                onTap: () {
                  showPopup(
                      context, vmVehicle.selectedElectricalValue ?? "", 24);
                },
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: const Text('Accessories &Fittings'),
              ),
              cmCheckBoxRow3("Hoses", vmVehicle.selectHosesCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValueFn1(value);
                }
              }),
              cmCheckBoxRow3("Fittings", vmVehicle.selectFittingsCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValueFn2(value);
                }
              }),
              cmCheckBoxRow3(
                  "First Aid Kit", vmVehicle.selectFirstAidKitCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValueFn3(value);
                }
              }),
              cmCheckBoxRow3("PPE", vmVehicle.selectPPECheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValueFn4(value);
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
                    if (vmVehicle.selectedFireExtinguisherDate != null)
                      Text(
                        DateFormat('dd-MM-yyyy')
                            .format(vmVehicle.selectedFireExtinguisherDate!),
                        style: TextStyle(fontSize: 10.sp),
                      ),
                    datePicker(context, vmVehicle.selectedFireExtinguisherDate,
                        (date) => vmVehicle.fireExtinquisherDatePickerFn(date))
                  ],
                ),
              ),
              cmCheckBoxRow3("Garden Hose", vmVehicle.selectGardenHoseCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValueFn5(value);
                }
              }),
              cmCheckBoxRow3("Gattic Lifters", vmVehicle.selectGatticCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValueFn6(value);
                }
              }),
              cmCheckBoxRow3("Bucket/Rags", vmVehicle.selectBucketRagsCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValueFn7(value);
                }
              }),
              cmCheckBoxRow3("Spill Kit", vmVehicle.selectSpillKitCheckbox,
                  onChanged: (bool? value) {
                if (value != null) {
                  vmVehicle.updateCheckboxValueFn8(value);
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
                        controller: vmVehicle.faultsReportCntrller,
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
                    value: vmVehicle.selectverifyCheckbox1,
                    onChanged: (bool? value) {
                      if (value != null) {
                        vmVehicle.updateCheckboxValueFn9(value);
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
                    value: vmVehicle.selectverifyCheckbox2,
                    onChanged: (bool? value) {
                      if (value != null) {
                        vmVehicle.updateCheckboxValueFn10(value);
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
                              value: vmVehicle.selectverifyCheckbox3,
                              onChanged: (bool? value) {
                                if (value != null) {
                                  vmVehicle.updateCheckboxValueFn11(value);
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
                                  value: vmVehicle.selectverifyCheckbox4,
                                  onChanged: (bool? value) {
                                    if (value != null) {
                                      vmVehicle.updateCheckboxValueFn12(value);
                                    }
                                  },
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
                                  value: vmVehicle.selectverifyCheckbox5,
                                  onChanged: (bool? value) {
                                    if (value != null) {
                                      vmVehicle.updateCheckboxValueFn13(value);
                                    }
                                  },
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
                              value: vmVehicle.selectverifyCheckbox6,
                              onChanged: (bool? value) {
                                if (value != null) {
                                  vmVehicle.updateCheckboxValueFn14(value);
                                }
                              },
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
                              value: vmVehicle.selectverifyCheckbox7,
                              onChanged: (bool? value) {
                                if (value != null) {
                                  vmVehicle.updateCheckboxValueFn15(value);
                                }
                              },
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
              sized0hx10,
              Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {
                    if (vmVehicle.showSubmitButton == true) {
                      cmSubmitFn(context);
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: vmVehicle.showSubmitButton
                        ? Colors.blue
                        : Colors.blue.shade100,
                    backgroundColor: vmVehicle.showSubmitButton
                        ? Colors.blue
                        : Colors.blue.shade100,
                    side: BorderSide(
                        color: vmVehicle.showSubmitButton
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
                            style:
                                TextStyle(color: Colors.white, fontSize: 10.sp),
                          ),
                  ),
                ),
              ),
              sized0hx20
            ],
          );
        }),
      ),
    );
  }

  cmSubmitFn(BuildContext context) {
    vmVehicle.addPreInspectionVehicleApi(
        context: context,
        data: VehicleModel(
            vehicle: vmVehicle.selectedVehicleAddMaintenanceId != 0 &&
                    vmVehicle.selectedVehicleAddMaintenanceId != null
                ? vmVehicle.selectedVehicleAddMaintenanceId
                : vmVehicle.selectedVehicleAddMaintenance?.id,
            odometer: vmVehicle.odometerCntrller.text != ""
                ? int.parse(vmVehicle.odometerCntrller.text)
                : null,
            hourMeterStart: vmVehicle.hoursMeterCntrller.text,
            fitForWork: vmVehicle.checkboxValue,
            validDrivingLicense: vmVehicle.checkboxValue2,
            appropriatePpe: vmVehicle.checkboxValue3,
            engineOilLevel: vmVehicle.selectedEngineOilValue == "No issue"
                ? "null"
                : vmVehicle.selectedEngineOilValue == "categoryA"
                    ? "true"
                    : "false",
            warningSystem: vmVehicle.selectedWarningSystemValue == "No issue"
                ? "null"
                : vmVehicle.selectedWarningSystemValue == "categoryA"
                    ? "true"
                    : "false",
            steering: vmVehicle.selectedSteeringValue == "No issue"
                ? "null"
                : vmVehicle.selectedSteeringValue == "categoryA"
                    ? "true"
                    : "false",
            safetyEmergStop: vmVehicle.selectedSafetyEmergValue == "No issue"
                ? "null"
                : vmVehicle.selectedSafetyEmergValue == "categoryA"
                    ? "true"
                    : "false",
            handbreakAlarm: vmVehicle.selectedHandBreakAlarmValue == "No issue"
                ? "null"
                : vmVehicle.selectedHandBreakAlarmValue == "categoryA"
                    ? "true"
                    : "false",
            ptoVacpump: vmVehicle.selectedPTOVacValue == "No issue"
                ? "null"
                : vmVehicle.selectedPTOVacValue == "categoryA"
                    ? "true"
                    : "false",
            horn: vmVehicle.selectedHornValue == "No issue"
                ? "null"
                : vmVehicle.selectedHornValue == "categoryA"
                    ? "true"
                    : "false",
            revAlarmCamera: vmVehicle.selectedRevAlarmCameraValue == "No issue"
                ? "null"
                : vmVehicle.selectedRevAlarmCameraValue == "categoryA"
                    ? "true"
                    : "false",
            lightsHead: vmVehicle.selectedLightsHeadValue == "No issue"
                ? "null"
                : vmVehicle.selectedLightsHeadValue == "categoryA"
                    ? "true"
                    : "false",
            lightsTail: vmVehicle.selectedLightsTailValue == "No issue"
                ? "null"
                : vmVehicle.selectedLightsTailValue == "categoryA"
                    ? "true"
                    : "false",
            lightBeacons: vmVehicle.selectedLightBeaconsValue == "No issue"
                ? "null"
                : vmVehicle.selectedLightBeaconsValue == "categoryA"
                    ? "true"
                    : "false",
            hazardLight: vmVehicle.selectedHazardsLightsValue == "No issue"
                ? "null"
                : vmVehicle.selectedHazardsLightsValue == "categoryA"
                    ? "true"
                    : "false",
            rimsWheelnut: vmVehicle.selectedRimsWheelNutsValue == "No issue"
                ? "null"
                : vmVehicle.selectedRimsWheelNutsValue == "categoryA"
                    ? "true"
                    : "false",
            coolant: vmVehicle.selectedCoolantValue == "No issue"
                ? "null"
                : vmVehicle.selectedCoolantValue == "categoryA"
                    ? "true"
                    : "false",
            wheels: vmVehicle.selectedWheelsTyresValue == "No issue"
                ? "null"
                : vmVehicle.selectedWheelsTyresValue == "categoryA"
                    ? "true"
                    : "false",
            mirrorWindowscreen:
                vmVehicle.selectedMirrorsWindscreenValue == "No issue"
                    ? "null"
                    : vmVehicle.selectedMirrorsWindscreenValue == "categoryA"
                        ? "true"
                        : "false",
            structureBodywork:
                vmVehicle.selectedStructureBodywrkValue == "No issue"
                    ? "null"
                    : vmVehicle.selectedStructureBodywrkValue == "categoryA"
                        ? "true"
                        : "false",
            wipers: vmVehicle.selectedWipersValue == "No issue"
                ? "null"
                : vmVehicle.selectedWipersValue == "categoryA"
                    ? "true"
                    : "false",
            fuelLevelpump: vmVehicle.selectedFuelLevelPumbValue == "No issue"
                ? "null"
                : vmVehicle.selectedFuelLevelPumbValue == "categoryA"
                    ? "true"
                    : "false",
            fuelLeveltruck: vmVehicle.selectedFuelLevelTruckValue == "No issue"
                ? "null"
                : vmVehicle.selectedFuelLevelTruckValue == "categoryA"
                    ? "true"
                    : "false",
            seatSeatbelt: vmVehicle.selectedSeatSeatBeltValue == "No issue"
                ? "null"
                : vmVehicle.selectedSeatSeatBeltValue == "categoryA"
                    ? "true"
                    : "false",
            parkbrakeTrailer: vmVehicle.selectedParkBarkeValue == "No issue"
                ? "null"
                : vmVehicle.selectedParkBarkeValue == "categoryA"
                    ? "true"
                    : "false",
            footBrake: vmVehicle.selectedFootBrakeValue == "No issue"
                ? "null"
                : vmVehicle.selectedFootBrakeValue == "categoryA"
                    ? "true"
                    : "false",
            electrical: vmVehicle.selectedElectricalValue == "No issue"
                ? "null"
                : vmVehicle.selectedElectricalValue == "categoryA"
                    ? "true"
                    : "false",
            hoses: vmVehicle.selectHosesCheckbox,
            fittings: vmVehicle.selectFittingsCheckbox,
            firstAidKit: vmVehicle.selectFirstAidKitCheckbox,
            ppe: vmVehicle.selectPPECheckbox,
            fireExtinguisherDate: vmVehicle.selectedFireExtinguisherDate != null
                ? DateFormat('yyyy-MM-dd')
                    .format(vmVehicle.selectedFireExtinguisherDate!)
                : null,
            gardenHose: vmVehicle.selectGardenHoseCheckbox,
            gaticLifters: vmVehicle.selectGatticCheckbox,
            bucketRags: vmVehicle.selectBucketRagsCheckbox,
            spillKit: vmVehicle.selectSpillKitCheckbox,
            reportedFaultString: vmVehicle.faultsReportCntrller,
            safeReadyToOperate: vmVehicle.selectverifyCheckbox1,
            reportedFaults: vmVehicle.selectverifyCheckbox2,
            reviewedForm: vmVehicle.selectverifyCheckbox3,
            corrected: vmVehicle.selectverifyCheckbox4,
            noAction: vmVehicle.selectverifyCheckbox5,
            scheduledForRepair: vmVehicle.selectverifyCheckbox6,
            doNotAffectSafeOperation: vmVehicle.selectverifyCheckbox7,
            vehicleType: vmVehicle.vehicleType == VehicleType.truck
                ? "truck"
                : vmVehicle.vehicleType == VehicleType.car
                    ? "car"
                    : "fork-lift",
            tabType: "waste"));
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
                        vmVehicle.preInspectionSubmitButtonValidation();
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
