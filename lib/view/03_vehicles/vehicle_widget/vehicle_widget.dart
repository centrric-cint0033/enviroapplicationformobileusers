import 'package:enviro_mobile_application/model/03_vehicle/vehicle_model/vehicle_model.dart';
import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/Appthemes.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/02_sales/sales_widgets.dart/sales_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/cmbutton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

final gapFieldVeh = sized0hx05;

Row rowButton() => Row(
      children: [
        const Expanded(child: SizedBox()),
        expandedButton('Edit', () {}),
        sized0wx10,
        expandedButton('Delete', () {}),
      ],
    );

Expanded expandedButton(String text, Function() ontap) => Expanded(
      child: CmButton(text: text, height: 25.w, onPressed: ontap),
    );

Widget showData({VehicleModel? data, VehicleActionType? status}) {
  return buildCardDataOrder(
    [
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CmButton(height: 25.w, text: 'Folders'),
        ],
      ),
      if (data?.registration != null)
        expandedRowShowText('Registration no', data!.registration!),
      if (data?.editedDateTime != null)
        expandedRowShowText(
            'RegoDue', DateFormat.yMMMMd().format(data!.editedDateTime!)),
      if (data?.types != null) expandedRowShowText('Type', data!.types!),
      if (data?.year != null) expandedRowShowText('Year', '${data!.year!}'),
      if (data?.odometer != null)
        expandedRowShowText('odometer', '${data?.odometer}'),
      if (data?.driverName != null)
        expandedRowShowText('Driver name', '${data?.driverName}'),
      if (data?.sPart != null)
        expandedRowShowText('spareparts', '${data?.sPart}'),
      if (data?.dateTime != null)
        expandedRowShowText('date', '${data?.dateTime}'),
      if (data?.serviceDate != null)
        expandedRowShowText('servicedate', '${data?.serviceDate}'),
      if (data?.lCost != null)
        expandedRowShowText('labourcost', '${data?.lCost}'),
      if (data?.totalCost != null)
        expandedRowShowText('totalcost', '${data?.totalCost}'),
      if (data?.time != null) expandedRowShowText('Time', '${data?.time}'),
      if (data?.filledBy != null)
        expandedRowShowText('Filled By', '${data?.filledBy}'),
      if (data?.currentReadingBefore != null)
        expandedRowShowText('Current Reading', '${data?.currentReadingBefore}'),
      if (data?.readingAfterFilling != null)
        expandedRowShowText('Reading After', '${data?.readingAfterFilling}'),
      if (data?.volumeUsedInLiter != null)
        expandedRowShowText('Reading After', '${data?.volumeUsedInLiter}'),
      if (status == VehicleActionType.fuelExpence) rowButton()
    ],
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
