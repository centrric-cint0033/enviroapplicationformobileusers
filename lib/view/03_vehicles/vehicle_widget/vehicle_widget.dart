import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:enviro_mobile_application/widgets/show_confirmation_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

final gapFieldVeh = sized0hx05;

Row rowButton(
        {required Function() editOntap, required Function() deleteOntap}) =>
    Row(
      children: [
        const Expanded(child: SizedBox()),
        expandedButton('Edit', editOntap),
        sized0wx10,
        expandedButton('Delete', deleteOntap),
      ],
    );

Expanded expandedButton(String text, Function() ontap) => Expanded(
      child: CmButton(
        text: text,
        height: 25.w,
        onPressed: ontap,
        borderColor: Colors.grey,
        color: Colors.white,
        textcolor: Colors.black,
      ),
    );

Widget showData(
    {required BuildContext context,
    VehicleModel? data,
    VehicleActionType? status,
    bool fromPreInspection = false,
    void Function()? folderOnPressed,
    required dynamic Function() editOntapMaintenance,
    required dynamic Function() editOntapFuelExpense}) {
  return Container(
    decoration: BoxDecoration(
        border: Border.all(color: Appthemes.cPrimary),
        borderRadius: BorderRadius.circular(6)),
    child: Padding(
      padding: EdgeInsets.only(left: 8.w, right: 8.w),
      child: Column(children: [
        sized0hx10,
        if (vmVehicle.vehicleStatusType == VehicleActionType.vehicleList ||
            vmVehicle.vehicleStatusType == VehicleActionType.maintenanceCheck)
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CmButton(
                height: 25.w,
                text: 'Folders',
                onPressed: folderOnPressed,
              ),
            ],
          ),
        if (vmVehicle.vehicleStatusType == VehicleActionType.vehicleList) ...[
          sized0hx05,
          expandedRowShowText('Registration no', data?.registration ?? ""),
          sized0hx05,
          expandedRowShowText(
              'RegoDue', DateFormat.yMMMMd().format(data!.editedDateTime!)),
          sized0hx05,
          expandedRowShowText('Type', data.types ?? ""),
          sized0hx05,
          expandedRowShowText('Year', '${data.year ?? ""}')
        ] else if (vmVehicle.vehicleStatusType ==
            VehicleActionType.preInspectionCheck) ...[
          expandedRowShowText('Registration no', data?.registration ?? ""),
          sized0hx05,
          expandedRowShowText('Driver name', '${data?.driverName}'),
          sized0hx05,
          if (data?.dateTime != null)
            expandedRowShowText(
                'Date', DateFormat('dd-MM-yyyy').format(data!.dateTime!)),
          sized0hx05,
          expandedRowShowText('Odometer', '${data?.odometer ?? ""}'),
        ] else if (vmVehicle.vehicleStatusType ==
            VehicleActionType.maintenanceCheck) ...[
          sized0hx05,
          expandedRowShowText('Registration no', data!.registration ?? ""),
          sized0hx05,
          expandedRowShowText('Description', data.description ?? ""),
          sized0hx05,
          expandedRowShowText('Service Provided', data.serviceProvided ?? ""),
          sized0hx05,
          expandedRowShowText('Invoice Date', data.invoiceDate ?? ""),
          sized0hx05,
          expandedRowShowText('Service Date', data.serviceDate ?? ""),
          sized0hx05,
          expandedRowShowText('Ometer', data.ometer ?? ""),
          sized0hx05,
          expandedRowShowText('Invoice No', "${data.invoiceNumber ?? ""}"),
          sized0hx05,
          expandedRowShowText('Hours', data.hours ?? ""),
          sized0hx05,
          expandedRowShowText('Labour Cost', data.lCost ?? ""),
          sized0hx05,
          expandedRowShowText('Spare Parts', data.sPart ?? ""),
          sized0hx05,
          expandedRowShowText('GST', data.gst ?? ""),
          sized0hx05,
          expandedRowShowText('Total Cost', data.totalCost ?? ""),
          sized0hx05,
          rowButton(
              editOntap: editOntapMaintenance,
              deleteOntap: () {
                showConfirmationAlert(
                    context: context,
                    content: "Do you really want to delete these data?",
                    submitText: "Yes",
                    submitText2: "No",
                    onSubmit: () {
                      vmVehicle.deleteMaintenanceReportApi(
                        context: context,
                        vehicleId: data.id ?? 0,
                      );
                    });
              })
        ] else if (vmVehicle.vehicleStatusType ==
            VehicleActionType.fuelExpence) ...[
          sized0hx05,
          expandedRowShowText('Registration no', data!.registration ?? ""),
          sized0hx05,
          expandedRowShowText('Date', data.date ?? ""),
          sized0hx05,
          expandedRowShowText('Time', convertTo12HourFormat(data.time ?? "")),
          sized0hx05,
          expandedRowShowText(
              vmVehicle.vehicleType == VehicleType.truck
                  ? 'Truck Rego'
                  : vmVehicle.vehicleType == VehicleType.car
                      ? 'Car Rego'
                      : 'Forklift Rego',
              data.truckRego ?? ""),
          sized0hx05,
          expandedRowShowText('Filled By', data.filledBy ?? " "),
          sized0hx05,
          expandedRowShowText(
              'Current Reading', data.currentReadingBefore ?? ""),
          sized0hx05,
          expandedRowShowText('Reading After', data.readingAfterFilling ?? ""),
          sized0hx05,
          expandedRowShowText(
              'Volume used in Litres', data.volumeUsedInLiter ?? ""),
          sized0hx05,
          rowButton(
              editOntap: editOntapFuelExpense,
              deleteOntap: () {
                showConfirmationAlert(
                    context: context,
                    content: "Do you really want to delete these data?",
                    submitText: "Yes",
                    submitText2: "No",
                    onSubmit: () {
                      vmVehicle.deleteFuelExpenseApi(
                        context: context,
                        vehicleId: data.id ?? 0,
                      );
                    });
              })
        ],
        // if (data?.registration != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Registration no', data!.registration!),
        // ],
        // if (data?.editedDateTime != null) ...[
        //   sized0hx05,
        //   expandedRowShowText(
        //       'RegoDue', DateFormat.yMMMMd().format(data!.editedDateTime!))
        // ],
        // if (data?.types != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Type', data!.types!)
        // ],
        // if (data?.year != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Year', '${data!.year!}')
        // ],
        // if (data?.odometer != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Odometer', '${data?.odometer}')
        // ],
        // if (data?.driverName != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Driver name', '${data?.driverName}')
        // ],
        // if (data?.sPart != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Spareparts', '${data?.sPart}')
        // ],
        // if (data?.dateTime != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Date', '${data?.dateTime}')
        // ],
        // if (data?.serviceDate != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Servicedate', '${data?.serviceDate}')
        // ],
        // if (data?.lCost != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Labourcost', '${data?.lCost}')
        // ],
        // if (data?.totalCost != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Totalcost', '${data?.totalCost}')
        // ],
        // if (data?.time != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Time', '${data?.time}')
        // ],
        // if (data?.filledBy != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Filled By', '${data?.filledBy}')
        // ],
        // if (data?.currentReadingBefore != null) ...[
        //   sized0hx05,
        //   expandedRowShowText(
        //       'Current Reading', '${data?.currentReadingBefore}')
        // ],
        // if (data?.readingAfterFilling != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Reading After', '${data?.readingAfterFilling}')
        // ],
        // if (data?.volumeUsedInLiter != null) ...[
        //   sized0hx05,
        //   expandedRowShowText('Reading After', '${data?.volumeUsedInLiter}')
        // ],
        sized0hx10,
      ]),
    ),
  );
}

