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
      'Maintenance check'
    ];
    // List<String> vehicles = [];
    // if (vmvehicle.allvehiclelistResponse.data != null) {
    //   vehicles = vmvehicle.allvehiclelistResponse.data!
    //       .map((vehicle) => vehicle.registration)
    //       .toList();
    // }

    void onTapVehicleList() {
      print('Tapped on Vehicle list');
    }

    void onTapPreInspectionCheck() {
      print('Tapped on Pre inspectioncheck');
    }

    void onTapMaintenanceCheck() {
      print('Tapped on Maintenance check');
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
                                        onTapVehicleList();
                                        break;
                                      case 'Pre inspectioncheck':
                                        onTapPreInspectionCheck();
                                        break;
                                      case 'Maintenance check':
                                        onTapMaintenanceCheck();
                                        break;
                                    }
                                  },
                                  child: Text(value),
                                ),
                              );
                            }).toList(),
                            // / items: vehicles.map<DropdownMenuItem<String>>(
                            //   (String value) {
                            //     return DropdownMenuItem<String>(
                            //       value: value,
                            //       child: Text(value),
                            //     );
                            //   },
                            // ).toList(),
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
