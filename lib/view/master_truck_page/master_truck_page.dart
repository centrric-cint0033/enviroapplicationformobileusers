import 'package:enviro_mobile_application/viewmodel/login_page/login_page_viewmodel.dart';
import 'package:enviro_mobile_application/viewmodel/truck_page/truck_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:enviro_mobile_application/view/loginpage/Common_widgets/widgets/common_search_widget.dart';
import 'package:mobx/mobx.dart';

class MasterTruckPage extends StatelessWidget {
  const MasterTruckPage({Key? key}) : super(key: key);

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
                return Container(width: 68, child: const Card());
              }),
              _buildAdditionalCard(),
              const SizedBox(height: 16.0),
              common_search_widget(),
              const SizedBox(height: 16.0),
              Observer(
                builder: (BuildContext context) {
                  return Expanded(
                    child: ListView.separated(
                      itemCount: vmtruck.truckPageResponse.data?.length ?? 0,
                      separatorBuilder: (BuildContext context, int index) =>
                          SizedBox(height: 12.0),
                      itemBuilder: (context, index) {
                        var data = vmtruck.truckPageResponse.data?[index];
                        return _buildJobCard(
                          registrationno: data?.registration ?? "",
                          RegoDue: data?.editedDateTime ?? "",
                          Type: data?.types ?? "",
                          year: data?.year ?? "",
                        );
                      },
                    ),
                  );
                },
              ),
              SizedBox(
                height: 45,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAdditionalCard() {
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

  Widget _buildJobCard({
    required String registrationno,
    required dynamic RegoDue,
    required String Type,
    required dynamic year,
  }) {
    return Container(
      width: double.infinity,
      child: Card(
        margin: const EdgeInsets.only(left: 16.0, right: 16),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0XFF949494),
          ),
          borderRadius: BorderRadius.circular(8.0),
        ),
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Registration no : $registrationno",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Row(
                children: [
                  Text(
                    "RegoDue            : $RegoDue",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "Type                   : $Type",
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  Text(
                    "Year                   : $year",
                    style: const TextStyle(color: Colors.blue),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Positioned(
                top: 0,
                right: 0,
                child: IconButton(
                  icon: const Icon(Icons.person_add),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
