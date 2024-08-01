import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_dropdown_widget.dart';
import 'package:enviro_mobile_application/view/08_team/team_edit_page.dart';
import 'package:enviro_mobile_application/view/08_team/team_widgets/cm_textfield_widget.dart';
import 'package:enviro_mobile_application/view/08_team/time_sheet_edit_page.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/cm_show_toast.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import '../../widgets/cmn_title_textwidget.dart';
import '../../model/03_vehicle/vehicle_model/vehicle_model.dart';

@RoutePage()
class EditFuelExpensePage extends StatelessWidget {
  final VehicleModel data;
  const EditFuelExpensePage({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: cmnTitleWidget('Edit FuelExpense'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.grey)),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(children: [
                      expandedRowShowWidget(
                          "Vehicle",
                          const VehicleListDropDown(
                            fromAddMaintenance: true,
                          )),
                      expandedRowShowWidget(
                          "Date",
                          Observer(
                              builder: (context) => cmDatePicker(
                                  context,
                                  "",
                                  vmVehicle.selectedFuelExpenseDate,
                                  (date) => vmVehicle.datePickerFn5(date)))),
                      expandedRowShowWidget(
                          "Time",
                          Observer(
                              builder: (context) => Row(
                                    children: [
                                      Text(
                                        vmVehicle.selectedFuelExpenseTime !=
                                                null
                                            ? formatTimeOfDay(vmVehicle
                                                .selectedFuelExpenseTime!)
                                            : "",
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                      cmTimePicker(
                                          context,
                                          vmVehicle.selectedFuelExpenseTime,
                                          (time) =>
                                              vmVehicle.timePickerFn(time)),
                                    ],
                                  ))),
                      expandedRowShowWidget(
                          vmVehicle.vehicleType == VehicleType.truck
                              ? 'Truck Rego'
                              : vmVehicle.vehicleType == VehicleType.car
                                  ? 'Car Rego'
                                  : 'Forklift Rego',
                          cmTextFormField(
                              controller: vmVehicle.regoCntrlr,
                              hintText: "rego",
                              keyboardType:
                                  const TextInputType.numberWithOptions())),
                      expandedRowShowWidget(
                          "Filled By",
                          cmTextFormField(
                              controller: vmVehicle.filledByCntrlr,
                              hintText: "filled by",
                              keyboardType:
                                  const TextInputType.numberWithOptions())),
                      expandedRowShowWidget(
                          "Current Reading",
                          cmTextFormField(
                              controller: vmVehicle.currentReadingCntrlr,
                              hintText: "current reading",
                              keyboardType:
                                  const TextInputType.numberWithOptions())),
                      expandedRowShowWidget(
                          "Reading After",
                          cmTextFormField(
                              controller: vmVehicle.readingAfterCntrlr,
                              hintText: "reading after",
                              keyboardType:
                                  const TextInputType.numberWithOptions())),
                      expandedRowShowWidget(
                          "Volume used in Litres",
                          cmTextFormField(
                              controller: vmVehicle.volumeCntrlr,
                              hintText: "volume",
                              keyboardType:
                                  const TextInputType.numberWithOptions())),
                      Observer(builder: (context) {
                        return CmButton(
                          text: "Save",
                          height: 35.w,
                          width: 120.w,
                          color: Appthemes.cPrimary,
                          indicatorColor: Colors.white,
                          loading: vmVehicle.editeFuelExpenseResponse.loading,
                          onPressed: () {
                            cmSaveFn(context);
                          },
                        );
                      })
                    ])),
              ),
            ],
          ),
        ),
      ),
    );
  }

  cmSaveFn(BuildContext context) {
    if (vmVehicle.regoCntrlr.text.isNotEmpty &&
        vmVehicle.selectedFuelExpenseDate != null &&
        vmVehicle.selectedFuelExpenseTime != null &&
        vmVehicle.filledByCntrlr.text.isNotEmpty &&
        vmVehicle.currentReadingCntrlr.text.isNotEmpty &&
        vmVehicle.readingAfterCntrlr.text.isNotEmpty &&
        vmVehicle.volumeCntrlr.text.isNotEmpty) {
      vmVehicle.editeFuelExpenseApi(
        vehicleId: data.id ?? 0,
        context: context,
        data: VehicleModel(
          vehicle: vmVehicle.selectedVehicleAddMaintenanceId != 0 &&
                  vmVehicle.selectedVehicleAddMaintenanceId != null
              ? vmVehicle.selectedVehicleAddMaintenanceId
              : vmVehicle.selectedVehicleAddMaintenance?.id,
          date: DateFormat('yyyy-MM-dd')
              .format(vmVehicle.selectedFuelExpenseDate!),
          time: formatTimeOfDay24hrFormat(vmVehicle.selectedFuelExpenseTime!),
          truckRego: vmVehicle.regoCntrlr.text,
          filledBy: vmVehicle.filledByCntrlr.text,
          currentReadingBefore: vmVehicle.currentReadingCntrlr.text,
          readingAfterFilling: vmVehicle.readingAfterCntrlr.text,
          volumeUsedInLiter: vmVehicle.volumeCntrlr.text,
        ),
      );
    } else {
      showToast(context, msg: "Please fill all the fields", color: Colors.red);
    }
  }
}
