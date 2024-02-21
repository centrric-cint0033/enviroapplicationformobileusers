import 'package:enviro_mobile_application/view/service/master_car_page/master_car_service.dart';
import 'package:enviro_mobile_application/viewmodel/semi_trailor_page/semi_trailor_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/viewmodel/car_page/car_page_viewmodel.dart';

class Cmn_Additional_Card extends StatelessWidget {
  final VoidCallback? onMasterCardClicked;
  final VoidCallback? onMastertruck;

  const Cmn_Additional_Card({
    Key? key,
    this.onMasterCardClicked,
    this.onMastertruck,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String? selectedVehicle;
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
                  border: Border.all(color: const Color(0XFF949494)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Observer(builder: (_) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 6.0),
                    child: DropdownButtonHideUnderline(
                      child: Observer(builder: (_) {
                        return DropdownButton<String>(
                          value: selectedVehicle,
                          onChanged: (String? newValue) {
                            ActionType? actionType;
                            switch (newValue) {
                              case 'Vehicle list':
                                actionType = ActionType.vehiclelist;
                                break;
                              case 'Preinspectioncheck':
                                actionType = ActionType.Preinspectioncheck;
                                break;
                              case 'Maintenance check':
                                actionType = ActionType.MaintenanceCheck;
                                break;
                              case 'Fuel Expense':
                                actionType = ActionType.fuelexpence;
                                break;
                            }
                            if (actionType != null) {
                              vmcar.mastercarfunction(drop: actionType);
                              onMasterCardClicked?.call();
                            }
                            if (actionType != null) {
                              vmtrailor.trailorfunction();
                              onMastertruck?.call();
                            }
                          },
                          items: vehicleOptions.map((String drop) {
                            return DropdownMenuItem<String>(
                              value: drop,
                              child: Text(drop),
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
  }
}
