import 'package:enviro_mobile_application/service/03_vehicles/vehicle_service.dart';
import 'package:enviro_mobile_application/utilis/constant.dart';
import 'package:enviro_mobile_application/view/03_vehicles/vehicle_widget/vehicle_widget.dart';
import 'package:enviro_mobile_application/view_model/03_vehicles/vehicle_view_model.dart';
import 'package:enviro_mobile_application/widgets/ww_search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class SemiTrailorPage extends StatelessWidget {
  const SemiTrailorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8),
          child: Column(
            children: [
              Observer(builder: (_) {
                String? newValue = vmVehicle.selectedVehicle ?? 'Vehicle list';
                print('azeemsele$newValue');
                List<String> vehicleOptions = [
                  'Vehicle list',
                  'Preinspectioncheck',
                  'Maintenance check',
                  'Fuel Expense',
                ];

                return Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            height: 54,
                            decoration: BoxDecoration(
                              border:
                                  Border.all(color: const Color(0XFF949494)),
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Observer(builder: (_) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 6.0),
                                child: DropdownButtonHideUnderline(
                                  child: Observer(builder: (_) {
                                    return DropdownButton<String>(
                                      value: newValue,
                                      onChanged: (String? newValue) {
                                        if (newValue != null) {
                                          vmVehicle
                                              .setSelectedVehicle(newValue);
                                          print('azeemsss: $newValue');
                                          VehicleActionType? actionType;
                                          switch (newValue) {
                                            case 'Vehicle list':
                                              actionType =
                                                  VehicleActionType.vehicleList;
                                              break;
                                            case 'Preinspectioncheck':
                                              actionType = VehicleActionType
                                                  .preInspectionCheck;
                                              break;
                                            case 'Maintenance check':
                                              actionType = VehicleActionType
                                                  .maintenanceCheck;
                                              break;
                                            case 'Fuel Expense':
                                              actionType =
                                                  VehicleActionType.fuelExpence;
                                              break;
                                          }
                                          if (actionType != null) {
                                            vmVehicle.trailorfunction(
                                                semitruckdrop: actionType);
                                          }
                                        }
                                      },
                                      items: vehicleOptions
                                          .map((String selectedVehicle) {
                                        return DropdownMenuItem<String>(
                                          value: selectedVehicle,
                                          child: Text(selectedVehicle),
                                        );
                                      }).toList(),
                                    );
                                  }),
                                ),
                              );
                            }),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
              gapFieldVeh,
              WWSearchField(
                controller: vmVehicle.vehSemiTrailorCtr,
                onChanged: (v) => vmVehicle.onTextChanged(() {
                  if (v.isEmpty) {
                    vmVehicle.trailorfunction();
                  } else {
                    vmVehicle.semifueltrucksearchfunction();
                  }
                }),
                searchTap: () {},
              ),
              gapFieldVeh,
              Observer(
                builder: (BuildContext context) {
                  return Expanded(
                    child: ListView.separated(
                      itemCount:
                          vmVehicle.semitrailorPageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          sized0hx10,
                      itemBuilder: (context, index) => showData(
                          data: vmVehicle.semitrailorPageResponse.data?[index],
                          status: vmVehicle.status),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
