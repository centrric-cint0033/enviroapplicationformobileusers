import 'dart:developer';

import 'package:enviro_mobile_application/utilis/api_endpoints/api_endpoints.dart';
import 'package:enviro_mobile_application/viewmodel/car_page/car_page_viewmodel.dart';
import 'package:enviro_mobile_application/viewmodel/truck_page/truck_page_viewmodel.dart';
import 'package:flutter/material.dart';

class Cmn_Additional_Card extends StatelessWidget {
  const Cmn_Additional_Card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    String? selectedVehicle;
    List<String> vehicleOptions = [
      'Vehicle list',
      'Pre inspection check',
      'Maintenance check',
      'Fuel Expense',
    ];

    void onTapVehicleList() {}

    void onTapMaintenanceCheck() {
      print('Tapped on Maintenance check');
    }

    void onTapFuelExpense() {
      print('Tapped on Fuel Expense');
      // Implement your logic for Fuel Expense here
    }

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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6.0),
                  child: DropdownButtonHideUnderline(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('Vehicles List'),
                        Expanded(
                          child: DropdownButton<String>(
                            value: selectedVehicle,
                            onChanged: (String? newValue) {
                              selectedVehicle = newValue;
                            },
                            items: vehicleOptions.map((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: GestureDetector(
                                  onTap: () {
                                    switch (value) {
                                      case 'Vehicle list':
                                        print('fgxchf');
                                        vmcar.preinspectionfunction();
                                        log(vmcar.carPageResponse.toString() +
                                            "uiglgugR");
                                        break;
                                      case 'Pre inspection check':
                                        vmcar.carPageResponse;
                                        break;
                                      case 'Maintenance check':
                                        vmcar.mastercarfunction();
                                        break;
                                      case 'Fuel Expense':
                                        vmcar.mastercarfunction();
                                        break;
                                    }
                                  },
                                  child: Text(value),
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