class WWdropDown extends StatelessWidget {
  final Function() dropDownTap;
  const WWdropDown({
    super.key,
    required this.newValue,
    required this.dropDownTap,
  });

  final String? newValue;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: Appthemes.cWhite,
        border: Border.all(color: Appthemes.cLightGrey),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            value: newValue,
            onChanged: (String? newValue) {
              if (newValue != null) {
                switch (newValue) {
                  case 'Vehicle list':
                    vmVehicle.dropDownUpdate(
                        VehicleActionType.vehicleList, newValue);
                    break;
                  case 'Pre Inspection check':
                    vmVehicle.dropDownUpdate(
                        VehicleActionType.preInspectionCheck, newValue);
                    break;
                  case 'Maintenance Report':
                    vmVehicle.dropDownUpdate(
                        VehicleActionType.maintenanceCheck, newValue);

                    break;
                  case 'Fuel Expense':
                    vmVehicle.dropDownUpdate(
                        VehicleActionType.fuelExpence, newValue);
                    break;
                }
                if (vmVehicle.vehicleStatusType != null) {
                  dropDownTap();
                }
              }
            },
            items: vehicleOptions.map((String selectedVehicle) {
              return DropdownMenuItem<String>(
                value: selectedVehicle,
                child: Text(selectedVehicle),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

String convertTo12HourFormat(String time) {
  // Parse the time string into a DateTime object
  DateFormat inputFormat = DateFormat("HH:mm");
  DateTime dateTime = inputFormat.parse(time);

  // Format the DateTime object into a 12-hour format with AM/PM
  DateFormat outputFormat = DateFormat.jm(); // 'jm' stands for 'h:mm a'
  return outputFormat.format(dateTime);
}
